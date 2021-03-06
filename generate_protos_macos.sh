#!/usr/bin/env bash
PROTOC=~/.nuget/packages/google.protobuf.tools/3.6.1/tools/macosx_x64/protoc
PLUGIN=~/.nuget/packages/grpc.tools/1.15.0/tools/macosx_x64/grpc_csharp_plugin

$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/ApplicationRegisterService.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN
$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/Common.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN
$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/DiscoveryService.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN
$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/Downstream.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN
$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/JVMMetricsService.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN
$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/KeyWithIntegerValue.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN
$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/KeyWithStringValue.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN
$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/NetworkAddressRegisterService.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN
$PROTOC -I protos --csharp_out src/SkyWalking.Transport.Grpc/NetworkProtocol  protos/TraceSegmentService.proto --grpc_out src/SkyWalking.Transport.Grpc/NetworkProtocol --plugin=protoc-gen-grpc=$PLUGIN