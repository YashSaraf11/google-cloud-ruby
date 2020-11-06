# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/websecurityscanner/v1beta/scan_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/websecurityscanner/v1beta/scan_run_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/websecurityscanner/v1beta/scan_config.proto", :syntax => :proto3) do
    add_message "google.cloud.websecurityscanner.v1beta.ScanConfig" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :max_qps, :int32, 3
      repeated :starting_urls, :string, 4
      optional :authentication, :message, 5, "google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication"
      optional :user_agent, :enum, 6, "google.cloud.websecurityscanner.v1beta.ScanConfig.UserAgent"
      repeated :blacklist_patterns, :string, 7
      optional :schedule, :message, 8, "google.cloud.websecurityscanner.v1beta.ScanConfig.Schedule"
      repeated :target_platforms, :enum, 9, "google.cloud.websecurityscanner.v1beta.ScanConfig.TargetPlatform"
      optional :export_to_security_command_center, :enum, 10, "google.cloud.websecurityscanner.v1beta.ScanConfig.ExportToSecurityCommandCenter"
      optional :latest_run, :message, 11, "google.cloud.websecurityscanner.v1beta.ScanRun"
      optional :risk_level, :enum, 12, "google.cloud.websecurityscanner.v1beta.ScanConfig.RiskLevel"
    end
    add_message "google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication" do
      oneof :authentication do
        optional :google_account, :message, 1, "google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication.GoogleAccount"
        optional :custom_account, :message, 2, "google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication.CustomAccount"
      end
    end
    add_message "google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication.GoogleAccount" do
      optional :username, :string, 1
      optional :password, :string, 2
    end
    add_message "google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication.CustomAccount" do
      optional :username, :string, 1
      optional :password, :string, 2
      optional :login_url, :string, 3
    end
    add_message "google.cloud.websecurityscanner.v1beta.ScanConfig.Schedule" do
      optional :schedule_time, :message, 1, "google.protobuf.Timestamp"
      optional :interval_duration_days, :int32, 2
    end
    add_enum "google.cloud.websecurityscanner.v1beta.ScanConfig.UserAgent" do
      value :USER_AGENT_UNSPECIFIED, 0
      value :CHROME_LINUX, 1
      value :CHROME_ANDROID, 2
      value :SAFARI_IPHONE, 3
    end
    add_enum "google.cloud.websecurityscanner.v1beta.ScanConfig.TargetPlatform" do
      value :TARGET_PLATFORM_UNSPECIFIED, 0
      value :APP_ENGINE, 1
      value :COMPUTE, 2
    end
    add_enum "google.cloud.websecurityscanner.v1beta.ScanConfig.RiskLevel" do
      value :RISK_LEVEL_UNSPECIFIED, 0
      value :NORMAL, 1
      value :LOW, 2
    end
    add_enum "google.cloud.websecurityscanner.v1beta.ScanConfig.ExportToSecurityCommandCenter" do
      value :EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED, 0
      value :ENABLED, 1
      value :DISABLED, 2
    end
  end
end

module Google
  module Cloud
    module WebSecurityScanner
      module V1beta
        ScanConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig").msgclass
        ScanConfig::Authentication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication").msgclass
        ScanConfig::Authentication::GoogleAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication.GoogleAccount").msgclass
        ScanConfig::Authentication::CustomAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig.Authentication.CustomAccount").msgclass
        ScanConfig::Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig.Schedule").msgclass
        ScanConfig::UserAgent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig.UserAgent").enummodule
        ScanConfig::TargetPlatform = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig.TargetPlatform").enummodule
        ScanConfig::RiskLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig.RiskLevel").enummodule
        ScanConfig::ExportToSecurityCommandCenter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ScanConfig.ExportToSecurityCommandCenter").enummodule
      end
    end
  end
end
