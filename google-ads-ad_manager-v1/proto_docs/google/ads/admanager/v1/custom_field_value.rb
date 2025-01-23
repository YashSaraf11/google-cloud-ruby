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


module Google
  module Ads
    module AdManager
      module V1
        # A value for a CustomField on a resource.
        # @!attribute [rw] custom_field
        #   @return [::String]
        #     Required. The custom field for which this is a value.
        #     Format: "networks/\\{network_code}/customFields/\\{custom_field_id}"
        # @!attribute [rw] value
        #   @return [::Google::Ads::AdManager::V1::CustomFieldValue::Value]
        #     Required. A typed value representation of the value.
        class CustomFieldValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represent custom field value type.
          # Next Id: 5
          # @!attribute [rw] dropdown_value
          #   @return [::Integer]
          #     The custom_field_option_id, if the CustomFieldDataType is DROPDOWN.
          #
          #     Note: The following fields are mutually exclusive: `dropdown_value`, `string_value`, `number_value`, `toggle_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] string_value
          #   @return [::String]
          #     The value, if the CustomFieldDataType is STRING.
          #
          #     Note: The following fields are mutually exclusive: `string_value`, `dropdown_value`, `number_value`, `toggle_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] number_value
          #   @return [::Float]
          #     The value, if the CustomFieldDataType is NUMBER.
          #
          #     Note: The following fields are mutually exclusive: `number_value`, `dropdown_value`, `string_value`, `toggle_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] toggle_value
          #   @return [::Boolean]
          #     The value, if the CustomFieldDataType is TOGGLE.
          #
          #     Note: The following fields are mutually exclusive: `toggle_value`, `dropdown_value`, `string_value`, `number_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class Value
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
