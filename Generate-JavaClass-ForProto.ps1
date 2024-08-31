# Define the path to the folder containing .proto files
$PROTO_FOLDER_PATH = "C:/Users/Rakesh Kumar/Desktop/protolearn/"


# Define the path to the protoc plugin executable
$PROTO_PLUGIN_PATH = "C:/Users/Rakesh Kumar/Desktop/gRPCStuff/protoc-gen-grpc-java-1.66.0-windows-x86_64.exe"


# Define the output directory for generated files
$OUTPUT_DIR = "C:/Users/Rakesh Kumar/Desktop/protolearn/"



# Run the protoc command with the specified options
protoc `
--proto_path=$PROTO_FOLDER_PATH                       <# Specify the path where .proto files are located #> `
--plugin=protoc-gen-grpc-java=$PROTO_PLUGIN_PATH      <# Specify the path to the protoc-gen-grpc-java plugin which will generate service class #> `
--grpc-java_out=$OUTPUT_DIR                           <# Specify the output directory for generated service classes #> `
--java_out=$OUTPUT_DIR                                <# Specify the output directory for generated message classes #> `
"$PROTO_FOLDER_PATH/employee.proto"                   <# Specify the .proto file to compile #>