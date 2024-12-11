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

require "google/cloud/parallelstore/v1beta/parallelstore"

class ::Google::Cloud::Parallelstore::V1beta::Parallelstore::ClientPathsTest < Minitest::Test
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

    def logger
      nil
    end
  end

  def test_address_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Parallelstore::V1beta::Parallelstore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.address_path project: "value0", region: "value1", address: "value2"
      assert_equal "projects/value0/regions/value1/addresses/value2", path
    end
  end

  def test_instance_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Parallelstore::V1beta::Parallelstore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.instance_path project: "value0", location: "value1", instance: "value2"
      assert_equal "projects/value0/locations/value1/instances/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Parallelstore::V1beta::Parallelstore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_network_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Parallelstore::V1beta::Parallelstore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_path project: "value0", network: "value1"
      assert_equal "projects/value0/global/networks/value1", path
    end
  end

  def test_service_account_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Parallelstore::V1beta::Parallelstore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_account_path project: "value0", service_account: "value1"
      assert_equal "projects/value0/serviceAccounts/value1", path
    end
  end
end
