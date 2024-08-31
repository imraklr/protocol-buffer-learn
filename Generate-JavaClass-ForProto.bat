:: Define the path to the folder containing .proto files
set PROTO_FOLDER_PATH="C:/Users/Rakesh Kumar/Desktop/protolearn/"


:: Define the path to the protoc plugin executable
set PROTO_PLUGIN_PATH="C:/Users/Rakesh Kumar/Desktop/gRPCStuff/protoc-gen-grpc-java-1.66.0-windows-x86_64.exe"


:: Define the output directory for generated files
set OUTPUT_DIR="C:/Users/Rakesh Kumar/Desktop/protolearn/"



:: protoc -> the protoc invocation
:: --proto-path=%PROTO_FOLDER_PATH%                   -> the path where .proto files are located
:: --plugin=protoc-gen-grpc-java=%PROTO_PLUGIN_PATH%  -> the path to the protoc-gen-grpc-java plugin which will generate service class
:: --grpc-java_out=%OUTPUT_DIR%                       -> the output directory for generated service classes
:: --java_out=%OUTPUT_DIR%                            -> the output directory for generated message classes
:: %PROTO_FOLDER_PATH%employee.proto                  -> the .proto file to compile

:: Run the protoc command with the specified options
protoc ^
--proto_path=%PROTO_FOLDER_PATH% ^
--plugin=protoc-gen-grpc-java=%PROTO_PLUGIN_PATH% ^
--grpc-java_out=%OUTPUT_DIR% ^
--java_out=%OUTPUT_DIR% ^
%PROTO_FOLDER_PATH%employee.proto