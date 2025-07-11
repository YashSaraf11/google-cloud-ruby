# Copyright 2025 Google LLC
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

# [START secretmanager_disable_secret_delayed_destroy]
require "google/cloud/secret_manager"

##
# Disables a secret delayed destroy
#
# @param project_id [String] Your Google Cloud project (e.g. "my-project")
# @param secret_id [String] Your secret name (e.g. "my-secret")
#
def disable_secret_delayed_destroy project_id:, secret_id:
  # Create a Secret Manager client.
  client = Google::Cloud::SecretManager.secret_manager_service

  # Build the resource name of the secret.
  name = client.secret_path project: project_id, secret: secret_id

  # Disable the secret's delayed destroy.
  secret = client.update_secret(
    secret: {
      name: name
    },
    update_mask: {
      paths: ["version_destroy_ttl"]
    }
  )

  # Print a success message.
  puts "Disabled secret delayed destroy: #{secret.name}"
end
# [END secretmanager_disable_secret_delayed_destroy]
