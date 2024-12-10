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

require "google/cloud/metastore/v1beta/metastore_federation_pb"
require "google/cloud/metastore/v1beta/metastore_federation_services_pb"
require "google/cloud/metastore/v1beta/dataproc_metastore_federation"

class ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
    end

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

  def test_list_federations
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Metastore::V1beta::ListFederationsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_federations_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_federations, name
      assert_kind_of ::Google::Cloud::Metastore::V1beta::ListFederationsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_federations_client_stub do
      # Create client
      client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_federations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_federations parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_federations ::Google::Cloud::Metastore::V1beta::ListFederationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_federations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_federations(::Google::Cloud::Metastore::V1beta::ListFederationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_federations_client_stub.call_rpc_count
    end
  end

  def test_get_federation
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Metastore::V1beta::Federation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_federation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_federation, name
      assert_kind_of ::Google::Cloud::Metastore::V1beta::GetFederationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_federation_client_stub do
      # Create client
      client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_federation({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_federation name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_federation ::Google::Cloud::Metastore::V1beta::GetFederationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_federation({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_federation(::Google::Cloud::Metastore::V1beta::GetFederationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_federation_client_stub.call_rpc_count
    end
  end

  def test_create_federation
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    federation_id = "hello world"
    federation = {}
    request_id = "hello world"

    create_federation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_federation, name
      assert_kind_of ::Google::Cloud::Metastore::V1beta::CreateFederationRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["federation_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Metastore::V1beta::Federation), request["federation"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_federation_client_stub do
      # Create client
      client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_federation({ parent: parent, federation_id: federation_id, federation: federation, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_federation parent: parent, federation_id: federation_id, federation: federation, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_federation ::Google::Cloud::Metastore::V1beta::CreateFederationRequest.new(parent: parent, federation_id: federation_id, federation: federation, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_federation({ parent: parent, federation_id: federation_id, federation: federation, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_federation(::Google::Cloud::Metastore::V1beta::CreateFederationRequest.new(parent: parent, federation_id: federation_id, federation: federation, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_federation_client_stub.call_rpc_count
    end
  end

  def test_update_federation
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    federation = {}
    request_id = "hello world"

    update_federation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_federation, name
      assert_kind_of ::Google::Cloud::Metastore::V1beta::UpdateFederationRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Metastore::V1beta::Federation), request["federation"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_federation_client_stub do
      # Create client
      client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_federation({ update_mask: update_mask, federation: federation, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_federation update_mask: update_mask, federation: federation, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_federation ::Google::Cloud::Metastore::V1beta::UpdateFederationRequest.new(update_mask: update_mask, federation: federation, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_federation({ update_mask: update_mask, federation: federation, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_federation(::Google::Cloud::Metastore::V1beta::UpdateFederationRequest.new(update_mask: update_mask, federation: federation, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_federation_client_stub.call_rpc_count
    end
  end

  def test_delete_federation
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_federation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_federation, name
      assert_kind_of ::Google::Cloud::Metastore::V1beta::DeleteFederationRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_federation_client_stub do
      # Create client
      client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_federation({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_federation name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_federation ::Google::Cloud::Metastore::V1beta::DeleteFederationRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_federation({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_federation(::Google::Cloud::Metastore::V1beta::DeleteFederationRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_federation_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Operations, client.operations_client
  end
end
