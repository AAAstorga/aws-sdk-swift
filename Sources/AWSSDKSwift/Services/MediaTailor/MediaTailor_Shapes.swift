// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MediaTailor {

    public struct ListPlaybackConfigurationsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "MaxResults"), required: false, type: .integer)
        ]
        public let nextToken: String?
        public let maxResults: Int32?

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
        }
    }

    public struct PutPlaybackConfigurationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string)
        ]
        /// The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.
        public let videoContentSourceUrl: String?
        /// The identifier for the configuration.
        public let name: String?
        /// The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25000 characters.
        public let adDecisionServerUrl: String?
        /// The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. 
        public let cdnConfiguration: CdnConfiguration?
        /// The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. 
        public let slateAdUrl: String?
        /// Associate this playbackConfiguration with a custom transcode profile, overriding MediaTailor's dynamic transcoding defaults. Do not include this field if you have not setup custom profiles with the MediaTailor service team. 
        public let transcodeProfileName: String?

        public init(videoContentSourceUrl: String? = nil, name: String? = nil, adDecisionServerUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil, slateAdUrl: String? = nil, transcodeProfileName: String? = nil) {
            self.videoContentSourceUrl = videoContentSourceUrl
            self.name = name
            self.adDecisionServerUrl = adDecisionServerUrl
            self.cdnConfiguration = cdnConfiguration
            self.slateAdUrl = slateAdUrl
            self.transcodeProfileName = transcodeProfileName
        }

        private enum CodingKeys: String, CodingKey {
            case videoContentSourceUrl = "VideoContentSourceUrl"
            case name = "Name"
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case cdnConfiguration = "CdnConfiguration"
            case slateAdUrl = "SlateAdUrl"
            case transcodeProfileName = "TranscodeProfileName"
        }
    }

    public struct HlsConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ManifestEndpointPrefix", required: false, type: .string)
        ]
        /// The URL that is used to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.
        public let manifestEndpointPrefix: String?

        public init(manifestEndpointPrefix: String? = nil) {
            self.manifestEndpointPrefix = manifestEndpointPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case manifestEndpointPrefix = "ManifestEndpointPrefix"
        }
    }

    public struct CdnConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContentSegmentUrlPrefix", required: false, type: .string), 
            AWSShapeMember(label: "AdSegmentUrlPrefix", required: false, type: .string)
        ]
        /// A content delivery network (CDN) to cache content segments, so that content requests don’t always have to go to the origin server. First, create a rule in your CDN for the content segment origin server. Then specify the rule's name in this ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for content segments.
        public let contentSegmentUrlPrefix: String?
        /// A non-default content delivery network (CDN) to serve ad segments. By default, AWS Elemental MediaTailor uses Amazon CloudFront with default cache settings as its CDN for ad segments. To set up an alternate CDN, create a rule in your CDN for the following origin: ads.mediatailor.&lt;region>.amazonaws.com. Then specify the rule's name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for ad segments.
        public let adSegmentUrlPrefix: String?

        public init(contentSegmentUrlPrefix: String? = nil, adSegmentUrlPrefix: String? = nil) {
            self.contentSegmentUrlPrefix = contentSegmentUrlPrefix
            self.adSegmentUrlPrefix = adSegmentUrlPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case contentSegmentUrlPrefix = "ContentSegmentUrlPrefix"
            case adSegmentUrlPrefix = "AdSegmentUrlPrefix"
        }
    }

    public struct GetPlaybackConfigurationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "Name"), required: true, type: .string)
        ]
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct PlaybackConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string), 
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string)
        ]
        public let slateAdUrl: String?
        public let name: String?
        public let cdnConfiguration: CdnConfiguration?
        public let videoContentSourceUrl: String?
        public let adDecisionServerUrl: String?

        public init(slateAdUrl: String? = nil, name: String? = nil, cdnConfiguration: CdnConfiguration? = nil, videoContentSourceUrl: String? = nil, adDecisionServerUrl: String? = nil) {
            self.slateAdUrl = slateAdUrl
            self.name = name
            self.cdnConfiguration = cdnConfiguration
            self.videoContentSourceUrl = videoContentSourceUrl
            self.adDecisionServerUrl = adDecisionServerUrl
        }

        private enum CodingKeys: String, CodingKey {
            case slateAdUrl = "SlateAdUrl"
            case name = "Name"
            case cdnConfiguration = "CdnConfiguration"
            case videoContentSourceUrl = "VideoContentSourceUrl"
            case adDecisionServerUrl = "AdDecisionServerUrl"
        }
    }

    public struct ListPlaybackConfigurationsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Items", required: false, type: .list)
        ]
        /// Pagination token returned by the GET list request when results overrun the meximum allowed. Use the token to fetch the next page of results.
        public let nextToken: String?
        /// Array of playback configurations. This may be all of the available configurations or a subset, depending on the settings you provide and on the total number of configurations stored. 
        public let items: [PlaybackConfiguration]?

        public init(nextToken: String? = nil, items: [PlaybackConfiguration]? = nil) {
            self.nextToken = nextToken
            self.items = items
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case items = "Items"
        }
    }

    public struct DeletePlaybackConfigurationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "Name"), required: true, type: .string)
        ]
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct GetPlaybackConfigurationResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "HlsConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string), 
            AWSShapeMember(label: "DashConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "PlaybackEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "SessionInitializationEndpointPrefix", required: false, type: .string)
        ]
        /// The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. 
        public let cdnConfiguration: CdnConfiguration?
        /// The configuration for HLS content. 
        public let hlsConfiguration: HlsConfiguration?
        /// Associate this playbackConfiguration with a custom transcode profile, overriding MediaTailor's dynamic transcoding defaults. Do not include this field if you have not setup custom profiles with the MediaTailor service team. 
        public let transcodeProfileName: String?
        /// The configuration object for dash content. 
        public let dashConfiguration: DashConfiguration?
        /// The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25000 characters.
        public let adDecisionServerUrl: String?
        /// URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. 
        public let slateAdUrl: String?
        /// The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. 
        public let playbackEndpointPrefix: String?
        /// The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.
        public let videoContentSourceUrl: String?
        /// The identifier for the configuration.
        public let name: String?
        /// The URL that the player uses to initialize a session that uses client-side reporting. 
        public let sessionInitializationEndpointPrefix: String?

        public init(cdnConfiguration: CdnConfiguration? = nil, hlsConfiguration: HlsConfiguration? = nil, transcodeProfileName: String? = nil, dashConfiguration: DashConfiguration? = nil, adDecisionServerUrl: String? = nil, slateAdUrl: String? = nil, playbackEndpointPrefix: String? = nil, videoContentSourceUrl: String? = nil, name: String? = nil, sessionInitializationEndpointPrefix: String? = nil) {
            self.cdnConfiguration = cdnConfiguration
            self.hlsConfiguration = hlsConfiguration
            self.transcodeProfileName = transcodeProfileName
            self.dashConfiguration = dashConfiguration
            self.adDecisionServerUrl = adDecisionServerUrl
            self.slateAdUrl = slateAdUrl
            self.playbackEndpointPrefix = playbackEndpointPrefix
            self.videoContentSourceUrl = videoContentSourceUrl
            self.name = name
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case cdnConfiguration = "CdnConfiguration"
            case hlsConfiguration = "HlsConfiguration"
            case transcodeProfileName = "TranscodeProfileName"
            case dashConfiguration = "DashConfiguration"
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case slateAdUrl = "SlateAdUrl"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
            case videoContentSourceUrl = "VideoContentSourceUrl"
            case name = "Name"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
        }
    }

    public struct DashConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ManifestEndpointPrefix", required: false, type: .string)
        ]
        /// The URL that is used to initiate a playback session for devices that support DASH. 
        public let manifestEndpointPrefix: String?

        public init(manifestEndpointPrefix: String? = nil) {
            self.manifestEndpointPrefix = manifestEndpointPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case manifestEndpointPrefix = "ManifestEndpointPrefix"
        }
    }

    public struct PutPlaybackConfigurationResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "SessionInitializationEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "HlsConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "DashConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "PlaybackEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string)
        ]
        public let videoContentSourceUrl: String?
        public let cdnConfiguration: CdnConfiguration?
        public let sessionInitializationEndpointPrefix: String?
        public let adDecisionServerUrl: String?
        public let hlsConfiguration: HlsConfiguration?
        public let transcodeProfileName: String?
        public let name: String?
        public let dashConfiguration: DashConfiguration?
        public let playbackEndpointPrefix: String?
        public let slateAdUrl: String?

        public init(videoContentSourceUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil, sessionInitializationEndpointPrefix: String? = nil, adDecisionServerUrl: String? = nil, hlsConfiguration: HlsConfiguration? = nil, transcodeProfileName: String? = nil, name: String? = nil, dashConfiguration: DashConfiguration? = nil, playbackEndpointPrefix: String? = nil, slateAdUrl: String? = nil) {
            self.videoContentSourceUrl = videoContentSourceUrl
            self.cdnConfiguration = cdnConfiguration
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
            self.adDecisionServerUrl = adDecisionServerUrl
            self.hlsConfiguration = hlsConfiguration
            self.transcodeProfileName = transcodeProfileName
            self.name = name
            self.dashConfiguration = dashConfiguration
            self.playbackEndpointPrefix = playbackEndpointPrefix
            self.slateAdUrl = slateAdUrl
        }

        private enum CodingKeys: String, CodingKey {
            case videoContentSourceUrl = "VideoContentSourceUrl"
            case cdnConfiguration = "CdnConfiguration"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case hlsConfiguration = "HlsConfiguration"
            case transcodeProfileName = "TranscodeProfileName"
            case name = "Name"
            case dashConfiguration = "DashConfiguration"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
            case slateAdUrl = "SlateAdUrl"
        }
    }

}