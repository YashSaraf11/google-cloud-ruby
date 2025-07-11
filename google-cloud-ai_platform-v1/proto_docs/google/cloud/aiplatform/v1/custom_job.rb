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
        # Represents a job that runs custom workloads such as a Docker container or a
        # Python package. A CustomJob can have multiple worker pools and each worker
        # pool can have its own machine and input spec. A CustomJob will be cleaned up
        # once the job enters terminal state (failed or succeeded).
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of a CustomJob.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the CustomJob.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] job_spec
        #   @return [::Google::Cloud::AIPlatform::V1::CustomJobSpec]
        #     Required. Job spec.
        # @!attribute [r] state
        #   @return [::Google::Cloud::AIPlatform::V1::JobState]
        #     Output only. The detailed state of the job.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the CustomJob was created.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the CustomJob for the first time entered the
        #     `JOB_STATE_RUNNING` state.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the CustomJob entered any of the following states:
        #     `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the CustomJob was most recently updated.
        # @!attribute [r] error
        #   @return [::Google::Rpc::Status]
        #     Output only. Only populated when job's state is `JOB_STATE_FAILED` or
        #     `JOB_STATE_CANCELLED`.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels with user-defined metadata to organize CustomJobs.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Customer-managed encryption key options for a CustomJob. If this is set,
        #     then all resources created by the CustomJob will be encrypted with the
        #     provided encryption key.
        # @!attribute [r] web_access_uris
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Output only. URIs for accessing [interactive
        #     shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell)
        #     (one URI for each training node). Only available if
        #     {::Google::Cloud::AIPlatform::V1::CustomJobSpec#enable_web_access job_spec.enable_web_access}
        #     is `true`.
        #
        #     The keys are names of each node in the training job; for example,
        #     `workerpool0-0` for the primary node, `workerpool1-0` for the first node in
        #     the second worker pool, and `workerpool1-1` for the second node in the
        #     second worker pool.
        #
        #     The values are the URIs for each node's interactive shell.
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        class CustomJob
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class WebAccessUrisEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Represents the spec of a CustomJob.
        # @!attribute [rw] persistent_resource_id
        #   @return [::String]
        #     Optional. The ID of the PersistentResource in the same Project and Location
        #     which to run
        #
        #     If this is specified, the job will be run on existing machines held by the
        #     PersistentResource instead of on-demand short-live machines.
        #     The network and CMEK configs on the job should be consistent with those on
        #     the PersistentResource, otherwise, the job will be rejected.
        # @!attribute [rw] worker_pool_specs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::WorkerPoolSpec>]
        #     Required. The spec of the worker pools including machine type and Docker
        #     image. All worker pools except the first one are optional and can be
        #     skipped by providing an empty value.
        # @!attribute [rw] scheduling
        #   @return [::Google::Cloud::AIPlatform::V1::Scheduling]
        #     Scheduling options for a CustomJob.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Specifies the service account for workload run-as account.
        #     Users submitting jobs must have act-as permission on this run-as account.
        #     If unspecified, the [Vertex AI Custom Code Service
        #     Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents)
        #     for the CustomJob's project is used.
        # @!attribute [rw] network
        #   @return [::String]
        #     Optional. The full name of the Compute Engine
        #     [network](/compute/docs/networks-and-firewalls#networks) to which the Job
        #     should be peered. For example, `projects/12345/global/networks/myVPC`.
        #     [Format](/compute/docs/reference/rest/v1/networks/insert)
        #     is of the form `projects/{project}/global/networks/{network}`.
        #     Where \\{project} is a project number, as in `12345`, and \\{network} is a
        #     network name.
        #
        #     To specify this field, you must have already [configured VPC Network
        #     Peering for Vertex
        #     AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering).
        #
        #     If this field is left unspecified, the job is not peered with any network.
        # @!attribute [rw] reserved_ip_ranges
        #   @return [::Array<::String>]
        #     Optional. A list of names for the reserved ip ranges under the VPC network
        #     that can be used for this job.
        #
        #     If set, we will deploy the job within the provided ip ranges. Otherwise,
        #     the job will be deployed to any ip ranges under the provided VPC
        #     network.
        #
        #     Example: ['vertex-ai-ip-range'].
        # @!attribute [rw] psc_interface_config
        #   @return [::Google::Cloud::AIPlatform::V1::PscInterfaceConfig]
        #     Optional. Configuration for PSC-I for CustomJob.
        # @!attribute [rw] base_output_directory
        #   @return [::Google::Cloud::AIPlatform::V1::GcsDestination]
        #     The Cloud Storage location to store the output of this CustomJob or
        #     HyperparameterTuningJob. For HyperparameterTuningJob,
        #     the baseOutputDirectory of
        #     each child CustomJob backing a Trial is set to a subdirectory of name
        #     {::Google::Cloud::AIPlatform::V1::Trial#id id} under its parent
        #     HyperparameterTuningJob's baseOutputDirectory.
        #
        #     The following Vertex AI environment variables will be passed to
        #     containers or python modules when this field is set:
        #
        #       For CustomJob:
        #
        #       * AIP_MODEL_DIR = `<base_output_directory>/model/`
        #       * AIP_CHECKPOINT_DIR = `<base_output_directory>/checkpoints/`
        #       * AIP_TENSORBOARD_LOG_DIR = `<base_output_directory>/logs/`
        #
        #       For CustomJob backing a Trial of HyperparameterTuningJob:
        #
        #       * AIP_MODEL_DIR = `<base_output_directory>/<trial_id>/model/`
        #       * AIP_CHECKPOINT_DIR = `<base_output_directory>/<trial_id>/checkpoints/`
        #       * AIP_TENSORBOARD_LOG_DIR = `<base_output_directory>/<trial_id>/logs/`
        # @!attribute [rw] protected_artifact_location_id
        #   @return [::String]
        #     The ID of the location to store protected artifacts. e.g. us-central1.
        #     Populate only when the location is different than CustomJob location.
        #     List of supported locations:
        #     https://cloud.google.com/vertex-ai/docs/general/locations
        # @!attribute [rw] tensorboard
        #   @return [::String]
        #     Optional. The name of a Vertex AI
        #     {::Google::Cloud::AIPlatform::V1::Tensorboard Tensorboard} resource to which
        #     this CustomJob will upload Tensorboard logs. Format:
        #     `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
        # @!attribute [rw] enable_web_access
        #   @return [::Boolean]
        #     Optional. Whether you want Vertex AI to enable [interactive shell
        #     access](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell)
        #     to training containers.
        #
        #     If set to `true`, you can access interactive shells at the URIs given
        #     by
        #     {::Google::Cloud::AIPlatform::V1::CustomJob#web_access_uris CustomJob.web_access_uris}
        #     or
        #     {::Google::Cloud::AIPlatform::V1::Trial#web_access_uris Trial.web_access_uris}
        #     (within
        #     {::Google::Cloud::AIPlatform::V1::HyperparameterTuningJob#trials HyperparameterTuningJob.trials}).
        # @!attribute [rw] enable_dashboard_access
        #   @return [::Boolean]
        #     Optional. Whether you want Vertex AI to enable access to the customized
        #     dashboard in training chief container.
        #
        #     If set to `true`, you can access the dashboard at the URIs given
        #     by
        #     {::Google::Cloud::AIPlatform::V1::CustomJob#web_access_uris CustomJob.web_access_uris}
        #     or
        #     {::Google::Cloud::AIPlatform::V1::Trial#web_access_uris Trial.web_access_uris}
        #     (within
        #     {::Google::Cloud::AIPlatform::V1::HyperparameterTuningJob#trials HyperparameterTuningJob.trials}).
        # @!attribute [rw] experiment
        #   @return [::String]
        #     Optional. The Experiment associated with this job.
        #     Format:
        #     `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}`
        # @!attribute [rw] experiment_run
        #   @return [::String]
        #     Optional. The Experiment Run associated with this job.
        #     Format:
        #     `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}-{experiment-run-name}`
        # @!attribute [rw] models
        #   @return [::Array<::String>]
        #     Optional. The name of the Model resources for which to generate a mapping
        #     to artifact URIs. Applicable only to some of the Google-provided custom
        #     jobs. Format: `projects/{project}/locations/{location}/models/{model}`
        #
        #     In order to retrieve a specific version of the model, also provide
        #     the version ID or version alias.
        #       Example: `projects/{project}/locations/{location}/models/{model}@2`
        #                  or
        #                `projects/{project}/locations/{location}/models/{model}@golden`
        #     If no version ID or alias is specified, the "default" version will be
        #     returned. The "default" version alias is created for the first version of
        #     the model, and can be moved to other versions later on. There will be
        #     exactly one default version.
        class CustomJobSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the spec of a worker pool in a job.
        # @!attribute [rw] container_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ContainerSpec]
        #     The custom container task.
        #
        #     Note: The following fields are mutually exclusive: `container_spec`, `python_package_spec`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] python_package_spec
        #   @return [::Google::Cloud::AIPlatform::V1::PythonPackageSpec]
        #     The Python packaged task.
        #
        #     Note: The following fields are mutually exclusive: `python_package_spec`, `container_spec`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] machine_spec
        #   @return [::Google::Cloud::AIPlatform::V1::MachineSpec]
        #     Optional. Immutable. The specification of a single machine.
        # @!attribute [rw] replica_count
        #   @return [::Integer]
        #     Optional. The number of worker replicas to use for this worker pool.
        # @!attribute [rw] nfs_mounts
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::NfsMount>]
        #     Optional. List of NFS mount spec.
        # @!attribute [rw] disk_spec
        #   @return [::Google::Cloud::AIPlatform::V1::DiskSpec]
        #     Disk spec.
        class WorkerPoolSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The spec of a Container.
        # @!attribute [rw] image_uri
        #   @return [::String]
        #     Required. The URI of a container image in the Container Registry that is to
        #     be run on each worker replica.
        # @!attribute [rw] command
        #   @return [::Array<::String>]
        #     The command to be invoked when the container is started.
        #     It overrides the entrypoint instruction in Dockerfile when provided.
        # @!attribute [rw] args
        #   @return [::Array<::String>]
        #     The arguments to be passed when starting the container.
        # @!attribute [rw] env
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::EnvVar>]
        #     Environment variables to be passed to the container.
        #     Maximum limit is 100.
        class ContainerSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The spec of a Python packaged code.
        # @!attribute [rw] executor_image_uri
        #   @return [::String]
        #     Required. The URI of a container image in Artifact Registry that will run
        #     the provided Python package. Vertex AI provides a wide range of executor
        #     images with pre-installed packages to meet users' various use cases. See
        #     the list of [pre-built containers for
        #     training](https://cloud.google.com/vertex-ai/docs/training/pre-built-containers).
        #     You must use an image from this list.
        # @!attribute [rw] package_uris
        #   @return [::Array<::String>]
        #     Required. The Google Cloud Storage location of the Python package files
        #     which are the training program and its dependent packages. The maximum
        #     number of package URIs is 100.
        # @!attribute [rw] python_module
        #   @return [::String]
        #     Required. The Python module name to run after installing the packages.
        # @!attribute [rw] args
        #   @return [::Array<::String>]
        #     Command line arguments to be passed to the Python task.
        # @!attribute [rw] env
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::EnvVar>]
        #     Environment variables to be passed to the python module.
        #     Maximum limit is 100.
        class PythonPackageSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # All parameters related to queuing and scheduling of custom jobs.
        # @!attribute [rw] timeout
        #   @return [::Google::Protobuf::Duration]
        #     Optional. The maximum job running time. The default is 7 days.
        # @!attribute [rw] restart_job_on_worker_restart
        #   @return [::Boolean]
        #     Optional. Restarts the entire CustomJob if a worker gets restarted.
        #     This feature can be used by distributed training jobs that are not
        #     resilient to workers leaving and joining a job.
        # @!attribute [rw] strategy
        #   @return [::Google::Cloud::AIPlatform::V1::Scheduling::Strategy]
        #     Optional. This determines which type of scheduling strategy to use.
        # @!attribute [rw] disable_retries
        #   @return [::Boolean]
        #     Optional. Indicates if the job should retry for internal errors after the
        #     job starts running. If true, overrides
        #     `Scheduling.restart_job_on_worker_restart` to false.
        # @!attribute [rw] max_wait_duration
        #   @return [::Google::Protobuf::Duration]
        #     Optional. This is the maximum duration that a job will wait for the
        #     requested resources to be provisioned if the scheduling strategy is set to
        #     [Strategy.DWS_FLEX_START].
        #     If set to 0, the job will wait indefinitely. The default is 24 hours.
        class Scheduling
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Optional. This determines which type of scheduling strategy to use. Right
          # now users have two options such as STANDARD which will use regular on
          # demand resources to schedule the job, the other is SPOT which would
          # leverage spot resources alongwith regular resources to schedule
          # the job.
          module Strategy
            # Strategy will default to STANDARD.
            STRATEGY_UNSPECIFIED = 0

            # Deprecated. Regular on-demand provisioning strategy.
            ON_DEMAND = 1

            # Deprecated. Low cost by making potential use of spot resources.
            LOW_COST = 2

            # Standard provisioning strategy uses regular on-demand resources.
            STANDARD = 3

            # Spot provisioning strategy uses spot resources.
            SPOT = 4

            # Flex Start strategy uses DWS to queue for resources.
            FLEX_START = 6
          end
        end
      end
    end
  end
end
