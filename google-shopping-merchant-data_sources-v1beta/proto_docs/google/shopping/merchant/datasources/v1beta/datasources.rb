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
  module Shopping
    module Merchant
      module DataSources
        module V1beta
          # The [data source](https://support.google.com/merchants/answer/7439058) for
          # the Merchant Center account.
          # @!attribute [rw] primary_product_data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::PrimaryProductDataSource]
          #     The [primary data
          #     source](https://support.google.com/merchants/answer/7439058) for local
          #     and online products.
          # @!attribute [rw] supplemental_product_data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::SupplementalProductDataSource]
          #     The [supplemental data
          #     source](https://support.google.com/merchants/answer/7439058) for local
          #     and online products.
          # @!attribute [rw] local_inventory_data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::LocalInventoryDataSource]
          #     The [local
          #     inventory](https://support.google.com/merchants/answer/7023001) data
          #     source.
          # @!attribute [rw] regional_inventory_data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::RegionalInventoryDataSource]
          #     The [regional
          #     inventory](https://support.google.com/merchants/answer/7439058) data
          #     source.
          # @!attribute [rw] promotion_data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::PromotionDataSource]
          #     The
          #     [promotion](https://support.google.com/merchants/answer/2906014) data
          #     source.
          # @!attribute [rw] product_review_data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::ProductReviewDataSource]
          #     The [product
          #     review](https://support.google.com/merchants/answer/7045996)
          #     data source.
          # @!attribute [rw] merchant_review_data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::MerchantReviewDataSource]
          #     The [merchant
          #     review](https://support.google.com/merchants/answer/7045996)
          #     data source.
          # @!attribute [rw] name
          #   @return [::String]
          #     Identifier. The name of the data source.
          #     Format:
          #     `{datasource.name=accounts/{account}/dataSources/{datasource}}`
          # @!attribute [r] data_source_id
          #   @return [::Integer]
          #     Output only. The data source id.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Required. The displayed data source name in the Merchant Center UI.
          # @!attribute [r] input
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::DataSource::Input]
          #     Output only. Determines the type of input to the data source. Based on the
          #     input some settings might not work. Only generic data sources can be
          #     created through the API.
          # @!attribute [rw] file_input
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::FileInput]
          #     Optional. The field is used only when data is managed through a file.
          class DataSource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Determines the type of input to the data source. Based on the input some
            # settings might not be supported.
            module Input
              # Input unspecified.
              INPUT_UNSPECIFIED = 0

              # Represents data sources for which the data is primarily provided through
              # the API.
              API = 1

              # Represents data sources for which the data is primarily provided through
              # file input. Data can still be provided through the API.
              FILE = 2

              # The data source for products added directly in Merchant Center.
              #
              # This type of data source can not be created or updated through this API,
              # only by Merchant Center UI.
              #
              # This type of data source is read only.
              UI = 3

              # This is also known as
              # [Automated feeds](https://support.google.com/merchants/answer/12158480)
              # used to automatically build your product data. This type of data source
              # can be enabled or disabled through the Accounts bundle.
              AUTOFEED = 4
            end
          end

          # Request message for the GetDataSource method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the data source to retrieve.
          #     Format: `accounts/{account}/dataSources/{datasource}`
          class GetDataSourceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the ListDataSources method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The account to list data sources for.
          #     Format: `accounts/{account}`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. The maximum number of data sources to return. The service may
          #     return fewer than this value. The maximum value is 1000; values above 1000
          #     will be coerced to 1000. If unspecified, the maximum number of data sources
          #     will be returned.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. A page token, received from a previous `ListDataSources` call.
          #     Provide this to retrieve the subsequent page.
          #
          #     When paginating, all other parameters provided to `ListDataSources`
          #     must match the call that provided the page token.
          class ListDataSourcesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for the ListDataSources method.
          # @!attribute [rw] data_sources
          #   @return [::Array<::Google::Shopping::Merchant::DataSources::V1beta::DataSource>]
          #     The data sources from the specified account.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A token, which can be sent as `page_token` to retrieve the next page.
          #     If this field is omitted, there are no subsequent pages.
          class ListDataSourcesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the CreateDataSource method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The account where this data source will be created.
          #     Format: `accounts/{account}`
          # @!attribute [rw] data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::DataSource]
          #     Required. The data source to create.
          class CreateDataSourceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the UpdateDataSource method.
          # @!attribute [rw] data_source
          #   @return [::Google::Shopping::Merchant::DataSources::V1beta::DataSource]
          #     Required. The data source resource to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The list of data source fields to be updated.
          #
          #     Fields specified in the update mask without a value specified in the
          #     body will be deleted from the data source.
          #
          #     Providing special "*" value for full data source replacement is not
          #     supported.
          class UpdateDataSourceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the FetchDataSource method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the data source resource to fetch.
          #     Format: `accounts/{account}/dataSources/{datasource}`
          class FetchDataSourceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the DeleteDataSource method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the data source to delete.
          #     Format: `accounts/{account}/dataSources/{datasource}`
          class DeleteDataSourceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
