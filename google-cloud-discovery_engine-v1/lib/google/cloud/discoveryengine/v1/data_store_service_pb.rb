# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/data_store_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1/data_store_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n8google/cloud/discoveryengine/v1/data_store_service.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x30google/cloud/discoveryengine/v1/data_store.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfb\x02\n\x16\x43reateDataStoreRequest\x12J\n\x10\x63mek_config_name\x18\x05 \x01(\tB.\xfa\x41+\n)discoveryengine.googleapis.com/CmekConfigH\x00\x12\x16\n\x0c\x64isable_cmek\x18\x06 \x01(\x08H\x00\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)discoveryengine.googleapis.com/Collection\x12\x43\n\ndata_store\x18\x02 \x01(\x0b\x32*.google.cloud.discoveryengine.v1.DataStoreB\x03\xe0\x41\x02\x12\x1a\n\rdata_store_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12#\n\x1b\x63reate_advanced_site_search\x18\x04 \x01(\x08\x12$\n\x1cskip_default_schema_creation\x18\x07 \x01(\x08\x42\x0e\n\x0c\x63mek_options\"U\n\x13GetDataStoreRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\"{\n\x17\x43reateDataStoreMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x91\x01\n\x15ListDataStoresRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)discoveryengine.googleapis.com/Collection\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"r\n\x16ListDataStoresResponse\x12?\n\x0b\x64\x61ta_stores\x18\x01 \x03(\x0b\x32*.google.cloud.discoveryengine.v1.DataStore\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"X\n\x16\x44\x65leteDataStoreRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\"\x8e\x01\n\x16UpdateDataStoreRequest\x12\x43\n\ndata_store\x18\x01 \x01(\x0b\x32*.google.cloud.discoveryengine.v1.DataStoreB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"{\n\x17\x44\x65leteDataStoreMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp2\xdd\x0c\n\x10\x44\x61taStoreService\x12\x84\x03\n\x0f\x43reateDataStore\x12\x37.google.cloud.discoveryengine.v1.CreateDataStoreRequest\x1a\x1d.google.longrunning.Operation\"\x98\x02\xca\x41\x64\n)google.cloud.discoveryengine.v1.DataStore\x12\x37google.cloud.discoveryengine.v1.CreateDataStoreMetadata\xda\x41\x1fparent,data_store,data_store_id\x82\xd3\xe4\x93\x02\x88\x01\"./v1/{parent=projects/*/locations/*}/dataStores:\ndata_storeZJ\"</v1/{parent=projects/*/locations/*/collections/*}/dataStores:\ndata_store\x12\xef\x01\n\x0cGetDataStore\x12\x34.google.cloud.discoveryengine.v1.GetDataStoreRequest\x1a*.google.cloud.discoveryengine.v1.DataStore\"}\xda\x41\x04name\x82\xd3\xe4\x93\x02p\x12./v1/{name=projects/*/locations/*/dataStores/*}Z>\x12</v1/{name=projects/*/locations/*/collections/*/dataStores/*}\x12\x82\x02\n\x0eListDataStores\x12\x36.google.cloud.discoveryengine.v1.ListDataStoresRequest\x1a\x37.google.cloud.discoveryengine.v1.ListDataStoresResponse\"\x7f\xda\x41\x06parent\x82\xd3\xe4\x93\x02p\x12./v1/{parent=projects/*/locations/*}/dataStoresZ>\x12</v1/{parent=projects/*/locations/*/collections/*}/dataStores\x12\xbc\x02\n\x0f\x44\x65leteDataStore\x12\x37.google.cloud.discoveryengine.v1.DeleteDataStoreRequest\x1a\x1d.google.longrunning.Operation\"\xd0\x01\xca\x41P\n\x15google.protobuf.Empty\x12\x37google.cloud.discoveryengine.v1.DeleteDataStoreMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02p*./v1/{name=projects/*/locations/*/dataStores/*}Z>*</v1/{name=projects/*/locations/*/collections/*/dataStores/*}\x12\xb7\x02\n\x0fUpdateDataStore\x12\x37.google.cloud.discoveryengine.v1.UpdateDataStoreRequest\x1a*.google.cloud.discoveryengine.v1.DataStore\"\xbe\x01\xda\x41\x16\x64\x61ta_store,update_mask\x82\xd3\xe4\x93\x02\x9e\x01\x32\x39/v1/{data_store.name=projects/*/locations/*/dataStores/*}:\ndata_storeZU2G/v1/{data_store.name=projects/*/locations/*/collections/*/dataStores/*}:\ndata_store\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x88\x02\n#com.google.cloud.discoveryengine.v1B\x15\x44\x61taStoreServiceProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

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
    ["google.cloud.discoveryengine.v1.DataStore", "google/cloud/discoveryengine/v1/data_store.proto"],
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
    module DiscoveryEngine
      module V1
        CreateDataStoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.CreateDataStoreRequest").msgclass
        GetDataStoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.GetDataStoreRequest").msgclass
        CreateDataStoreMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.CreateDataStoreMetadata").msgclass
        ListDataStoresRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ListDataStoresRequest").msgclass
        ListDataStoresResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ListDataStoresResponse").msgclass
        DeleteDataStoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.DeleteDataStoreRequest").msgclass
        UpdateDataStoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.UpdateDataStoreRequest").msgclass
        DeleteDataStoreMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.DeleteDataStoreMetadata").msgclass
      end
    end
  end
end
