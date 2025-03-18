# frozen_string_literal: true

# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START managedkafka_v1_generated_ManagedKafkaConnect_StopConnector_sync]
require "google/cloud/managed_kafka/v1"

##
# Snippet for the stop_connector call in the ManagedKafkaConnect service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::ManagedKafka::V1::ManagedKafkaConnect::Client#stop_connector.
#
def stop_connector
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ManagedKafka::V1::ManagedKafkaConnect::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ManagedKafka::V1::StopConnectorRequest.new

  # Call the stop_connector method.
  result = client.stop_connector request

  # The returned object is of type Google::Cloud::ManagedKafka::V1::StopConnectorResponse.
  p result
end
# [END managedkafka_v1_generated_ManagedKafkaConnect_StopConnector_sync]
