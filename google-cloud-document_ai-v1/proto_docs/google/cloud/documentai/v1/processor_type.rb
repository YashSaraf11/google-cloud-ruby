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
    module DocumentAI
      module V1
        # A processor type is responsible for performing a certain document
        # understanding task on a certain type of document.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the processor type.
        #     Format: `projects/{project}/processorTypes/{processor_type}`
        # @!attribute [rw] type
        #   @return [::String]
        #     The processor type, e.g., `OCR_PROCESSOR`, `INVOICE_PROCESSOR`, etc.
        # @!attribute [rw] category
        #   @return [::String]
        #     The processor category, used by UI to group processor types.
        # @!attribute [rw] available_locations
        #   @return [::Array<::Google::Cloud::DocumentAI::V1::ProcessorType::LocationInfo>]
        #     The locations in which this processor is available.
        # @!attribute [rw] allow_creation
        #   @return [::Boolean]
        #     Whether the processor type allows creation. If true, users can create a
        #     processor of this processor type. Otherwise, users need to request access.
        # @!attribute [rw] launch_stage
        #   @return [::Google::Api::LaunchStage]
        #     Launch stage of the processor type
        # @!attribute [rw] sample_document_uris
        #   @return [::Array<::String>]
        #     A set of Cloud Storage URIs of sample documents for this processor.
        class ProcessorType
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The location information about where the processor is available.
          # @!attribute [rw] location_id
          #   @return [::String]
          #     The location id, currently must be one of [us, eu].
          class LocationInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
