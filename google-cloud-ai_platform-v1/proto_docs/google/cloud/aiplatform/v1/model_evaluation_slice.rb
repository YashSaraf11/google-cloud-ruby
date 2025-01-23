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


module Google
  module Cloud
    module AIPlatform
      module V1
        # A collection of metrics calculated by comparing Model's predictions on a
        # slice of the test data against ground truth annotations.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the ModelEvaluationSlice.
        # @!attribute [r] slice
        #   @return [::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice::Slice]
        #     Output only. The slice of the test data that is used to evaluate the Model.
        # @!attribute [r] metrics_schema_uri
        #   @return [::String]
        #     Output only. Points to a YAML file stored on Google Cloud Storage
        #     describing the
        #     {::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice#metrics metrics} of this
        #     ModelEvaluationSlice. The schema is defined as an OpenAPI 3.0.2 [Schema
        #     Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject).
        # @!attribute [r] metrics
        #   @return [::Google::Protobuf::Value]
        #     Output only. Sliced evaluation metrics of the Model. The schema of the
        #     metrics is stored in
        #     {::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice#metrics_schema_uri metrics_schema_uri}
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this ModelEvaluationSlice was created.
        # @!attribute [r] model_explanation
        #   @return [::Google::Cloud::AIPlatform::V1::ModelExplanation]
        #     Output only. Aggregated explanation metrics for the Model's prediction
        #     output over the data this ModelEvaluation uses. This field is populated
        #     only if the Model is evaluated with explanations, and only for tabular
        #     Models.
        class ModelEvaluationSlice
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Definition of a slice.
          # @!attribute [r] dimension
          #   @return [::String]
          #     Output only. The dimension of the slice.
          #     Well-known dimensions are:
          #       * `annotationSpec`: This slice is on the test data that has either
          #         ground truth or prediction with
          #         {::Google::Cloud::AIPlatform::V1::AnnotationSpec#display_name AnnotationSpec.display_name}
          #         equals to
          #         {::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice::Slice#value value}.
          #       * `slice`: This slice is a user customized slice defined by its
          #         SliceSpec.
          # @!attribute [r] value
          #   @return [::String]
          #     Output only. The value of the dimension in this slice.
          # @!attribute [r] slice_spec
          #   @return [::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice::Slice::SliceSpec]
          #     Output only. Specification for how the data was sliced.
          class Slice
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Specification for how the data should be sliced.
            # @!attribute [rw] configs
            #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice::Slice::SliceSpec::SliceConfig}]
            #     Mapping configuration for this SliceSpec.
            #     The key is the name of the feature.
            #     By default, the key will be prefixed by "instance" as a dictionary
            #     prefix for Vertex Batch Predictions output format.
            class SliceSpec
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Specification message containing the config for this SliceSpec.
              # When `kind` is selected as `value` and/or `range`, only a single slice
              # will be computed.
              # When `all_values` is present, a separate slice will be computed for
              # each possible label/value for the corresponding key in `config`.
              # Examples, with feature zip_code with values 12345, 23334, 88888 and
              # feature country with values "US", "Canada", "Mexico" in the dataset:
              #
              # Example 1:
              #
              #     {
              #       "zip_code": { "value": { "float_value": 12345.0 } }
              #     }
              #
              # A single slice for any data with zip_code 12345 in the dataset.
              #
              # Example 2:
              #
              #     {
              #       "zip_code": { "range": { "low": 12345, "high": 20000 } }
              #     }
              #
              # A single slice containing data where the zip_codes between 12345 and
              # 20000 For this example, data with the zip_code of 12345 will be in this
              # slice.
              #
              # Example 3:
              #
              #     {
              #       "zip_code": { "range": { "low": 10000, "high": 20000 } },
              #       "country": { "value": { "string_value": "US" } }
              #     }
              #
              # A single slice containing data where the zip_codes between 10000 and
              # 20000 has the country "US". For this example, data with the zip_code of
              # 12345 and country "US" will be in this slice.
              #
              # Example 4:
              #
              #     { "country": {"all_values": { "value": true } } }
              #
              # Three slices are computed, one for each unique country in the dataset.
              #
              # Example 5:
              #
              #     {
              #       "country": { "all_values": { "value": true } },
              #       "zip_code": { "value": { "float_value": 12345.0 } }
              #     }
              #
              # Three slices are computed, one for each unique country in the dataset
              # where the zip_code is also 12345. For this example, data with zip_code
              # 12345 and country "US" will be in one slice, zip_code 12345 and country
              # "Canada" in another slice, and zip_code 12345 and country "Mexico" in
              # another slice, totaling 3 slices.
              # @!attribute [rw] value
              #   @return [::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice::Slice::SliceSpec::Value]
              #     A unique specific value for a given feature.
              #     Example: `{ "value": { "string_value": "12345" } }`
              #
              #     Note: The following fields are mutually exclusive: `value`, `range`, `all_values`. If a field in that set is populated, all other fields in the set will automatically be cleared.
              # @!attribute [rw] range
              #   @return [::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice::Slice::SliceSpec::Range]
              #     A range of values for a numerical feature.
              #     Example: `{"range":{"low":10000.0,"high":50000.0}}`
              #     will capture 12345 and 23334 in the slice.
              #
              #     Note: The following fields are mutually exclusive: `range`, `value`, `all_values`. If a field in that set is populated, all other fields in the set will automatically be cleared.
              # @!attribute [rw] all_values
              #   @return [::Google::Protobuf::BoolValue]
              #     If all_values is set to true, then all possible labels of the keyed
              #     feature will have another slice computed.
              #     Example: `{"all_values":{"value":true}}`
              #
              #     Note: The following fields are mutually exclusive: `all_values`, `value`, `range`. If a field in that set is populated, all other fields in the set will automatically be cleared.
              class SliceConfig
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # A range of values for slice(s).
              # `low` is inclusive, `high` is exclusive.
              # @!attribute [rw] low
              #   @return [::Float]
              #     Inclusive low value for the range.
              # @!attribute [rw] high
              #   @return [::Float]
              #     Exclusive high value for the range.
              class Range
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Single value that supports strings and floats.
              # @!attribute [rw] string_value
              #   @return [::String]
              #     String type.
              #
              #     Note: The following fields are mutually exclusive: `string_value`, `float_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
              # @!attribute [rw] float_value
              #   @return [::Float]
              #     Float type.
              #
              #     Note: The following fields are mutually exclusive: `float_value`, `string_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
              class Value
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # @!attribute [rw] key
              #   @return [::String]
              # @!attribute [rw] value
              #   @return [::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice::Slice::SliceSpec::SliceConfig]
              class ConfigsEntry
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end
        end
      end
    end
  end
end
