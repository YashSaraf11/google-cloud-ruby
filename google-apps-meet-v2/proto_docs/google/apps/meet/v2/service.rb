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
  module Apps
    module Meet
      module V2
        # Request to create a space.
        # @!attribute [rw] space
        #   @return [::Google::Apps::Meet::V2::Space]
        #     Space to be created. As of May 2023, the input space can be empty. Later on
        #     the input space can be non-empty when space configuration is introduced.
        class CreateSpaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to get a space.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the space.
        class GetSpaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to update a space.
        # @!attribute [rw] space
        #   @return [::Google::Apps::Meet::V2::Space]
        #     Required. Space to be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Field mask used to specify the fields to be updated in the space.
        #     If update_mask isn't provided, it defaults to '*' and updates all
        #     fields provided in the request, including deleting fields not set in the
        #     request.
        class UpdateSpaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to end an ongoing conference of a space.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the space.
        class EndActiveConferenceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to get a conference record.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the conference.
        class GetConferenceRecordRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to fetch list of conference records per user.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of conference records to return. The service might
        #     return fewer than this value. If unspecified, at most 25 conference records
        #     are returned. The maximum value is 100; values above 100 are coerced to
        #     100. Maximum might change in the future.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Page token returned from previous List Call.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. User specified filtering condition in [EBNF
        #     format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form).
        #     The following are the filterable fields:
        #
        #     * `space.meeting_code`
        #     * `space.name`
        #     * `start_time`
        #     * `end_time`
        #
        #     For example, `space.meeting_code = "abc-mnop-xyz"`.
        class ListConferenceRecordsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of ListConferenceRecords method.
        # @!attribute [rw] conference_records
        #   @return [::Array<::Google::Apps::Meet::V2::ConferenceRecord>]
        #     List of conferences in one page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to be circulated back for further List call if current List does NOT
        #     include all the Conferences. Unset if all conferences have been returned.
        class ListConferenceRecordsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to get a participant.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the participant.
        class GetParticipantRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to fetch list of participants per conference.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format: `conferenceRecords/{conference_record}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of participants to return. The service might return fewer
        #     than this value.
        #     If unspecified, at most 100 participants are returned.
        #     The maximum value is 250; values above 250 are coerced to 250.
        #     Maximum might change in the future.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page token returned from previous List Call.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. User specified filtering condition in [EBNF
        #     format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form).
        #     The following are the filterable fields:
        #
        #     * `earliest_start_time`
        #     * `latest_end_time`
        #
        #     For example, `latest_end_time IS NULL` returns active participants in
        #     the conference.
        class ListParticipantsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of ListParticipants method.
        # @!attribute [rw] participants
        #   @return [::Array<::Google::Apps::Meet::V2::Participant>]
        #     List of participants in one page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to be circulated back for further List call if current List doesn't
        #     include all the participants. Unset if all participants are returned.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     Total, exact number of `participants`. By default, this field isn't
        #     included in the response. Set the field mask in
        #     [SystemParameterContext](https://cloud.google.com/apis/docs/system-parameters)
        #     to receive this field in the response.
        class ListParticipantsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to get a participant session.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the participant.
        class GetParticipantSessionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to fetch list of participant sessions per conference record, per
        # participant.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `conferenceRecords/{conference_record}/participants/{participant}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of participant sessions to return. The service
        #     might return fewer than this value. If unspecified, at most 100
        #     participants are returned. The maximum value is 250; values above 250 are
        #     coerced to 250. Maximum might change in the future.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Page token returned from previous List Call.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. User specified filtering condition in [EBNF
        #     format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form).
        #     The following are the filterable fields:
        #
        #     * `start_time`
        #     * `end_time`
        #
        #     For example, `end_time IS NULL` returns active participant sessions in
        #     the conference record.
        class ListParticipantSessionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of ListParticipants method.
        # @!attribute [rw] participant_sessions
        #   @return [::Array<::Google::Apps::Meet::V2::ParticipantSession>]
        #     List of participants in one page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to be circulated back for further List call if current List doesn't
        #     include all the participants. Unset if all participants are returned.
        class ListParticipantSessionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetRecording method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the recording.
        class GetRecordingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for ListRecordings method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format: `conferenceRecords/{conference_record}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of recordings to return. The service might return fewer
        #     than this value.
        #     If unspecified, at most 10 recordings are returned.
        #     The maximum value is 100; values above 100 are coerced to 100.
        #     Maximum might change in the future.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page token returned from previous List Call.
        class ListRecordingsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for ListRecordings method.
        # @!attribute [rw] recordings
        #   @return [::Array<::Google::Apps::Meet::V2::Recording>]
        #     List of recordings in one page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to be circulated back for further List call if current List doesn't
        #     include all the recordings. Unset if all recordings are returned.
        class ListRecordingsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for GetTranscript method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the transcript.
        class GetTranscriptRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for ListTranscripts method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format: `conferenceRecords/{conference_record}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of transcripts to return. The service might return fewer
        #     than this value.
        #     If unspecified, at most 10 transcripts are returned.
        #     The maximum value is 100; values above 100 are coerced to 100.
        #     Maximum might change in the future.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page token returned from previous List Call.
        class ListTranscriptsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for ListTranscripts method.
        # @!attribute [rw] transcripts
        #   @return [::Array<::Google::Apps::Meet::V2::Transcript>]
        #     List of transcripts in one page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to be circulated back for further List call if current List doesn't
        #     include all the transcripts. Unset if all transcripts are returned.
        class ListTranscriptsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for GetTranscriptEntry method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the `TranscriptEntry`.
        class GetTranscriptEntryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for ListTranscriptEntries method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `conferenceRecords/{conference_record}/transcripts/{transcript}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of entries to return. The service might return fewer than
        #     this value.
        #     If unspecified, at most 10 entries are returned.
        #     The maximum value is 100; values above 100 are coerced to 100.
        #     Maximum might change in the future.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page token returned from previous List Call.
        class ListTranscriptEntriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for ListTranscriptEntries method.
        # @!attribute [rw] transcript_entries
        #   @return [::Array<::Google::Apps::Meet::V2::TranscriptEntry>]
        #     List of TranscriptEntries in one page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to be circulated back for further List call if current List doesn't
        #     include all the transcript entries. Unset if all entries are returned.
        class ListTranscriptEntriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
