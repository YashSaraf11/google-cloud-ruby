# Changelog

### 0.9.1 (2025-06-05)

#### Documentation

* fix various typos in commentary ([#30486](https://github.com/googleapis/google-cloud-ruby/issues/30486)) 

### 0.9.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 0.8.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.8.0 (2025-04-21)

#### Features

* A new field `bytes_failed` is added to message `v1beta.TransferCounters` 
* A new field `error_summary` is added to message `v1beta.TransferOperationMetadata` 
* A new field `metadata_options` is added to message `v1beta.ExportDataRequest` 
* A new field `metadata_options` is added to message `v1beta.ImportDataRequest` 
* A new field `objects_failed` is added to message `v1beta.TransferCounters` 
* A new message `TransferErrorLogEntry` is added 
* A new message `TransferErrorSummary` is added 
* A new message `TransferMetadataOptions` is added 
* A new value `REPAIRING` is added to enum `State` ([#29450](https://github.com/googleapis/google-cloud-ruby/issues/29450)) 
* Field `daos_version` in message `v1beta.Instance` is Deprecated 
#### Documentation

* fields `directory_stripe_level` `deployment_type` `file_stripe_level` in message `v1beta.Instance` documented as immutable 

### 0.7.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28825](https://github.com/googleapis/google-cloud-ruby/issues/28825))

#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28825](https://github.com/googleapis/google-cloud-ruby/issues/28825)) 

### 0.6.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.5.1 (2025-01-08)

#### Documentation

* Fixed a few cross-reference links ([#28154](https://github.com/googleapis/google-cloud-ruby/issues/28154)) 

### 0.5.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 
* Support for Instance deployment type ([#27726](https://github.com/googleapis/google-cloud-ruby/issues/27726)) 

### 0.4.0 (2024-10-07)

#### Features

* Support for the UPGRADING instance state 
#### Documentation

* Various updates to documentation content and formatting 

### 0.3.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27010](https://github.com/googleapis/google-cloud-ruby/issues/27010)) 

### 0.3.0 (2024-08-02)

#### Features

* Support for instance stripe level settings ([#26559](https://github.com/googleapis/google-cloud-ruby/issues/26559)) 

### 0.2.0 (2024-07-08)

#### Features

* Support the service_account parameter when importing and exporting data ([#26261](https://github.com/googleapis/google-cloud-ruby/issues/26261)) 

### 0.1.0 (2024-05-29)

#### Features

* Initial generation of google-cloud-parallelstore-v1beta ([#25984](https://github.com/googleapis/google-cloud-ruby/issues/25984)) 

## Release History
