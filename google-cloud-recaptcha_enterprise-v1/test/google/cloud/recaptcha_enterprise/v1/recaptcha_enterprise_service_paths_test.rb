# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/recaptcha_enterprise/v1/recaptcha_enterprise_service"

class ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_assessment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.assessment_path project: "value0", assessment: "value1"
      assert_equal "projects/value0/assessments/value1", path
    end
  end

  def test_firewall_policy_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.firewall_policy_path project: "value0", firewallpolicy: "value1"
      assert_equal "projects/value0/firewallpolicies/value1", path
    end
  end

  def test_key_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.key_path project: "value0", key: "value1"
      assert_equal "projects/value0/keys/value1", path
    end
  end

  def test_metrics_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.metrics_path project: "value0", key: "value1"
      assert_equal "projects/value0/keys/value1/metrics", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end

  def test_related_account_group_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.related_account_group_path project: "value0", relatedaccountgroup: "value1"
      assert_equal "projects/value0/relatedaccountgroups/value1", path
    end
  end
end
