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

require "google/cloud/errors"
require "google/cloud/kms/v1/autokey_pb"
require "google/cloud/location"
require "google/iam/v1"

module Google
  module Cloud
    module Kms
      module V1
        module Autokey
          ##
          # Client for the Autokey service.
          #
          # Provides interfaces for using [Cloud KMS
          # Autokey](https://cloud.google.com/kms/help/autokey) to provision new
          # {::Google::Cloud::Kms::V1::CryptoKey CryptoKeys}, ready for Customer Managed
          # Encryption Key (CMEK) use, on-demand. To support certain client tooling, this
          # feature is modeled around a {::Google::Cloud::Kms::V1::KeyHandle KeyHandle}
          # resource: creating a {::Google::Cloud::Kms::V1::KeyHandle KeyHandle} in a resource
          # project and given location triggers Cloud KMS Autokey to provision a
          # {::Google::Cloud::Kms::V1::CryptoKey CryptoKey} in the configured key project and
          # the same location.
          #
          # Prior to use in a given resource project,
          # {::Google::Cloud::Kms::V1::AutokeyAdmin::Client#update_autokey_config UpdateAutokeyConfig}
          # should have been called on an ancestor folder, setting the key project where
          # Cloud KMS Autokey should create new
          # {::Google::Cloud::Kms::V1::CryptoKey CryptoKeys}. See documentation for additional
          # prerequisites. To check what key project, if any, is currently configured on
          # a resource project's ancestor folder, see
          # {::Google::Cloud::Kms::V1::AutokeyAdmin::Client#show_effective_autokey_config ShowEffectiveAutokeyConfig}.
          #
          class Client
            # @private
            API_VERSION = ""

            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "cloudkms.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :autokey_stub

            ##
            # Configure the Autokey Client class.
            #
            # See {::Google::Cloud::Kms::V1::Autokey::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all Autokey clients
            #   ::Google::Cloud::Kms::V1::Autokey::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Kms", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.create_key_handle.timeout = 60.0

                default_config.rpcs.get_key_handle.timeout = 60.0
                default_config.rpcs.get_key_handle.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config.rpcs.list_key_handles.timeout = 60.0
                default_config.rpcs.list_key_handles.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the Autokey Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Kms::V1::Autokey::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # The effective universe domain
            #
            # @return [String]
            #
            def universe_domain
              @autokey_stub.universe_domain
            end

            ##
            # Create a new Autokey client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Kms::V1::Autokey::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Kms::V1::Autokey::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Autokey client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/kms/v1/autokey_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint.nil? ||
                                       (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                       !@config.endpoint.split(".").first.include?("-"))
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @operations_client = Operations.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
                config.universe_domain = @config.universe_domain
              end

              @autokey_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Kms::V1::Autokey::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool,
                logger: @config.logger
              )

              @autokey_stub.stub_logger&.info do |entry|
                entry.set_system_name
                entry.set_service
                entry.message = "Created client for #{entry.service}"
                entry.set_credentials_fields credentials
                entry.set "customEndpoint", @config.endpoint if @config.endpoint
                entry.set "defaultTimeout", @config.timeout if @config.timeout
                entry.set "quotaProject", @quota_project_id if @quota_project_id
              end

              @location_client = Google::Cloud::Location::Locations::Client.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @autokey_stub.endpoint
                config.universe_domain = @autokey_stub.universe_domain
                config.logger = @autokey_stub.logger if config.respond_to? :logger=
              end

              @iam_policy_client = Google::Iam::V1::IAMPolicy::Client.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @autokey_stub.endpoint
                config.universe_domain = @autokey_stub.universe_domain
                config.logger = @autokey_stub.logger if config.respond_to? :logger=
              end
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::Kms::V1::Autokey::Operations]
            #
            attr_reader :operations_client

            ##
            # Get the associated client for mix-in of the Locations.
            #
            # @return [Google::Cloud::Location::Locations::Client]
            #
            attr_reader :location_client

            ##
            # Get the associated client for mix-in of the IAMPolicy.
            #
            # @return [Google::Iam::V1::IAMPolicy::Client]
            #
            attr_reader :iam_policy_client

            ##
            # The logger used for request/response debug logging.
            #
            # @return [Logger]
            #
            def logger
              @autokey_stub.logger
            end

            # Service calls

            ##
            # Creates a new {::Google::Cloud::Kms::V1::KeyHandle KeyHandle}, triggering the
            # provisioning of a new {::Google::Cloud::Kms::V1::CryptoKey CryptoKey} for CMEK
            # use with the given resource type in the configured key project and the same
            # location. GetOperation should
            # be used to resolve the resulting long-running operation and get the
            # resulting {::Google::Cloud::Kms::V1::KeyHandle KeyHandle} and
            # {::Google::Cloud::Kms::V1::CryptoKey CryptoKey}.
            #
            # @overload create_key_handle(request, options = nil)
            #   Pass arguments to `create_key_handle` via a request object, either of type
            #   {::Google::Cloud::Kms::V1::CreateKeyHandleRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Kms::V1::CreateKeyHandleRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_key_handle(parent: nil, key_handle_id: nil, key_handle: nil)
            #   Pass arguments to `create_key_handle` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. Name of the resource project and location to create the
            #     {::Google::Cloud::Kms::V1::KeyHandle KeyHandle} in, e.g.
            #     `projects/{PROJECT_ID}/locations/{LOCATION}`.
            #   @param key_handle_id [::String]
            #     Optional. Id of the {::Google::Cloud::Kms::V1::KeyHandle KeyHandle}. Must be
            #     unique to the resource project and location. If not provided by the caller,
            #     a new UUID is used.
            #   @param key_handle [::Google::Cloud::Kms::V1::KeyHandle, ::Hash]
            #     Required. {::Google::Cloud::Kms::V1::KeyHandle KeyHandle} to create.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/kms/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Kms::V1::Autokey::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Kms::V1::CreateKeyHandleRequest.new
            #
            #   # Call the create_key_handle method.
            #   result = client.create_key_handle request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def create_key_handle request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Kms::V1::CreateKeyHandleRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_key_handle.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Kms::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_key_handle.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_key_handle.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @autokey_stub.call_rpc :create_key_handle, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                throw :response, response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Returns the {::Google::Cloud::Kms::V1::KeyHandle KeyHandle}.
            #
            # @overload get_key_handle(request, options = nil)
            #   Pass arguments to `get_key_handle` via a request object, either of type
            #   {::Google::Cloud::Kms::V1::GetKeyHandleRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Kms::V1::GetKeyHandleRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_key_handle(name: nil)
            #   Pass arguments to `get_key_handle` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. Name of the {::Google::Cloud::Kms::V1::KeyHandle KeyHandle} resource,
            #     e.g.
            #     `projects/{PROJECT_ID}/locations/{LOCATION}/keyHandles/{KEY_HANDLE_ID}`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Kms::V1::KeyHandle]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Kms::V1::KeyHandle]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/kms/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Kms::V1::Autokey::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Kms::V1::GetKeyHandleRequest.new
            #
            #   # Call the get_key_handle method.
            #   result = client.get_key_handle request
            #
            #   # The returned object is of type Google::Cloud::Kms::V1::KeyHandle.
            #   p result
            #
            def get_key_handle request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Kms::V1::GetKeyHandleRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_key_handle.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Kms::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_key_handle.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_key_handle.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @autokey_stub.call_rpc :get_key_handle, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Lists {::Google::Cloud::Kms::V1::KeyHandle KeyHandles}.
            #
            # @overload list_key_handles(request, options = nil)
            #   Pass arguments to `list_key_handles` via a request object, either of type
            #   {::Google::Cloud::Kms::V1::ListKeyHandlesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Kms::V1::ListKeyHandlesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_key_handles(parent: nil, page_size: nil, page_token: nil, filter: nil)
            #   Pass arguments to `list_key_handles` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. Name of the resource project and location from which to list
            #     {::Google::Cloud::Kms::V1::KeyHandle KeyHandles}, e.g.
            #     `projects/{PROJECT_ID}/locations/{LOCATION}`.
            #   @param page_size [::Integer]
            #     Optional. Optional limit on the number of
            #     {::Google::Cloud::Kms::V1::KeyHandle KeyHandles} to include in the response. The
            #     service may return fewer than this value. Further
            #     {::Google::Cloud::Kms::V1::KeyHandle KeyHandles} can subsequently be obtained by
            #     including the
            #     {::Google::Cloud::Kms::V1::ListKeyHandlesResponse#next_page_token ListKeyHandlesResponse.next_page_token}
            #     in a subsequent request.  If unspecified, at most 100
            #     {::Google::Cloud::Kms::V1::KeyHandle KeyHandles} will be returned.
            #   @param page_token [::String]
            #     Optional. Optional pagination token, returned earlier via
            #     {::Google::Cloud::Kms::V1::ListKeyHandlesResponse#next_page_token ListKeyHandlesResponse.next_page_token}.
            #   @param filter [::String]
            #     Optional. Filter to apply when listing
            #     {::Google::Cloud::Kms::V1::KeyHandle KeyHandles}, e.g.
            #     `resource_type_selector="{SERVICE}.googleapis.com/{TYPE}"`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Kms::V1::KeyHandle>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Kms::V1::KeyHandle>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/kms/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Kms::V1::Autokey::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Kms::V1::ListKeyHandlesRequest.new
            #
            #   # Call the list_key_handles method.
            #   result = client.list_key_handles request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::Kms::V1::KeyHandle.
            #     p item
            #   end
            #
            def list_key_handles request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Kms::V1::ListKeyHandlesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_key_handles.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Kms::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_key_handles.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_key_handles.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @autokey_stub.call_rpc :list_key_handles, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @autokey_stub, :list_key_handles, request, response, operation, options
                yield response, operation if block_given?
                throw :response, response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the Autokey API.
            #
            # This class represents the configuration for Autokey,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Kms::V1::Autokey::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # create_key_handle to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Kms::V1::Autokey::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_key_handle.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Kms::V1::Autokey::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_key_handle.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   A custom service endpoint, as a hostname or hostname:port. The default is
            #   nil, indicating to use the default endpoint in the current universe domain.
            #   @return [::String,nil]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            # @!attribute [rw] universe_domain
            #   The universe domain within which to make requests. This determines the
            #   default endpoint URL. The default value of nil uses the environment
            #   universe (usually the default "googleapis.com" universe).
            #   @return [::String,nil]
            # @!attribute [rw] logger
            #   A custom logger to use for request/response debug logging, or the value
            #   `:default` (the default) to construct a default logger, or `nil` to
            #   explicitly disable logging.
            #   @return [::Logger,:default,nil]
            #
            class Configuration
              extend ::Gapic::Config

              # @private
              # The endpoint specific to the default "googleapis.com" universe. Deprecated.
              DEFAULT_ENDPOINT = "cloudkms.googleapis.com"

              config_attr :endpoint,      nil, ::String, nil
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil
              config_attr :universe_domain, nil, ::String, nil
              config_attr :logger, :default, ::Logger, nil, :default

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration for the channel pool
              # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
              #
              def channel_pool
                @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
              end

              ##
              # Configuration RPC class for the Autokey API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `create_key_handle`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_key_handle
                ##
                # RPC-specific configuration for `get_key_handle`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_key_handle
                ##
                # RPC-specific configuration for `list_key_handles`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_key_handles

                # @private
                def initialize parent_rpcs = nil
                  create_key_handle_config = parent_rpcs.create_key_handle if parent_rpcs.respond_to? :create_key_handle
                  @create_key_handle = ::Gapic::Config::Method.new create_key_handle_config
                  get_key_handle_config = parent_rpcs.get_key_handle if parent_rpcs.respond_to? :get_key_handle
                  @get_key_handle = ::Gapic::Config::Method.new get_key_handle_config
                  list_key_handles_config = parent_rpcs.list_key_handles if parent_rpcs.respond_to? :list_key_handles
                  @list_key_handles = ::Gapic::Config::Method.new list_key_handles_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
