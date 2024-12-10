# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/beyond_corp/app_connections/v1/app_connections_service"

class ::Google::Cloud::BeyondCorp::AppConnections::V1::AppConnectionsService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end
  end

  def test_app_connection_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::BeyondCorp::AppConnections::V1::AppConnectionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.app_connection_path project: "value0", location: "value1", app_connection: "value2"
      assert_equal "projects/value0/locations/value1/appConnections/value2", path
    end
  end

  def test_app_connector_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::BeyondCorp::AppConnections::V1::AppConnectionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.app_connector_path project: "value0", location: "value1", app_connector: "value2"
      assert_equal "projects/value0/locations/value1/appConnectors/value2", path
    end
  end

  def test_app_gateway_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::BeyondCorp::AppConnections::V1::AppConnectionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.app_gateway_path project: "value0", location: "value1", app_gateway: "value2"
      assert_equal "projects/value0/locations/value1/appGateways/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::BeyondCorp::AppConnections::V1::AppConnectionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end
end
