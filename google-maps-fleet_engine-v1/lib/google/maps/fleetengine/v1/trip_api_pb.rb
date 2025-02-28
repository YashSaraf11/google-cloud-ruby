# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/fleetengine/v1/trip_api.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/api/routing_pb'
require 'google/maps/fleetengine/v1/fleetengine_pb'
require 'google/maps/fleetengine/v1/header_pb'
require 'google/maps/fleetengine/v1/trips_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n)google/maps/fleetengine/v1/trip_api.proto\x12\x13maps.fleetengine.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x18google/api/routing.proto\x1a,google/maps/fleetengine/v1/fleetengine.proto\x1a\'google/maps/fleetengine/v1/header.proto\x1a&google/maps/fleetengine/v1/trips.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc4\x01\n\x11\x43reateTripRequest\x12\x32\n\x06header\x18\x01 \x01(\x0b\x32\".maps.fleetengine.v1.RequestHeader\x12\x37\n\x06parent\x18\x03 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x66leetengine.googleapis.com/Trip\x12\x14\n\x07trip_id\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12,\n\x04trip\x18\x04 \x01(\x0b\x32\x19.maps.fleetengine.v1.TripB\x03\xe0\x41\x02\"\x82\x04\n\x0eGetTripRequest\x12\x32\n\x06header\x18\x01 \x01(\x0b\x32\".maps.fleetengine.v1.RequestHeader\x12\x35\n\x04name\x18\x03 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x66leetengine.googleapis.com/Trip\x12+\n\x04view\x18\x0b \x01(\x0e\x32\x1d.maps.fleetengine.v1.TripView\x12\x41\n\x1d\x63urrent_route_segment_version\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12?\n\x1bremaining_waypoints_version\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x42\n\x11route_format_type\x18\x08 \x01(\x0e\x32\'.maps.fleetengine.v1.PolylineFormatType\x12I\n%current_route_segment_traffic_version\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x45\n!remaining_waypoints_route_version\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x83\x01\n\x11\x44\x65leteTripRequest\x12\x37\n\x06header\x18\x01 \x01(\x0b\x32\".maps.fleetengine.v1.RequestHeaderB\x03\xe0\x41\x01\x12\x35\n\x04name\x18\x02 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x66leetengine.googleapis.com/Trip\"\xcd\x02\n\x19ReportBillableTripRequest\x12\x11\n\x04name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x19\n\x0c\x63ountry_code\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12@\n\x08platform\x18\x05 \x01(\x0e\x32..maps.fleetengine.v1.BillingPlatformIdentifier\x12\x13\n\x0brelated_ids\x18\x06 \x03(\t\x12R\n\rsolution_type\x18\x07 \x01(\x0e\x32;.maps.fleetengine.v1.ReportBillableTripRequest.SolutionType\"W\n\x0cSolutionType\x12\x1d\n\x19SOLUTION_TYPE_UNSPECIFIED\x10\x00\x12(\n$ON_DEMAND_RIDESHARING_AND_DELIVERIES\x10\x01\"\xbe\x01\n\x11UpdateTripRequest\x12\x32\n\x06header\x18\x01 \x01(\x0b\x32\".maps.fleetengine.v1.RequestHeader\x12\x11\n\x04name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12,\n\x04trip\x18\x04 \x01(\x0b\x32\x19.maps.fleetengine.v1.TripB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"\xe9\x01\n\x12SearchTripsRequest\x12\x32\n\x06header\x18\x01 \x01(\x0b\x32\".maps.fleetengine.v1.RequestHeader\x12\x13\n\x06parent\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\nvehicle_id\x18\x04 \x01(\t\x12\x19\n\x11\x61\x63tive_trips_only\x18\x05 \x01(\x08\x12\x11\n\tpage_size\x18\x06 \x01(\x05\x12\x12\n\npage_token\x18\x07 \x01(\t\x12\x34\n\x11minimum_staleness\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\"X\n\x13SearchTripsResponse\x12(\n\x05trips\x18\x01 \x03(\x0b\x32\x19.maps.fleetengine.v1.Trip\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xf7\x08\n\x0bTripService\x12\xa8\x01\n\nCreateTrip\x12&.maps.fleetengine.v1.CreateTripRequest\x1a\x19.maps.fleetengine.v1.Trip\"W\x82\xd3\xe4\x93\x02&\"\x1e/v1/{parent=providers/*}/trips:\x04trip\x8a\xd3\xe4\x93\x02%\x12#\n\x06parent\x12\x19{provider_id=providers/*}\x12\x9a\x01\n\x07GetTrip\x12#.maps.fleetengine.v1.GetTripRequest\x1a\x19.maps.fleetengine.v1.Trip\"O\x82\xd3\xe4\x93\x02 \x12\x1e/v1/{name=providers/*/trips/*}\x8a\xd3\xe4\x93\x02#\x12!\n\x04name\x12\x19{provider_id=providers/*}\x12\xa4\x01\n\nDeleteTrip\x12&.maps.fleetengine.v1.DeleteTripRequest\x1a\x16.google.protobuf.Empty\"V\xda\x41\x04name\x82\xd3\xe4\x93\x02 *\x1e/v1/{name=providers/*/trips/*}\x8a\xd3\xe4\x93\x02#\x12!\n\x04name\x12\x19{provider_id=providers/*}\x12\xbf\x01\n\x12ReportBillableTrip\x12..maps.fleetengine.v1.ReportBillableTripRequest\x1a\x16.google.protobuf.Empty\"a\x82\xd3\xe4\x93\x02\x32\"-/v1/{name=providers/*/billableTrips/*}:report:\x01*\x8a\xd3\xe4\x93\x02#\x12!\n\x04name\x12\x19{provider_id=providers/*}\x12\xbd\x01\n\x0bSearchTrips\x12\'.maps.fleetengine.v1.SearchTripsRequest\x1a(.maps.fleetengine.v1.SearchTripsResponse\"[\x82\xd3\xe4\x93\x02*\"%/v1/{parent=providers/*}/trips:search:\x01*\x8a\xd3\xe4\x93\x02%\x12#\n\x06parent\x12\x19{provider_id=providers/*}\x12\xa6\x01\n\nUpdateTrip\x12&.maps.fleetengine.v1.UpdateTripRequest\x1a\x19.maps.fleetengine.v1.Trip\"U\x82\xd3\xe4\x93\x02&\x1a\x1e/v1/{name=providers/*/trips/*}:\x04trip\x8a\xd3\xe4\x93\x02#\x12!\n\x04name\x12\x19{provider_id=providers/*}\x1aN\xca\x41\x1a\x66leetengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xd3\x01\n\x1e\x63om.google.maps.fleetengine.v1B\x07TripApiP\x01ZFcloud.google.com/go/maps/fleetengine/apiv1/fleetenginepb;fleetenginepb\xa2\x02\x03\x43\x46\x45\xaa\x02\x1aGoogle.Maps.FleetEngine.V1\xca\x02\x1aGoogle\\Maps\\FleetEngine\\V1\xea\x02\x1dGoogle::Maps::FleetEngine::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["maps.fleetengine.v1.RequestHeader", "google/maps/fleetengine/v1/header.proto"],
    ["maps.fleetengine.v1.Trip", "google/maps/fleetengine/v1/trips.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Maps
    module FleetEngine
      module V1
        CreateTripRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.CreateTripRequest").msgclass
        GetTripRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.GetTripRequest").msgclass
        DeleteTripRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.DeleteTripRequest").msgclass
        ReportBillableTripRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.ReportBillableTripRequest").msgclass
        ReportBillableTripRequest::SolutionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.ReportBillableTripRequest.SolutionType").enummodule
        UpdateTripRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.UpdateTripRequest").msgclass
        SearchTripsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.SearchTripsRequest").msgclass
        SearchTripsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.SearchTripsResponse").msgclass
      end
    end
  end
end
