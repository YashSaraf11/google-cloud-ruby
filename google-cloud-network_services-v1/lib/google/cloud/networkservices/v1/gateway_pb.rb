# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkservices/v1/gateway.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/networkservices/v1/common_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n-google/cloud/networkservices/v1/gateway.proto\x12\x1fgoogle.cloud.networkservices.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/networkservices/v1/common.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x84\x0b\n\x07Gateway\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x16\n\tself_link\x18\r \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12I\n\x06labels\x18\x04 \x03(\x0b\x32\x34.google.cloud.networkservices.v1.Gateway.LabelsEntryB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12@\n\x04type\x18\x06 \x01(\x0e\x32-.google.cloud.networkservices.v1.Gateway.TypeB\x03\xe0\x41\x05\x12\x39\n\taddresses\x18\x07 \x03(\tB&\xe0\x41\x01\xfa\x41 \n\x1e\x63ompute.googleapis.com/Address\x12\x12\n\x05ports\x18\x0b \x03(\x05\x42\x03\xe0\x41\x02\x12\x12\n\x05scope\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12Q\n\x11server_tls_policy\x18\t \x01(\tB6\xe0\x41\x01\xfa\x41\x30\n.networksecurity.googleapis.com/ServerTlsPolicy\x12O\n\x10\x63\x65rtificate_urls\x18\x0e \x03(\tB5\xe0\x41\x01\xfa\x41/\n-certificatemanager.googleapis.com/Certificate\x12]\n\x17gateway_security_policy\x18\x12 \x01(\tB<\xe0\x41\x01\xfa\x41\x36\n4networksecurity.googleapis.com/GatewaySecurityPolicy\x12\x37\n\x07network\x18\x10 \x01(\tB&\xe0\x41\x01\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12=\n\nsubnetwork\x18\x11 \x01(\tB)\xe0\x41\x01\xfa\x41#\n!compute.googleapis.com/Subnetwork\x12K\n\nip_version\x18\x15 \x01(\x0e\x32\x32.google.cloud.networkservices.v1.Gateway.IpVersionB\x03\xe0\x41\x01\x12N\n\renvoy_headers\x18\x1c \x01(\x0e\x32-.google.cloud.networkservices.v1.EnvoyHeadersB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12O\n\x0crouting_mode\x18  \x01(\x0e\x32\x34.google.cloud.networkservices.v1.Gateway.RoutingModeB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"C\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\r\n\tOPEN_MESH\x10\x01\x12\x16\n\x12SECURE_WEB_GATEWAY\x10\x02\";\n\tIpVersion\x12\x1a\n\x16IP_VERSION_UNSPECIFIED\x10\x00\x12\x08\n\x04IPV4\x10\x01\x12\x08\n\x04IPV6\x10\x02\"C\n\x0bRoutingMode\x12\x19\n\x15\x45XPLICIT_ROUTING_MODE\x10\x00\x12\x19\n\x15NEXT_HOP_ROUTING_MODE\x10\x01:g\xea\x41\x64\n&networkservices.googleapis.com/Gateway\x12:projects/{project}/locations/{location}/gateways/{gateway}B\x10\n\x0e_envoy_headers\"|\n\x13ListGatewaysRequest\x12>\n\x06parent\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\x12&networkservices.googleapis.com/Gateway\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x80\x01\n\x14ListGatewaysResponse\x12:\n\x08gateways\x18\x01 \x03(\x0b\x32(.google.cloud.networkservices.v1.Gateway\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Q\n\x11GetGatewayRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&networkservices.googleapis.com/Gateway\"\xaf\x01\n\x14\x43reateGatewayRequest\x12>\n\x06parent\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\x12&networkservices.googleapis.com/Gateway\x12\x17\n\ngateway_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12>\n\x07gateway\x18\x03 \x01(\x0b\x32(.google.cloud.networkservices.v1.GatewayB\x03\xe0\x41\x02\"\x8c\x01\n\x14UpdateGatewayRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12>\n\x07gateway\x18\x02 \x01(\x0b\x32(.google.cloud.networkservices.v1.GatewayB\x03\xe0\x41\x02\"T\n\x14\x44\x65leteGatewayRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&networkservices.googleapis.com/GatewayB\x89\x06\n#com.google.cloud.networkservices.v1B\x0cGatewayProtoP\x01ZMcloud.google.com/go/networkservices/apiv1/networkservicespb;networkservicespb\xaa\x02\x1fGoogle.Cloud.NetworkServices.V1\xca\x02\x1fGoogle\\Cloud\\NetworkServices\\V1\xea\x02\"Google::Cloud::NetworkServices::V1\xea\x41\x91\x01\n4networksecurity.googleapis.com/GatewaySecurityPolicy\x12Yprojects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}\xea\x41\x61\n!compute.googleapis.com/Subnetwork\x12<projects/{project}/regions/{region}/subnetworks/{subnetwork}\xea\x41N\n\x1e\x63ompute.googleapis.com/Network\x12,projects/{project}/global/networks/{network}\xea\x41Y\n\x1e\x63ompute.googleapis.com/Address\x12\x37projects/{project}/regions/{region}/addresses/{address}\xea\x41s\n-certificatemanager.googleapis.com/Certificate\x12\x42projects/{project}/locations/{location}/certificates/{certificate}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module NetworkServices
      module V1
        Gateway = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.Gateway").msgclass
        Gateway::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.Gateway.Type").enummodule
        Gateway::IpVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.Gateway.IpVersion").enummodule
        Gateway::RoutingMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.Gateway.RoutingMode").enummodule
        ListGatewaysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListGatewaysRequest").msgclass
        ListGatewaysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListGatewaysResponse").msgclass
        GetGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GetGatewayRequest").msgclass
        CreateGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.CreateGatewayRequest").msgclass
        UpdateGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.UpdateGatewayRequest").msgclass
        DeleteGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.DeleteGatewayRequest").msgclass
      end
    end
  end
end
