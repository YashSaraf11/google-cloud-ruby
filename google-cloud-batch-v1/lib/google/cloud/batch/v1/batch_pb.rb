# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/batch/v1/batch.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/cloud/batch/v1/job_pb'
require 'google/cloud/batch/v1/task_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n!google/cloud/batch/v1/batch.proto\x12\x15google.cloud.batch.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/cloud/batch/v1/job.proto\x1a google/cloud/batch/v1/task.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x9b\x01\n\x10\x43reateJobRequest\x12\x30\n\x06parent\x18\x01 \x01(\tB \xe0\x41\x02\xfa\x41\x1a\x12\x18\x62\x61tch.googleapis.com/Job\x12\x0e\n\x06job_id\x18\x02 \x01(\t\x12,\n\x03job\x18\x03 \x01(\x0b\x32\x1a.google.cloud.batch.v1.JobB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"?\n\rGetJobRequest\x12.\n\x04name\x18\x01 \x01(\tB \xe0\x41\x02\xfa\x41\x1a\n\x18\x62\x61tch.googleapis.com/Job\"N\n\x10\x44\x65leteJobRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x13\n\x06reason\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"c\n\x10\x43\x61ncelJobRequest\x12.\n\x04name\x18\x01 \x01(\tB \xe0\x41\x02\xfa\x41\x1a\n\x18\x62\x61tch.googleapis.com/Job\x12\x1f\n\nrequest_id\x18\x04 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\x13\n\x11\x43\x61ncelJobResponse\"o\n\x0fListJobsRequest\x12\x0e\n\x06parent\x18\x01 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"j\n\x10ListJobsResponse\x12(\n\x04jobs\x18\x01 \x03(\x0b\x32\x1a.google.cloud.batch.v1.Job\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x81\x01\n\x10ListTasksRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x62\x61tch.googleapis.com/TaskGroup\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"m\n\x11ListTasksResponse\x12*\n\x05tasks\x18\x01 \x03(\x0b\x32\x1b.google.cloud.batch.v1.Task\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"A\n\x0eGetTaskRequest\x12/\n\x04name\x18\x01 \x01(\tB!\xe0\x41\x02\xfa\x41\x1b\n\x19\x62\x61tch.googleapis.com/Task\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x32\xa5\n\n\x0c\x42\x61tchService\x12\x9b\x01\n\tCreateJob\x12\'.google.cloud.batch.v1.CreateJobRequest\x1a\x1a.google.cloud.batch.v1.Job\"I\xda\x41\x11parent,job,job_id\x82\xd3\xe4\x93\x02/\"(/v1/{parent=projects/*/locations/*}/jobs:\x03job\x12\x83\x01\n\x06GetJob\x12$.google.cloud.batch.v1.GetJobRequest\x1a\x1a.google.cloud.batch.v1.Job\"7\xda\x41\x04name\x82\xd3\xe4\x93\x02*\x12(/v1/{name=projects/*/locations/*/jobs/*}\x12\xcf\x01\n\tDeleteJob\x12\'.google.cloud.batch.v1.DeleteJobRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41@\n\x15google.protobuf.Empty\x12\'google.cloud.batch.v1.OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02**(/v1/{name=projects/*/locations/*/jobs/*}\x12\xec\x01\n\tCancelJob\x12\'.google.cloud.batch.v1.CancelJobRequest\x1a\x1d.google.longrunning.Operation\"\x96\x01\xca\x41R\n\'google.cloud.batch.v1.CancelJobResponse\x12\'google.cloud.batch.v1.OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34\"//v1/{name=projects/*/locations/*/jobs/*}:cancel:\x01*\x12\x96\x01\n\x08ListJobs\x12&.google.cloud.batch.v1.ListJobsRequest\x1a\'.google.cloud.batch.v1.ListJobsResponse\"9\xda\x41\x06parent\x82\xd3\xe4\x93\x02*\x12(/v1/{parent=projects/*/locations/*}/jobs\x12\x9b\x01\n\x07GetTask\x12%.google.cloud.batch.v1.GetTaskRequest\x1a\x1b.google.cloud.batch.v1.Task\"L\xda\x41\x04name\x82\xd3\xe4\x93\x02?\x12=/v1/{name=projects/*/locations/*/jobs/*/taskGroups/*/tasks/*}\x12\xae\x01\n\tListTasks\x12\'.google.cloud.batch.v1.ListTasksRequest\x1a(.google.cloud.batch.v1.ListTasksResponse\"N\xda\x41\x06parent\x82\xd3\xe4\x93\x02?\x12=/v1/{parent=projects/*/locations/*/jobs/*/taskGroups/*}/tasks\x1aH\xca\x41\x14\x62\x61tch.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xab\x01\n\x19\x63om.google.cloud.batch.v1B\nBatchProtoP\x01Z/cloud.google.com/go/batch/apiv1/batchpb;batchpb\xa2\x02\x03GCB\xaa\x02\x15Google.Cloud.Batch.V1\xca\x02\x15Google\\Cloud\\Batch\\V1\xea\x02\x18Google::Cloud::Batch::V1b\x06proto3"

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
    ["google.cloud.batch.v1.Job", "google/cloud/batch/v1/job.proto"],
    ["google.cloud.batch.v1.Task", "google/cloud/batch/v1/task.proto"],
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
    module Batch
      module V1
        CreateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.CreateJobRequest").msgclass
        GetJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.GetJobRequest").msgclass
        DeleteJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.DeleteJobRequest").msgclass
        CancelJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.CancelJobRequest").msgclass
        CancelJobResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.CancelJobResponse").msgclass
        ListJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.ListJobsRequest").msgclass
        ListJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.ListJobsResponse").msgclass
        ListTasksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.ListTasksRequest").msgclass
        ListTasksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.ListTasksResponse").msgclass
        GetTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.GetTaskRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.OperationMetadata").msgclass
      end
    end
  end
end
