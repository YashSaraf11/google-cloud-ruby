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
    module Firestore
      module Admin
        module V1
          # A Cloud Firestore Database.
          # @!attribute [rw] name
          #   @return [::String]
          #     The resource name of the Database.
          #     Format: `projects/{project}/databases/{database}`
          # @!attribute [r] uid
          #   @return [::String]
          #     Output only. The system-generated UUID4 for this Database.
          # @!attribute [r] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The timestamp at which this database was created. Databases
          #     created before 2016 do not populate create_time.
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The timestamp at which this database was most recently
          #     updated. Note this only includes updates to the database resource and not
          #     data contained by the database.
          # @!attribute [r] delete_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The timestamp at which this database was deleted. Only set if
          #     the database has been deleted.
          # @!attribute [rw] location_id
          #   @return [::String]
          #     The location of the database. Available locations are listed at
          #     https://cloud.google.com/firestore/docs/locations.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Firestore::Admin::V1::Database::DatabaseType]
          #     The type of the database.
          #     See https://cloud.google.com/datastore/docs/firestore-or-datastore for
          #     information about how to choose.
          # @!attribute [rw] concurrency_mode
          #   @return [::Google::Cloud::Firestore::Admin::V1::Database::ConcurrencyMode]
          #     The concurrency control mode to use for this database.
          # @!attribute [r] version_retention_period
          #   @return [::Google::Protobuf::Duration]
          #     Output only. The period during which past versions of data are retained in
          #     the database.
          #
          #     Any [read][google.firestore.v1.GetDocumentRequest.read_time]
          #     or [query][google.firestore.v1.ListDocumentsRequest.read_time] can specify
          #     a `read_time` within this window, and will read the state of the database
          #     at that time.
          #
          #     If the PITR feature is enabled, the retention period is 7 days. Otherwise,
          #     the retention period is 1 hour.
          # @!attribute [r] earliest_version_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The earliest timestamp at which older versions of the data can
          #     be read from the database. See [version_retention_period] above; this field
          #     is populated with `now - version_retention_period`.
          #
          #     This value is continuously updated, and becomes stale the moment it is
          #     queried. If you are using this value to recover data, make sure to account
          #     for the time from the moment when the value is queried to the moment when
          #     you initiate the recovery.
          # @!attribute [rw] point_in_time_recovery_enablement
          #   @return [::Google::Cloud::Firestore::Admin::V1::Database::PointInTimeRecoveryEnablement]
          #     Whether to enable the PITR feature on this database.
          # @!attribute [rw] app_engine_integration_mode
          #   @return [::Google::Cloud::Firestore::Admin::V1::Database::AppEngineIntegrationMode]
          #     The App Engine integration mode to use for this database.
          # @!attribute [r] key_prefix
          #   @return [::String]
          #     Output only. The key_prefix for this database. This key_prefix is used, in
          #     combination with the project ID ("<key prefix>~<project id>") to construct
          #     the application ID that is returned from the Cloud Datastore APIs in Google
          #     App Engine first generation runtimes.
          #
          #     This value may be empty in which case the appid to use for URL-encoded keys
          #     is the project_id (eg: foo instead of v~foo).
          # @!attribute [rw] delete_protection_state
          #   @return [::Google::Cloud::Firestore::Admin::V1::Database::DeleteProtectionState]
          #     State of delete protection for the database.
          # @!attribute [rw] cmek_config
          #   @return [::Google::Cloud::Firestore::Admin::V1::Database::CmekConfig]
          #     Optional. Presence indicates CMEK is enabled for this database.
          # @!attribute [r] previous_id
          #   @return [::String]
          #     Output only. The database resource's prior database ID. This field is only
          #     populated for deleted databases.
          # @!attribute [r] source_info
          #   @return [::Google::Cloud::Firestore::Admin::V1::Database::SourceInfo]
          #     Output only. Information about the provenance of this database.
          # @!attribute [rw] etag
          #   @return [::String]
          #     This checksum is computed by the server based on the value of other
          #     fields, and may be sent on update and delete requests to ensure the
          #     client has an up-to-date value before proceeding.
          class Database
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The CMEK (Customer Managed Encryption Key) configuration for a Firestore
            # database. If not present, the database is secured by the default Google
            # encryption key.
            # @!attribute [rw] kms_key_name
            #   @return [::String]
            #     Required. Only keys in the same location as this database are allowed to
            #     be used for encryption.
            #
            #     For Firestore's nam5 multi-region, this corresponds to Cloud KMS
            #     multi-region us. For Firestore's eur3 multi-region, this corresponds to
            #     Cloud KMS multi-region europe. See
            #     https://cloud.google.com/kms/docs/locations.
            #
            #     The expected format is
            #     `projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
            # @!attribute [r] active_key_version
            #   @return [::Array<::String>]
            #     Output only. Currently in-use [KMS key
            #     versions](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions).
            #     During [key rotation](https://cloud.google.com/kms/docs/key-rotation),
            #     there can be multiple in-use key versions.
            #
            #     The expected format is
            #     `projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{key_version}`.
            class CmekConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Information about the provenance of this database.
            # @!attribute [rw] backup
            #   @return [::Google::Cloud::Firestore::Admin::V1::Database::SourceInfo::BackupSource]
            #     If set, this database was restored from the specified backup (or a
            #     snapshot thereof).
            # @!attribute [rw] operation
            #   @return [::String]
            #     The associated long-running operation. This field may not be set after
            #     the operation has completed. Format:
            #     `projects/{project}/databases/{database}/operations/{operation}`.
            class SourceInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Information about a backup that was used to restore a database.
              # @!attribute [rw] backup
              #   @return [::String]
              #     The resource name of the backup that was used to restore this
              #     database. Format:
              #     `projects/{project}/locations/{location}/backups/{backup}`.
              class BackupSource
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Encryption configuration for a new database being created from another
            # source.
            #
            # The source could be a {::Google::Cloud::Firestore::Admin::V1::Backup Backup} .
            # @!attribute [rw] google_default_encryption
            #   @return [::Google::Cloud::Firestore::Admin::V1::Database::EncryptionConfig::GoogleDefaultEncryptionOptions]
            #     Use Google default encryption.
            # @!attribute [rw] use_source_encryption
            #   @return [::Google::Cloud::Firestore::Admin::V1::Database::EncryptionConfig::SourceEncryptionOptions]
            #     The database will use the same encryption configuration as the source.
            # @!attribute [rw] customer_managed_encryption
            #   @return [::Google::Cloud::Firestore::Admin::V1::Database::EncryptionConfig::CustomerManagedEncryptionOptions]
            #     Use Customer Managed Encryption Keys (CMEK) for encryption.
            class EncryptionConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The configuration options for using Google default encryption.
              class GoogleDefaultEncryptionOptions
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # The configuration options for using the same encryption method as the
              # source.
              class SourceEncryptionOptions
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # The configuration options for using CMEK (Customer Managed Encryption
              # Key) encryption.
              # @!attribute [rw] kms_key_name
              #   @return [::String]
              #     Required. Only keys in the same location as the database are allowed to
              #     be used for encryption.
              #
              #     For Firestore's nam5 multi-region, this corresponds to Cloud KMS
              #     multi-region us. For Firestore's eur3 multi-region, this corresponds to
              #     Cloud KMS multi-region europe. See
              #     https://cloud.google.com/kms/docs/locations.
              #
              #     The expected format is
              #     `projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
              class CustomerManagedEncryptionOptions
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # The type of the database.
            # See https://cloud.google.com/datastore/docs/firestore-or-datastore for
            # information about how to choose.
            #
            # Mode changes are only allowed if the database is empty.
            module DatabaseType
              # Not used.
              DATABASE_TYPE_UNSPECIFIED = 0

              # Firestore Native Mode
              FIRESTORE_NATIVE = 1

              # Firestore in Datastore Mode.
              DATASTORE_MODE = 2
            end

            # The type of concurrency control mode for transactions.
            module ConcurrencyMode
              # Not used.
              CONCURRENCY_MODE_UNSPECIFIED = 0

              # Use optimistic concurrency control by default. This mode is available
              # for Cloud Firestore databases.
              OPTIMISTIC = 1

              # Use pessimistic concurrency control by default. This mode is available
              # for Cloud Firestore databases.
              #
              # This is the default setting for Cloud Firestore.
              PESSIMISTIC = 2

              # Use optimistic concurrency control with entity groups by default.
              #
              # This is the only available mode for Cloud Datastore.
              #
              # This mode is also available for Cloud Firestore with Datastore Mode but
              # is not recommended.
              OPTIMISTIC_WITH_ENTITY_GROUPS = 3
            end

            # Point In Time Recovery feature enablement.
            module PointInTimeRecoveryEnablement
              # Not used.
              POINT_IN_TIME_RECOVERY_ENABLEMENT_UNSPECIFIED = 0

              # Reads are supported on selected versions of the data from within the past
              # 7 days:
              #
              # * Reads against any timestamp within the past hour
              # * Reads against 1-minute snapshots beyond 1 hour and within 7 days
              #
              # `version_retention_period` and `earliest_version_time` can be
              # used to determine the supported versions.
              POINT_IN_TIME_RECOVERY_ENABLED = 1

              # Reads are supported on any version of the data from within the past 1
              # hour.
              POINT_IN_TIME_RECOVERY_DISABLED = 2
            end

            # The type of App Engine integration mode.
            module AppEngineIntegrationMode
              # Not used.
              APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED = 0

              # If an App Engine application exists in the same region as this database,
              # App Engine configuration will impact this database. This includes
              # disabling of the application & database, as well as disabling writes to
              # the database.
              ENABLED = 1

              # App Engine has no effect on the ability of this database to serve
              # requests.
              #
              # This is the default setting for databases created with the Firestore API.
              DISABLED = 2
            end

            # The delete protection state of the database.
            module DeleteProtectionState
              # The default value. Delete protection type is not specified
              DELETE_PROTECTION_STATE_UNSPECIFIED = 0

              # Delete protection is disabled
              DELETE_PROTECTION_DISABLED = 1

              # Delete protection is enabled
              DELETE_PROTECTION_ENABLED = 2
            end
          end
        end
      end
    end
  end
end
