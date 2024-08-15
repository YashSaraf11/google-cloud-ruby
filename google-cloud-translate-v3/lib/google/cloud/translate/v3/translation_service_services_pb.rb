# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/translate/v3/translation_service.proto for package 'Google.Cloud.Translate.V3'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/translate/v3/translation_service_pb'

module Google
  module Cloud
    module Translate
      module V3
        module TranslationService
          # Proto file for the Cloud Translation API (v3 GA).
          #
          # Provides natural language translation operations.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.translation.v3.TranslationService'

            # Translates input text and returns translated text.
            rpc :TranslateText, ::Google::Cloud::Translate::V3::TranslateTextRequest, ::Google::Cloud::Translate::V3::TranslateTextResponse
            # Romanize input text written in non-Latin scripts to Latin text.
            rpc :RomanizeText, ::Google::Cloud::Translate::V3::RomanizeTextRequest, ::Google::Cloud::Translate::V3::RomanizeTextResponse
            # Detects the language of text within a request.
            rpc :DetectLanguage, ::Google::Cloud::Translate::V3::DetectLanguageRequest, ::Google::Cloud::Translate::V3::DetectLanguageResponse
            # Returns a list of supported languages for translation.
            rpc :GetSupportedLanguages, ::Google::Cloud::Translate::V3::GetSupportedLanguagesRequest, ::Google::Cloud::Translate::V3::SupportedLanguages
            # Translates documents in synchronous mode.
            rpc :TranslateDocument, ::Google::Cloud::Translate::V3::TranslateDocumentRequest, ::Google::Cloud::Translate::V3::TranslateDocumentResponse
            # Translates a large volume of text in asynchronous batch mode.
            # This function provides real-time output as the inputs are being processed.
            # If caller cancels a request, the partial results (for an input file, it's
            # all or nothing) may still be available on the specified output location.
            #
            # This call returns immediately and you can
            # use google.longrunning.Operation.name to poll the status of the call.
            rpc :BatchTranslateText, ::Google::Cloud::Translate::V3::BatchTranslateTextRequest, ::Google::Longrunning::Operation
            # Translates a large volume of document in asynchronous batch mode.
            # This function provides real-time output as the inputs are being processed.
            # If caller cancels a request, the partial results (for an input file, it's
            # all or nothing) may still be available on the specified output location.
            #
            # This call returns immediately and you can use
            # google.longrunning.Operation.name to poll the status of the call.
            rpc :BatchTranslateDocument, ::Google::Cloud::Translate::V3::BatchTranslateDocumentRequest, ::Google::Longrunning::Operation
            # Creates a glossary and returns the long-running operation. Returns
            # NOT_FOUND, if the project doesn't exist.
            rpc :CreateGlossary, ::Google::Cloud::Translate::V3::CreateGlossaryRequest, ::Google::Longrunning::Operation
            # Updates a glossary. A LRO is used since the update can be async if the
            # glossary's entry file is updated.
            rpc :UpdateGlossary, ::Google::Cloud::Translate::V3::UpdateGlossaryRequest, ::Google::Longrunning::Operation
            # Lists glossaries in a project. Returns NOT_FOUND, if the project doesn't
            # exist.
            rpc :ListGlossaries, ::Google::Cloud::Translate::V3::ListGlossariesRequest, ::Google::Cloud::Translate::V3::ListGlossariesResponse
            # Gets a glossary. Returns NOT_FOUND, if the glossary doesn't
            # exist.
            rpc :GetGlossary, ::Google::Cloud::Translate::V3::GetGlossaryRequest, ::Google::Cloud::Translate::V3::Glossary
            # Deletes a glossary, or cancels glossary construction
            # if the glossary isn't created yet.
            # Returns NOT_FOUND, if the glossary doesn't exist.
            rpc :DeleteGlossary, ::Google::Cloud::Translate::V3::DeleteGlossaryRequest, ::Google::Longrunning::Operation
            # Gets a single glossary entry by the given id.
            rpc :GetGlossaryEntry, ::Google::Cloud::Translate::V3::GetGlossaryEntryRequest, ::Google::Cloud::Translate::V3::GlossaryEntry
            # List the entries for the glossary.
            rpc :ListGlossaryEntries, ::Google::Cloud::Translate::V3::ListGlossaryEntriesRequest, ::Google::Cloud::Translate::V3::ListGlossaryEntriesResponse
            # Creates a glossary entry.
            rpc :CreateGlossaryEntry, ::Google::Cloud::Translate::V3::CreateGlossaryEntryRequest, ::Google::Cloud::Translate::V3::GlossaryEntry
            # Updates a glossary entry.
            rpc :UpdateGlossaryEntry, ::Google::Cloud::Translate::V3::UpdateGlossaryEntryRequest, ::Google::Cloud::Translate::V3::GlossaryEntry
            # Deletes a single entry from the glossary
            rpc :DeleteGlossaryEntry, ::Google::Cloud::Translate::V3::DeleteGlossaryEntryRequest, ::Google::Protobuf::Empty
            # Creates a Dataset.
            rpc :CreateDataset, ::Google::Cloud::Translate::V3::CreateDatasetRequest, ::Google::Longrunning::Operation
            # Gets a Dataset.
            rpc :GetDataset, ::Google::Cloud::Translate::V3::GetDatasetRequest, ::Google::Cloud::Translate::V3::Dataset
            # Lists datasets.
            rpc :ListDatasets, ::Google::Cloud::Translate::V3::ListDatasetsRequest, ::Google::Cloud::Translate::V3::ListDatasetsResponse
            # Deletes a dataset and all of its contents.
            rpc :DeleteDataset, ::Google::Cloud::Translate::V3::DeleteDatasetRequest, ::Google::Longrunning::Operation
            # Creates an Adaptive MT dataset.
            rpc :CreateAdaptiveMtDataset, ::Google::Cloud::Translate::V3::CreateAdaptiveMtDatasetRequest, ::Google::Cloud::Translate::V3::AdaptiveMtDataset
            # Deletes an Adaptive MT dataset, including all its entries and associated
            # metadata.
            rpc :DeleteAdaptiveMtDataset, ::Google::Cloud::Translate::V3::DeleteAdaptiveMtDatasetRequest, ::Google::Protobuf::Empty
            # Gets the Adaptive MT dataset.
            rpc :GetAdaptiveMtDataset, ::Google::Cloud::Translate::V3::GetAdaptiveMtDatasetRequest, ::Google::Cloud::Translate::V3::AdaptiveMtDataset
            # Lists all Adaptive MT datasets for which the caller has read permission.
            rpc :ListAdaptiveMtDatasets, ::Google::Cloud::Translate::V3::ListAdaptiveMtDatasetsRequest, ::Google::Cloud::Translate::V3::ListAdaptiveMtDatasetsResponse
            # Translate text using Adaptive MT.
            rpc :AdaptiveMtTranslate, ::Google::Cloud::Translate::V3::AdaptiveMtTranslateRequest, ::Google::Cloud::Translate::V3::AdaptiveMtTranslateResponse
            # Gets and AdaptiveMtFile
            rpc :GetAdaptiveMtFile, ::Google::Cloud::Translate::V3::GetAdaptiveMtFileRequest, ::Google::Cloud::Translate::V3::AdaptiveMtFile
            # Deletes an AdaptiveMtFile along with its sentences.
            rpc :DeleteAdaptiveMtFile, ::Google::Cloud::Translate::V3::DeleteAdaptiveMtFileRequest, ::Google::Protobuf::Empty
            # Imports an AdaptiveMtFile and adds all of its sentences into the
            # AdaptiveMtDataset.
            rpc :ImportAdaptiveMtFile, ::Google::Cloud::Translate::V3::ImportAdaptiveMtFileRequest, ::Google::Cloud::Translate::V3::ImportAdaptiveMtFileResponse
            # Lists all AdaptiveMtFiles associated to an AdaptiveMtDataset.
            rpc :ListAdaptiveMtFiles, ::Google::Cloud::Translate::V3::ListAdaptiveMtFilesRequest, ::Google::Cloud::Translate::V3::ListAdaptiveMtFilesResponse
            # Lists all AdaptiveMtSentences under a given file/dataset.
            rpc :ListAdaptiveMtSentences, ::Google::Cloud::Translate::V3::ListAdaptiveMtSentencesRequest, ::Google::Cloud::Translate::V3::ListAdaptiveMtSentencesResponse
            # Import sentence pairs into translation Dataset.
            rpc :ImportData, ::Google::Cloud::Translate::V3::ImportDataRequest, ::Google::Longrunning::Operation
            # Exports dataset's data to the provided output location.
            rpc :ExportData, ::Google::Cloud::Translate::V3::ExportDataRequest, ::Google::Longrunning::Operation
            # Lists sentence pairs in the dataset.
            rpc :ListExamples, ::Google::Cloud::Translate::V3::ListExamplesRequest, ::Google::Cloud::Translate::V3::ListExamplesResponse
            # Creates a Model.
            rpc :CreateModel, ::Google::Cloud::Translate::V3::CreateModelRequest, ::Google::Longrunning::Operation
            # Lists models.
            rpc :ListModels, ::Google::Cloud::Translate::V3::ListModelsRequest, ::Google::Cloud::Translate::V3::ListModelsResponse
            # Gets a model.
            rpc :GetModel, ::Google::Cloud::Translate::V3::GetModelRequest, ::Google::Cloud::Translate::V3::Model
            # Deletes a model.
            rpc :DeleteModel, ::Google::Cloud::Translate::V3::DeleteModelRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
