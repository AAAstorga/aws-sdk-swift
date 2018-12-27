// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MediaTailor {

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

    public struct ListPlaybackConfigurationsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Items", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Array of playback configurations. This may be all of the available configurations or a subset, depending on the settings you provide and on the total number of configurations stored. 
        public let items: [PlaybackConfiguration]?
        /// Pagination token returned by the GET list request when results overrun the meximum allowed. Use the token to fetch the next page of results.
        public let nextToken: String?

        public init(items: [PlaybackConfiguration]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case nextToken = "NextToken"
        }
    }

    public struct PutPlaybackConfigurationResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "DashConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "HlsConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "SessionInitializationEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string), 
            AWSShapeMember(label: "PlaybackEndpointPrefix", required: false, type: .string)
        ]
        public let transcodeProfileName: String?
        public let name: String?
        public let dashConfiguration: DashConfiguration?
        public let slateAdUrl: String?
        public let hlsConfiguration: HlsConfiguration?
        public let cdnConfiguration: CdnConfiguration?
        public let sessionInitializationEndpointPrefix: String?
        public let adDecisionServerUrl: String?
        public let videoContentSourceUrl: String?
        public let playbackEndpointPrefix: String?

        public init(transcodeProfileName: String? = nil, name: String? = nil, dashConfiguration: DashConfiguration? = nil, slateAdUrl: String? = nil, hlsConfiguration: HlsConfiguration? = nil, cdnConfiguration: CdnConfiguration? = nil, sessionInitializationEndpointPrefix: String? = nil, adDecisionServerUrl: String? = nil, videoContentSourceUrl: String? = nil, playbackEndpointPrefix: String? = nil) {
            self.transcodeProfileName = transcodeProfileName
            self.name = name
            self.dashConfiguration = dashConfiguration
            self.slateAdUrl = slateAdUrl
            self.hlsConfiguration = hlsConfiguration
            self.cdnConfiguration = cdnConfiguration
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
            self.adDecisionServerUrl = adDecisionServerUrl
            self.videoContentSourceUrl = videoContentSourceUrl
            self.playbackEndpointPrefix = playbackEndpointPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case transcodeProfileName = "TranscodeProfileName"
            case name = "Name"
            case dashConfiguration = "DashConfiguration"
            case slateAdUrl = "SlateAdUrl"
            case hlsConfiguration = "HlsConfiguration"
            case cdnConfiguration = "CdnConfiguration"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case videoContentSourceUrl = "VideoContentSourceUrl"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
        }
    }

    public struct PutPlaybackConfigurationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string), 
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure)
        ]
        /// The identifier for the configuration.
        public let name: String?
        /// Associate this playbackConfiguration with a custom transcode profile, overriding MediaTailor's dynamic transcoding defaults. Do not include this field if you have not setup custom profiles with the MediaTailor service team. 
        public let transcodeProfileName: String?
        /// The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25000 characters.
        public let adDecisionServerUrl: String?
        /// The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.
        public let videoContentSourceUrl: String?
        /// The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. 
        public let slateAdUrl: String?
        /// The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. 
        public let cdnConfiguration: CdnConfiguration?

        public init(name: String? = nil, transcodeProfileName: String? = nil, adDecisionServerUrl: String? = nil, videoContentSourceUrl: String? = nil, slateAdUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil) {
            self.name = name
            self.transcodeProfileName = transcodeProfileName
            self.adDecisionServerUrl = adDecisionServerUrl
            self.videoContentSourceUrl = videoContentSourceUrl
            self.slateAdUrl = slateAdUrl
            self.cdnConfiguration = cdnConfiguration
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case transcodeProfileName = "TranscodeProfileName"
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case videoContentSourceUrl = "VideoContentSourceUrl"
            case slateAdUrl = "SlateAdUrl"
            case cdnConfiguration = "CdnConfiguration"
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

    public struct ListPlaybackConfigurationsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "MaxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string)
        ]
        public let maxResults: Int32?
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
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

    public struct PlaybackConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure)
        ]
        public let name: String?
        public let adDecisionServerUrl: String?
        public let videoContentSourceUrl: String?
        public let slateAdUrl: String?
        public let cdnConfiguration: CdnConfiguration?

        public init(name: String? = nil, adDecisionServerUrl: String? = nil, videoContentSourceUrl: String? = nil, slateAdUrl: String? = nil, cdnConfiguration: CdnConfiguration? = nil) {
            self.name = name
            self.adDecisionServerUrl = adDecisionServerUrl
            self.videoContentSourceUrl = videoContentSourceUrl
            self.slateAdUrl = slateAdUrl
            self.cdnConfiguration = cdnConfiguration
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case videoContentSourceUrl = "VideoContentSourceUrl"
            case slateAdUrl = "SlateAdUrl"
            case cdnConfiguration = "CdnConfiguration"
        }
    }

    public struct GetPlaybackConfigurationResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TranscodeProfileName", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "DashConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "SlateAdUrl", required: false, type: .string), 
            AWSShapeMember(label: "HlsConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "CdnConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "SessionInitializationEndpointPrefix", required: false, type: .string), 
            AWSShapeMember(label: "AdDecisionServerUrl", required: false, type: .string), 
            AWSShapeMember(label: "VideoContentSourceUrl", required: false, type: .string), 
            AWSShapeMember(label: "PlaybackEndpointPrefix", required: false, type: .string)
        ]
        /// Associate this playbackConfiguration with a custom transcode profile, overriding MediaTailor's dynamic transcoding defaults. Do not include this field if you have not setup custom profiles with the MediaTailor service team. 
        public let transcodeProfileName: String?
        /// The identifier for the configuration.
        public let name: String?
        /// The configuration object for dash content. 
        public let dashConfiguration: DashConfiguration?
        /// URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. 
        public let slateAdUrl: String?
        /// The configuration for HLS content. 
        public let hlsConfiguration: HlsConfiguration?
        /// The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. 
        public let cdnConfiguration: CdnConfiguration?
        /// The URL that the player uses to initialize a session that uses client-side reporting. 
        public let sessionInitializationEndpointPrefix: String?
        /// The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25000 characters.
        public let adDecisionServerUrl: String?
        /// The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.
        public let videoContentSourceUrl: String?
        /// The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. 
        public let playbackEndpointPrefix: String?

        public init(transcodeProfileName: String? = nil, name: String? = nil, dashConfiguration: DashConfiguration? = nil, slateAdUrl: String? = nil, hlsConfiguration: HlsConfiguration? = nil, cdnConfiguration: CdnConfiguration? = nil, sessionInitializationEndpointPrefix: String? = nil, adDecisionServerUrl: String? = nil, videoContentSourceUrl: String? = nil, playbackEndpointPrefix: String? = nil) {
            self.transcodeProfileName = transcodeProfileName
            self.name = name
            self.dashConfiguration = dashConfiguration
            self.slateAdUrl = slateAdUrl
            self.hlsConfiguration = hlsConfiguration
            self.cdnConfiguration = cdnConfiguration
            self.sessionInitializationEndpointPrefix = sessionInitializationEndpointPrefix
            self.adDecisionServerUrl = adDecisionServerUrl
            self.videoContentSourceUrl = videoContentSourceUrl
            self.playbackEndpointPrefix = playbackEndpointPrefix
        }

        private enum CodingKeys: String, CodingKey {
            case transcodeProfileName = "TranscodeProfileName"
            case name = "Name"
            case dashConfiguration = "DashConfiguration"
            case slateAdUrl = "SlateAdUrl"
            case hlsConfiguration = "HlsConfiguration"
            case cdnConfiguration = "CdnConfiguration"
            case sessionInitializationEndpointPrefix = "SessionInitializationEndpointPrefix"
            case adDecisionServerUrl = "AdDecisionServerUrl"
            case videoContentSourceUrl = "VideoContentSourceUrl"
            case playbackEndpointPrefix = "PlaybackEndpointPrefix"
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

}