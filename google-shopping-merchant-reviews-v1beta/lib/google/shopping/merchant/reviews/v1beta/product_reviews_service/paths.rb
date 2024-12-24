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
      module Reviews
        module V1beta
          module ProductReviewsService
            # Path helper methods for the ProductReviewsService API.
            module Paths
              ##
              # Create a fully-qualified Account resource string.
              #
              # The resource will be in the following format:
              #
              # `accounts/{account}`
              #
              # @param account [String]
              #
              # @return [::String]
              def account_path account:
                "accounts/#{account}"
              end

              ##
              # Create a fully-qualified ProductReview resource string.
              #
              # The resource will be in the following format:
              #
              # `accounts/{account}/productReviews/{productreview}`
              #
              # @param account [String]
              # @param productreview [String]
              #
              # @return [::String]
              def product_review_path account:, productreview:
                raise ::ArgumentError, "account cannot contain /" if account.to_s.include? "/"

                "accounts/#{account}/productReviews/#{productreview}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
