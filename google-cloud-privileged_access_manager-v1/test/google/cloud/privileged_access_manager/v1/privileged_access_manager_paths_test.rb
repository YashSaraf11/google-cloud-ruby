# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/cloud/privileged_access_manager/v1/privileged_access_manager"

class ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::ClientPathsTest < Minitest::Test
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

  def test_entitlement_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.entitlement_path project: "value0", location: "value1", entitlement: "value2"
      assert_equal "projects/value0/locations/value1/entitlements/value2", path

      path = client.entitlement_path folder: "value0", location: "value1", entitlement: "value2"
      assert_equal "folders/value0/locations/value1/entitlements/value2", path

      path = client.entitlement_path organization: "value0", location: "value1", entitlement: "value2"
      assert_equal "organizations/value0/locations/value1/entitlements/value2", path
    end
  end

  def test_folder_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.folder_location_path folder: "value0", location: "value1"
      assert_equal "folders/value0/locations/value1", path
    end
  end

  def test_grant_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.grant_path project: "value0", location: "value1", entitlement: "value2", grant: "value3"
      assert_equal "projects/value0/locations/value1/entitlements/value2/grants/value3", path

      path = client.grant_path folder: "value0", location: "value1", entitlement: "value2", grant: "value3"
      assert_equal "folders/value0/locations/value1/entitlements/value2/grants/value3", path

      path = client.grant_path organization: "value0", location: "value1", entitlement: "value2", grant: "value3"
      assert_equal "organizations/value0/locations/value1/entitlements/value2/grants/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_organization_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_location_path organization: "value0", location: "value1"
      assert_equal "organizations/value0/locations/value1", path
    end
  end
end
