set -e 
which protoc
protoc --version 
which grpc_cpp_plugin 

echo ""

echo protoc --cpp_out=. test.proto
 protoc --cpp_out=. test.proto
g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o test.pb.o test.pb.cc
echo g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o test.pb.o test.pb.cc
 g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o test.pb.o test.pb.cc
protoc --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` test.proto
echo protoc --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` test.proto
 protoc --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` test.proto
echo g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o test.grpc.pb.o test.grpc.pb.cc
g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o test.grpc.pb.o test.grpc.pb.cc

echo g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o c.o c.cc
g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o c.o c.cc
echo g++ test.pb.o test.grpc.pb.o c.o -L/home/bgi902/t/t/git/grpc/out/lib  `pkg-config --libs protobuf grpc++ grpc` -Wl,--no-as-needed -lgrpc++_reflection -Wl,--as-needed -ldl -o c 
g++ test.pb.o test.grpc.pb.o c.o -L/home/bgi902/t/t/git/grpc/out/lib  `pkg-config --libs protobuf grpc++ grpc` -Wl,--no-as-needed -lgrpc++_reflection -Wl,--as-needed -ldl -o c 
echo g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o s.o s.cc
g++ -std=c++11 `pkg-config --cflags protobuf grpc`   -c -o s.o s.cc
echo g++ test.pb.o test.grpc.pb.o s.o -L/home/bgi902/t/t/git/grpc/out/lib  `pkg-config --libs protobuf grpc++ grpc` -Wl,--no-as-needed -lgrpc++_reflection -Wl,--as-needed -ldl -o s 
g++ test.pb.o test.grpc.pb.o s.o -L/home/bgi902/t/t/git/grpc/out/lib  `pkg-config --libs protobuf grpc++ grpc` -Wl,--no-as-needed -lgrpc++_reflection -Wl,--as-needed -ldl -o s 

