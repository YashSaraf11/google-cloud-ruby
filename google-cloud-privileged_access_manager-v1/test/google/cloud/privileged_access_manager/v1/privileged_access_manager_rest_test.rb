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
require "gapic/rest"
require "google/cloud/privilegedaccessmanager/v1/privilegedaccessmanager_pb"
require "google/cloud/privileged_access_manager/v1/privileged_access_manager/rest"


class ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
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

  def test_check_onboarding_status
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::CheckOnboardingStatusResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    check_onboarding_status_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_check_onboarding_status_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, check_onboarding_status_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.check_onboarding_status({ parent: parent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.check_onboarding_status parent: parent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.check_onboarding_status ::Google::Cloud::PrivilegedAccessManager::V1::CheckOnboardingStatusRequest.new(parent: parent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.check_onboarding_status({ parent: parent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.check_onboarding_status(::Google::Cloud::PrivilegedAccessManager::V1::CheckOnboardingStatusRequest.new(parent: parent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, check_onboarding_status_client_stub.call_count
      end
    end
  end

  def test_list_entitlements
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::ListEntitlementsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_entitlements_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_list_entitlements_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_entitlements_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_entitlements({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_entitlements parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_entitlements ::Google::Cloud::PrivilegedAccessManager::V1::ListEntitlementsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_entitlements({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_entitlements(::Google::Cloud::PrivilegedAccessManager::V1::ListEntitlementsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_entitlements_client_stub.call_count
      end
    end
  end

  def test_search_entitlements
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::SearchEntitlementsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    caller_access_type = :CALLER_ACCESS_TYPE_UNSPECIFIED
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    search_entitlements_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_search_entitlements_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_entitlements_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_entitlements({ parent: parent, caller_access_type: caller_access_type, filter: filter, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_entitlements parent: parent, caller_access_type: caller_access_type, filter: filter, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_entitlements ::Google::Cloud::PrivilegedAccessManager::V1::SearchEntitlementsRequest.new(parent: parent, caller_access_type: caller_access_type, filter: filter, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_entitlements({ parent: parent, caller_access_type: caller_access_type, filter: filter, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_entitlements(::Google::Cloud::PrivilegedAccessManager::V1::SearchEntitlementsRequest.new(parent: parent, caller_access_type: caller_access_type, filter: filter, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_entitlements_client_stub.call_count
      end
    end
  end

  def test_get_entitlement
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::Entitlement.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_entitlement_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_get_entitlement_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_entitlement_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_entitlement({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_entitlement name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_entitlement ::Google::Cloud::PrivilegedAccessManager::V1::GetEntitlementRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_entitlement({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_entitlement(::Google::Cloud::PrivilegedAccessManager::V1::GetEntitlementRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_entitlement_client_stub.call_count
      end
    end
  end

  def test_create_entitlement
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entitlement_id = "hello world"
    entitlement = {}
    request_id = "hello world"

    create_entitlement_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_create_entitlement_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_entitlement_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_entitlement({ parent: parent, entitlement_id: entitlement_id, entitlement: entitlement, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_entitlement parent: parent, entitlement_id: entitlement_id, entitlement: entitlement, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_entitlement ::Google::Cloud::PrivilegedAccessManager::V1::CreateEntitlementRequest.new(parent: parent, entitlement_id: entitlement_id, entitlement: entitlement, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_entitlement({ parent: parent, entitlement_id: entitlement_id, entitlement: entitlement, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_entitlement(::Google::Cloud::PrivilegedAccessManager::V1::CreateEntitlementRequest.new(parent: parent, entitlement_id: entitlement_id, entitlement: entitlement, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_entitlement_client_stub.call_count
      end
    end
  end

  def test_delete_entitlement
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"
    force = true

    delete_entitlement_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_delete_entitlement_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_entitlement_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_entitlement({ name: name, request_id: request_id, force: force }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_entitlement name: name, request_id: request_id, force: force do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_entitlement ::Google::Cloud::PrivilegedAccessManager::V1::DeleteEntitlementRequest.new(name: name, request_id: request_id, force: force) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_entitlement({ name: name, request_id: request_id, force: force }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_entitlement(::Google::Cloud::PrivilegedAccessManager::V1::DeleteEntitlementRequest.new(name: name, request_id: request_id, force: force), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_entitlement_client_stub.call_count
      end
    end
  end

  def test_update_entitlement
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    entitlement = {}
    update_mask = {}

    update_entitlement_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_update_entitlement_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_entitlement_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_entitlement({ entitlement: entitlement, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_entitlement entitlement: entitlement, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_entitlement ::Google::Cloud::PrivilegedAccessManager::V1::UpdateEntitlementRequest.new(entitlement: entitlement, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_entitlement({ entitlement: entitlement, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_entitlement(::Google::Cloud::PrivilegedAccessManager::V1::UpdateEntitlementRequest.new(entitlement: entitlement, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_entitlement_client_stub.call_count
      end
    end
  end

  def test_list_grants
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::ListGrantsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_grants_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_list_grants_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_grants_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_grants({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_grants parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_grants ::Google::Cloud::PrivilegedAccessManager::V1::ListGrantsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_grants({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_grants(::Google::Cloud::PrivilegedAccessManager::V1::ListGrantsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_grants_client_stub.call_count
      end
    end
  end

  def test_search_grants
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::SearchGrantsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    caller_relationship = :CALLER_RELATIONSHIP_TYPE_UNSPECIFIED
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    search_grants_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_search_grants_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_grants_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_grants({ parent: parent, caller_relationship: caller_relationship, filter: filter, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_grants parent: parent, caller_relationship: caller_relationship, filter: filter, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_grants ::Google::Cloud::PrivilegedAccessManager::V1::SearchGrantsRequest.new(parent: parent, caller_relationship: caller_relationship, filter: filter, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_grants({ parent: parent, caller_relationship: caller_relationship, filter: filter, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_grants(::Google::Cloud::PrivilegedAccessManager::V1::SearchGrantsRequest.new(parent: parent, caller_relationship: caller_relationship, filter: filter, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_grants_client_stub.call_count
      end
    end
  end

  def test_get_grant
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::Grant.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_grant_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_get_grant_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_grant_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_grant({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_grant name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_grant ::Google::Cloud::PrivilegedAccessManager::V1::GetGrantRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_grant({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_grant(::Google::Cloud::PrivilegedAccessManager::V1::GetGrantRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_grant_client_stub.call_count
      end
    end
  end

  def test_create_grant
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::Grant.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    grant = {}
    request_id = "hello world"

    create_grant_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_create_grant_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_grant_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_grant({ parent: parent, grant: grant, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_grant parent: parent, grant: grant, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_grant ::Google::Cloud::PrivilegedAccessManager::V1::CreateGrantRequest.new(parent: parent, grant: grant, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_grant({ parent: parent, grant: grant, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_grant(::Google::Cloud::PrivilegedAccessManager::V1::CreateGrantRequest.new(parent: parent, grant: grant, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_grant_client_stub.call_count
      end
    end
  end

  def test_approve_grant
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::Grant.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    reason = "hello world"

    approve_grant_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_approve_grant_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, approve_grant_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.approve_grant({ name: name, reason: reason }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.approve_grant name: name, reason: reason do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.approve_grant ::Google::Cloud::PrivilegedAccessManager::V1::ApproveGrantRequest.new(name: name, reason: reason) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.approve_grant({ name: name, reason: reason }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.approve_grant(::Google::Cloud::PrivilegedAccessManager::V1::ApproveGrantRequest.new(name: name, reason: reason), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, approve_grant_client_stub.call_count
      end
    end
  end

  def test_deny_grant
    # Create test objects.
    client_result = ::Google::Cloud::PrivilegedAccessManager::V1::Grant.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    reason = "hello world"

    deny_grant_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_deny_grant_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, deny_grant_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.deny_grant({ name: name, reason: reason }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.deny_grant name: name, reason: reason do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.deny_grant ::Google::Cloud::PrivilegedAccessManager::V1::DenyGrantRequest.new(name: name, reason: reason) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.deny_grant({ name: name, reason: reason }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.deny_grant(::Google::Cloud::PrivilegedAccessManager::V1::DenyGrantRequest.new(name: name, reason: reason), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, deny_grant_client_stub.call_count
      end
    end
  end

  def test_revoke_grant
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    reason = "hello world"

    revoke_grant_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::ServiceStub.stub :transcode_revoke_grant_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, revoke_grant_client_stub do
        # Create client
        client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.revoke_grant({ name: name, reason: reason }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.revoke_grant name: name, reason: reason do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.revoke_grant ::Google::Cloud::PrivilegedAccessManager::V1::RevokeGrantRequest.new(name: name, reason: reason) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.revoke_grant({ name: name, reason: reason }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.revoke_grant(::Google::Cloud::PrivilegedAccessManager::V1::RevokeGrantRequest.new(name: name, reason: reason), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, revoke_grant_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::PrivilegedAccessManager::V1::PrivilegedAccessManager::Rest::Client::Configuration, config
  end
end
