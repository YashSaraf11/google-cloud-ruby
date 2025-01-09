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


module Google
  module Cloud
    module CloudQuotas
      module V1beta
        # Message for requesting list of QuotaInfos
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent value of QuotaInfo resources.
        #     Listing across different resource containers (such as 'projects/-') is not
        #     allowed.
        #
        #     Example names:
        #     `projects/123/locations/global/services/compute.googleapis.com`
        #     `folders/234/locations/global/services/compute.googleapis.com`
        #     `organizations/345/locations/global/services/compute.googleapis.com`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer items than
        #     requested. If unspecified, server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        class ListQuotaInfosRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing QuotaInfos
        # @!attribute [rw] quota_infos
        #   @return [::Array<::Google::Cloud::CloudQuotas::V1beta::QuotaInfo>]
        #     The list of QuotaInfo
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListQuotaInfosResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a QuotaInfo
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the quota info.
        #
        #     An example name:
        #     `projects/123/locations/global/services/compute.googleapis.com/quotaInfos/CpusPerProjectPerRegion`
        class GetQuotaInfoRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for requesting list of QuotaPreferences
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent value of QuotaPreference resources.
        #     Listing across different resource containers (such as 'projects/-') is not
        #     allowed.
        #
        #     When the value starts with 'folders' or 'organizations', it lists the
        #     QuotaPreferences for org quotas in the container. It does not list the
        #     QuotaPreferences in the descendant projects of the container.
        #
        #     Example parents:
        #     `projects/123/locations/global`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer items than
        #     requested. If unspecified, server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter result QuotaPreferences by their state, type,
        #     create/update time range.
        #
        #     Example filters:
        #     `reconciling=true AND request_type=CLOUD_CONSOLE`,
        #     `reconciling=true OR creation_time>2022-12-03T10:30:00`
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. How to order of the results. By default, the results are ordered
        #     by create time.
        #
        #     Example orders:
        #     `quota_id`,
        #     `service, create_time`
        class ListQuotaPreferencesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing QuotaPreferences
        # @!attribute [rw] quota_preferences
        #   @return [::Array<::Google::Cloud::CloudQuotas::V1beta::QuotaPreference>]
        #     The list of QuotaPreference
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListQuotaPreferencesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a QuotaPreference
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource
        #
        #     Example name:
        #     `projects/123/locations/global/quota_preferences/my-config-for-us-east1`
        class GetQuotaPreferenceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating a QuotaPreference
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Value for parent.
        #
        #     Example:
        #     `projects/123/locations/global`
        # @!attribute [rw] quota_preference_id
        #   @return [::String]
        #     Optional. Id of the requesting object, must be unique under its parent.
        #     If client does not set this field, the service will generate one.
        # @!attribute [rw] quota_preference
        #   @return [::Google::Cloud::CloudQuotas::V1beta::QuotaPreference]
        #     Required. The resource being created
        # @!attribute [rw] ignore_safety_checks
        #   @return [::Array<::Google::Cloud::CloudQuotas::V1beta::QuotaSafetyCheck>]
        #     The list of quota safety checks to be ignored.
        class CreateQuotaPreferenceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for updating a QuotaPreference
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Field mask is used to specify the fields to be overwritten in the
        #     QuotaPreference resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] quota_preference
        #   @return [::Google::Cloud::CloudQuotas::V1beta::QuotaPreference]
        #     Required. The resource being updated
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     Optional. If set to true, and the quota preference is not found, a new one
        #     will be created. In this situation, `update_mask` is ignored.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. If set to true, validate the request, but do not actually update.
        #     Note that a request being valid does not mean that the request is
        #     guaranteed to be fulfilled.
        # @!attribute [rw] ignore_safety_checks
        #   @return [::Array<::Google::Cloud::CloudQuotas::V1beta::QuotaSafetyCheck>]
        #     The list of quota safety checks to be ignored.
        class UpdateQuotaPreferenceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
