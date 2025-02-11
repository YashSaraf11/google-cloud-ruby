# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/prediction_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/httpbody_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/content_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/cloud/aiplatform/v1/tool_pb'
require 'google/cloud/aiplatform/v1/types_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n3google/cloud/aiplatform/v1/prediction_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/httpbody.proto\x1a\x19google/api/resource.proto\x1a(google/cloud/aiplatform/v1/content.proto\x1a,google/cloud/aiplatform/v1/explanation.proto\x1a%google/cloud/aiplatform/v1/tool.proto\x1a&google/cloud/aiplatform/v1/types.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xaa\x01\n\x0ePredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12.\n\tinstances\x18\x02 \x03(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x02\x12*\n\nparameters\x18\x03 \x01(\x0b\x32\x16.google.protobuf.Value\"\x80\x02\n\x0fPredictResponse\x12+\n\x0bpredictions\x18\x01 \x03(\x0b\x32\x16.google.protobuf.Value\x12\x19\n\x11\x64\x65ployed_model_id\x18\x02 \x01(\t\x12\x36\n\x05model\x18\x03 \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Model\x12\x1d\n\x10model_version_id\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x1f\n\x12model_display_name\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12-\n\x08metadata\x18\x06 \x01(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x03\"z\n\x11RawPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\'\n\thttp_body\x18\x02 \x01(\x0b\x32\x14.google.api.HttpBody\"\x80\x01\n\x17StreamRawPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\'\n\thttp_body\x18\x02 \x01(\x0b\x32\x14.google.api.HttpBody\"\xc0\x01\n\x14\x44irectPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x32\n\x06inputs\x18\x02 \x03(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\x12\x36\n\nparameters\x18\x03 \x01(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\"\x84\x01\n\x15\x44irectPredictResponse\x12\x33\n\x07outputs\x18\x01 \x03(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\x12\x36\n\nparameters\x18\x02 \x01(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\"{\n\x17\x44irectRawPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x13\n\x0bmethod_name\x18\x02 \x01(\t\x12\r\n\x05input\x18\x03 \x01(\x0c\"*\n\x18\x44irectRawPredictResponse\x12\x0e\n\x06output\x18\x01 \x01(\x0c\"\xd0\x01\n\x1aStreamDirectPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x37\n\x06inputs\x18\x02 \x03(\x0b\x32\".google.cloud.aiplatform.v1.TensorB\x03\xe0\x41\x01\x12;\n\nparameters\x18\x03 \x01(\x0b\x32\".google.cloud.aiplatform.v1.TensorB\x03\xe0\x41\x01\"\x8a\x01\n\x1bStreamDirectPredictResponse\x12\x33\n\x07outputs\x18\x01 \x03(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\x12\x36\n\nparameters\x18\x02 \x01(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\"\x8b\x01\n\x1dStreamDirectRawPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x18\n\x0bmethod_name\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05input\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01\"0\n\x1eStreamDirectRawPredictResponse\x12\x0e\n\x06output\x18\x01 \x01(\x0c\"\xc3\x01\n\x17StreamingPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x32\n\x06inputs\x18\x02 \x03(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\x12\x36\n\nparameters\x18\x03 \x01(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\"\x87\x01\n\x18StreamingPredictResponse\x12\x33\n\x07outputs\x18\x01 \x03(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\x12\x36\n\nparameters\x18\x02 \x01(\x0b\x32\".google.cloud.aiplatform.v1.Tensor\"~\n\x1aStreamingRawPredictRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x13\n\x0bmethod_name\x18\x02 \x01(\t\x12\r\n\x05input\x18\x03 \x01(\x0c\"-\n\x1bStreamingRawPredictResponse\x12\x0e\n\x06output\x18\x01 \x01(\x0c\"\x9d\x02\n\x0e\x45xplainRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12.\n\tinstances\x18\x02 \x03(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x02\x12*\n\nparameters\x18\x04 \x01(\x0b\x32\x16.google.protobuf.Value\x12V\n\x19\x65xplanation_spec_override\x18\x05 \x01(\x0b\x32\x33.google.cloud.aiplatform.v1.ExplanationSpecOverride\x12\x19\n\x11\x64\x65ployed_model_id\x18\x03 \x01(\t\"\x98\x01\n\x0f\x45xplainResponse\x12=\n\x0c\x65xplanations\x18\x01 \x03(\x0b\x32\'.google.cloud.aiplatform.v1.Explanation\x12\x19\n\x11\x64\x65ployed_model_id\x18\x02 \x01(\t\x12+\n\x0bpredictions\x18\x03 \x03(\x0b\x32\x16.google.protobuf.Value\"\xd3\x03\n\x12\x43ountTokensRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x12\n\x05model\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12.\n\tinstances\x18\x02 \x03(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x01\x12:\n\x08\x63ontents\x18\x04 \x03(\x0b\x32#.google.cloud.aiplatform.v1.ContentB\x03\xe0\x41\x01\x12I\n\x12system_instruction\x18\x05 \x01(\x0b\x32#.google.cloud.aiplatform.v1.ContentB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12\x34\n\x05tools\x18\x06 \x03(\x0b\x32 .google.cloud.aiplatform.v1.ToolB\x03\xe0\x41\x01\x12Q\n\x11generation_config\x18\x07 \x01(\x0b\x32,.google.cloud.aiplatform.v1.GenerationConfigB\x03\xe0\x41\x01H\x01\x88\x01\x01\x42\x15\n\x13_system_instructionB\x14\n\x12_generation_config\"\xa2\x01\n\x13\x43ountTokensResponse\x12\x14\n\x0ctotal_tokens\x18\x01 \x01(\x05\x12!\n\x19total_billable_characters\x18\x02 \x01(\x05\x12R\n\x15prompt_tokens_details\x18\x03 \x03(\x0b\x32..google.cloud.aiplatform.v1.ModalityTokenCountB\x03\xe0\x41\x03\"\xa6\x05\n\x16GenerateContentRequest\x12\x12\n\x05model\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12:\n\x08\x63ontents\x18\x02 \x03(\x0b\x32#.google.cloud.aiplatform.v1.ContentB\x03\xe0\x41\x02\x12I\n\x12system_instruction\x18\x08 \x01(\x0b\x32#.google.cloud.aiplatform.v1.ContentB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12G\n\x0e\x63\x61\x63hed_content\x18\t \x01(\tB/\xe0\x41\x01\xfa\x41)\n\'aiplatform.googleapis.com/CachedContent\x12\x34\n\x05tools\x18\x06 \x03(\x0b\x32 .google.cloud.aiplatform.v1.ToolB\x03\xe0\x41\x01\x12@\n\x0btool_config\x18\x07 \x01(\x0b\x32&.google.cloud.aiplatform.v1.ToolConfigB\x03\xe0\x41\x01\x12S\n\x06labels\x18\n \x03(\x0b\x32>.google.cloud.aiplatform.v1.GenerateContentRequest.LabelsEntryB\x03\xe0\x41\x01\x12G\n\x0fsafety_settings\x18\x03 \x03(\x0b\x32).google.cloud.aiplatform.v1.SafetySettingB\x03\xe0\x41\x01\x12L\n\x11generation_config\x18\x04 \x01(\x0b\x32,.google.cloud.aiplatform.v1.GenerationConfigB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x15\n\x13_system_instruction\"\xec\x08\n\x17GenerateContentResponse\x12>\n\ncandidates\x18\x02 \x03(\x0b\x32%.google.cloud.aiplatform.v1.CandidateB\x03\xe0\x41\x03\x12\x1a\n\rmodel_version\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x18\n\x0bresponse_id\x18\r \x01(\tB\x03\xe0\x41\x03\x12`\n\x0fprompt_feedback\x18\x03 \x01(\x0b\x32\x42.google.cloud.aiplatform.v1.GenerateContentResponse.PromptFeedbackB\x03\xe0\x41\x03\x12Y\n\x0eusage_metadata\x18\x04 \x01(\x0b\x32\x41.google.cloud.aiplatform.v1.GenerateContentResponse.UsageMetadata\x1a\xd6\x02\n\x0ePromptFeedback\x12k\n\x0c\x62lock_reason\x18\x01 \x01(\x0e\x32P.google.cloud.aiplatform.v1.GenerateContentResponse.PromptFeedback.BlockedReasonB\x03\xe0\x41\x03\x12\x45\n\x0esafety_ratings\x18\x02 \x03(\x0b\x32(.google.cloud.aiplatform.v1.SafetyRatingB\x03\xe0\x41\x03\x12!\n\x14\x62lock_reason_message\x18\x03 \x01(\tB\x03\xe0\x41\x03\"m\n\rBlockedReason\x12\x1e\n\x1a\x42LOCKED_REASON_UNSPECIFIED\x10\x00\x12\n\n\x06SAFETY\x10\x01\x12\t\n\x05OTHER\x10\x02\x12\r\n\tBLOCKLIST\x10\x03\x12\x16\n\x12PROHIBITED_CONTENT\x10\x04\x1a\x8e\x03\n\rUsageMetadata\x12\x1a\n\x12prompt_token_count\x18\x01 \x01(\x05\x12\x1e\n\x16\x63\x61ndidates_token_count\x18\x02 \x01(\x05\x12\x19\n\x11total_token_count\x18\x03 \x01(\x05\x12\'\n\x1a\x63\x61\x63hed_content_token_count\x18\x05 \x01(\x05\x42\x03\xe0\x41\x03\x12R\n\x15prompt_tokens_details\x18\t \x03(\x0b\x32..google.cloud.aiplatform.v1.ModalityTokenCountB\x03\xe0\x41\x03\x12Q\n\x14\x63\x61\x63he_tokens_details\x18\n \x03(\x0b\x32..google.cloud.aiplatform.v1.ModalityTokenCountB\x03\xe0\x41\x03\x12V\n\x19\x63\x61ndidates_tokens_details\x18\x0b \x03(\x0b\x32..google.cloud.aiplatform.v1.ModalityTokenCountB\x03\xe0\x41\x03\x32\xf2\x19\n\x11PredictionService\x12\x94\x02\n\x07Predict\x12*.google.cloud.aiplatform.v1.PredictRequest\x1a+.google.cloud.aiplatform.v1.PredictResponse\"\xaf\x01\xda\x41\x1d\x65ndpoint,instances,parameters\x82\xd3\xe4\x93\x02\x88\x01\"9/v1/{endpoint=projects/*/locations/*/endpoints/*}:predict:\x01*ZH\"C/v1/{endpoint=projects/*/locations/*/publishers/*/models/*}:predict:\x01*\x12\xfe\x01\n\nRawPredict\x12-.google.cloud.aiplatform.v1.RawPredictRequest\x1a\x14.google.api.HttpBody\"\xaa\x01\xda\x41\x12\x65ndpoint,http_body\x82\xd3\xe4\x93\x02\x8e\x01\"</v1/{endpoint=projects/*/locations/*/endpoints/*}:rawPredict:\x01*ZK\"F/v1/{endpoint=projects/*/locations/*/publishers/*/models/*}:rawPredict:\x01*\x12\x98\x02\n\x10StreamRawPredict\x12\x33.google.cloud.aiplatform.v1.StreamRawPredictRequest\x1a\x14.google.api.HttpBody\"\xb6\x01\xda\x41\x12\x65ndpoint,http_body\x82\xd3\xe4\x93\x02\x9a\x01\"B/v1/{endpoint=projects/*/locations/*/endpoints/*}:streamRawPredict:\x01*ZQ\"L/v1/{endpoint=projects/*/locations/*/publishers/*/models/*}:streamRawPredict:\x01*0\x01\x12\xc0\x01\n\rDirectPredict\x12\x30.google.cloud.aiplatform.v1.DirectPredictRequest\x1a\x31.google.cloud.aiplatform.v1.DirectPredictResponse\"J\x82\xd3\xe4\x93\x02\x44\"?/v1/{endpoint=projects/*/locations/*/endpoints/*}:directPredict:\x01*\x12\xcc\x01\n\x10\x44irectRawPredict\x12\x33.google.cloud.aiplatform.v1.DirectRawPredictRequest\x1a\x34.google.cloud.aiplatform.v1.DirectRawPredictResponse\"M\x82\xd3\xe4\x93\x02G\"B/v1/{endpoint=projects/*/locations/*/endpoints/*}:directRawPredict:\x01*\x12\x8c\x01\n\x13StreamDirectPredict\x12\x36.google.cloud.aiplatform.v1.StreamDirectPredictRequest\x1a\x37.google.cloud.aiplatform.v1.StreamDirectPredictResponse\"\x00(\x01\x30\x01\x12\x95\x01\n\x16StreamDirectRawPredict\x12\x39.google.cloud.aiplatform.v1.StreamDirectRawPredictRequest\x1a:.google.cloud.aiplatform.v1.StreamDirectRawPredictResponse\"\x00(\x01\x30\x01\x12\x83\x01\n\x10StreamingPredict\x12\x33.google.cloud.aiplatform.v1.StreamingPredictRequest\x1a\x34.google.cloud.aiplatform.v1.StreamingPredictResponse\"\x00(\x01\x30\x01\x12\xb5\x02\n\x16ServerStreamingPredict\x12\x33.google.cloud.aiplatform.v1.StreamingPredictRequest\x1a\x34.google.cloud.aiplatform.v1.StreamingPredictResponse\"\xad\x01\x82\xd3\xe4\x93\x02\xa6\x01\"H/v1/{endpoint=projects/*/locations/*/endpoints/*}:serverStreamingPredict:\x01*ZW\"R/v1/{endpoint=projects/*/locations/*/publishers/*/models/*}:serverStreamingPredict:\x01*0\x01\x12\x8c\x01\n\x13StreamingRawPredict\x12\x36.google.cloud.aiplatform.v1.StreamingRawPredictRequest\x1a\x37.google.cloud.aiplatform.v1.StreamingRawPredictResponse\"\x00(\x01\x30\x01\x12\xda\x01\n\x07\x45xplain\x12*.google.cloud.aiplatform.v1.ExplainRequest\x1a+.google.cloud.aiplatform.v1.ExplainResponse\"v\xda\x41/endpoint,instances,parameters,deployed_model_id\x82\xd3\xe4\x93\x02>\"9/v1/{endpoint=projects/*/locations/*/endpoints/*}:explain:\x01*\x12\x8d\x03\n\x0fGenerateContent\x12\x32.google.cloud.aiplatform.v1.GenerateContentRequest\x1a\x33.google.cloud.aiplatform.v1.GenerateContentResponse\"\x90\x02\xda\x41\x0emodel,contents\x82\xd3\xe4\x93\x02\xf8\x01\">/v1/{model=projects/*/locations/*/endpoints/*}:generateContent:\x01*ZM\"H/v1/{model=projects/*/locations/*/publishers/*/models/*}:generateContent:\x01*Z,\"\'/v1/{model=endpoints/*}:generateContent:\x01*Z6\"1/v1/{model=publishers/*/models/*}:generateContent:\x01*\x12\xad\x03\n\x15StreamGenerateContent\x12\x32.google.cloud.aiplatform.v1.GenerateContentRequest\x1a\x33.google.cloud.aiplatform.v1.GenerateContentResponse\"\xa8\x02\xda\x41\x0emodel,contents\x82\xd3\xe4\x93\x02\x90\x02\"D/v1/{model=projects/*/locations/*/endpoints/*}:streamGenerateContent:\x01*ZS\"N/v1/{model=projects/*/locations/*/publishers/*/models/*}:streamGenerateContent:\x01*Z2\"-/v1/{model=endpoints/*}:streamGenerateContent:\x01*Z<\"7/v1/{model=publishers/*/models/*}:streamGenerateContent:\x01*0\x01\x1a\x86\x01\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41ghttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-onlyB\xd4\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x16PredictionServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.api.HttpBody", "google/api/httpbody.proto"],
    ["google.cloud.aiplatform.v1.Tensor", "google/cloud/aiplatform/v1/types.proto"],
    ["google.cloud.aiplatform.v1.ExplanationSpecOverride", "google/cloud/aiplatform/v1/explanation.proto"],
    ["google.cloud.aiplatform.v1.Content", "google/cloud/aiplatform/v1/content.proto"],
    ["google.cloud.aiplatform.v1.Tool", "google/cloud/aiplatform/v1/tool.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module AIPlatform
      module V1
        PredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictRequest").msgclass
        PredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictResponse").msgclass
        RawPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RawPredictRequest").msgclass
        StreamRawPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamRawPredictRequest").msgclass
        DirectPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DirectPredictRequest").msgclass
        DirectPredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DirectPredictResponse").msgclass
        DirectRawPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DirectRawPredictRequest").msgclass
        DirectRawPredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DirectRawPredictResponse").msgclass
        StreamDirectPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamDirectPredictRequest").msgclass
        StreamDirectPredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamDirectPredictResponse").msgclass
        StreamDirectRawPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamDirectRawPredictRequest").msgclass
        StreamDirectRawPredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamDirectRawPredictResponse").msgclass
        StreamingPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamingPredictRequest").msgclass
        StreamingPredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamingPredictResponse").msgclass
        StreamingRawPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamingRawPredictRequest").msgclass
        StreamingRawPredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamingRawPredictResponse").msgclass
        ExplainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplainRequest").msgclass
        ExplainResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplainResponse").msgclass
        CountTokensRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CountTokensRequest").msgclass
        CountTokensResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CountTokensResponse").msgclass
        GenerateContentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerateContentRequest").msgclass
        GenerateContentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerateContentResponse").msgclass
        GenerateContentResponse::PromptFeedback = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerateContentResponse.PromptFeedback").msgclass
        GenerateContentResponse::PromptFeedback::BlockedReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerateContentResponse.PromptFeedback.BlockedReason").enummodule
        GenerateContentResponse::UsageMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerateContentResponse.UsageMetadata").msgclass
      end
    end
  end
end
