// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension IoT1ClickDevicesService {

    public struct InvokeDeviceMethodRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceMethodParameters", location: .body(locationName: "deviceMethodParameters"), required: false, type: .string), 
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string), 
            AWSShapeMember(label: "DeviceMethod", location: .body(locationName: "deviceMethod"), required: false, type: .structure)
        ]
        /// A JSON encoded string containing the device method request parameters.
        public let deviceMethodParameters: String?
        public let deviceId: String
        /// The device method to invoke.
        public let deviceMethod: DeviceMethod?

        public init(deviceMethodParameters: String? = nil, deviceId: String, deviceMethod: DeviceMethod? = nil) {
            self.deviceMethodParameters = deviceMethodParameters
            self.deviceId = deviceId
            self.deviceMethod = deviceMethod
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethodParameters = "deviceMethodParameters"
            case deviceId = "deviceId"
            case deviceMethod = "deviceMethod"
        }
    }

    public struct DeviceDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", location: .body(locationName: "type"), required: false, type: .string), 
            AWSShapeMember(label: "DeviceId", location: .body(locationName: "deviceId"), required: false, type: .string), 
            AWSShapeMember(label: "Enabled", location: .body(locationName: "enabled"), required: false, type: .boolean), 
            AWSShapeMember(label: "Attributes", location: .body(locationName: "attributes"), required: false, type: .map), 
            AWSShapeMember(label: "RemainingLife", location: .body(locationName: "remainingLife"), required: false, type: .double)
        ]
        /// The type of the device, such as "button".
        public let `type`: String?
        /// The unique identifier of the device.
        public let deviceId: String?
        /// A Boolean value indicating whether or not the device is enabled.
        public let enabled: Bool?
        /// An array of zero or more elements of DeviceAttribute objects
        ///  providing user specified device attributes.
        public let attributes: [String: String]?
        /// A value between 0 and 1 inclusive, representing the fraction of life remaining for
        ///  the device.
        public let remainingLife: Double?

        public init(type: String? = nil, deviceId: String? = nil, enabled: Bool? = nil, attributes: [String: String]? = nil, remainingLife: Double? = nil) {
            self.`type` = `type`
            self.deviceId = deviceId
            self.enabled = enabled
            self.attributes = attributes
            self.remainingLife = remainingLife
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "type"
            case deviceId = "deviceId"
            case enabled = "enabled"
            case attributes = "attributes"
            case remainingLife = "remainingLife"
        }
    }

    public struct GetDeviceMethodsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceMethods", location: .body(locationName: "deviceMethods"), required: false, type: .list)
        ]
        /// List of available device APIs.
        public let deviceMethods: [DeviceMethod]?

        public init(deviceMethods: [DeviceMethod]? = nil) {
            self.deviceMethods = deviceMethods
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethods = "deviceMethods"
        }
    }

    public struct ListDevicesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "DeviceType", location: .querystring(locationName: "deviceType"), required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer)
        ]
        public let nextToken: String?
        public let deviceType: String?
        public let maxResults: Int32?

        public init(nextToken: String? = nil, deviceType: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.deviceType = deviceType
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case deviceType = "deviceType"
            case maxResults = "maxResults"
        }
    }

    public struct ListDevicesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Devices", location: .body(locationName: "devices"), required: false, type: .list), 
            AWSShapeMember(label: "NextToken", location: .body(locationName: "nextToken"), required: false, type: .string)
        ]
        /// A list of devices.
        public let devices: [DeviceDescription]?
        /// The token to retrieve the next set of results.
        public let nextToken: String?

        public init(devices: [DeviceDescription]? = nil, nextToken: String? = nil) {
            self.devices = devices
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case devices = "devices"
            case nextToken = "nextToken"
        }
    }

    public struct ListDeviceEventsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "ToTimeStamp", location: .querystring(locationName: "toTimeStamp"), required: true, type: .timestamp), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string), 
            AWSShapeMember(label: "FromTimeStamp", location: .querystring(locationName: "fromTimeStamp"), required: true, type: .timestamp)
        ]
        public let maxResults: Int32?
        public let toTimeStamp: TimeStamp
        public let nextToken: String?
        public let deviceId: String
        public let fromTimeStamp: TimeStamp

        public init(maxResults: Int32? = nil, toTimeStamp: TimeStamp, nextToken: String? = nil, deviceId: String, fromTimeStamp: TimeStamp) {
            self.maxResults = maxResults
            self.toTimeStamp = toTimeStamp
            self.nextToken = nextToken
            self.deviceId = deviceId
            self.fromTimeStamp = fromTimeStamp
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case toTimeStamp = "toTimeStamp"
            case nextToken = "nextToken"
            case deviceId = "deviceId"
            case fromTimeStamp = "fromTimeStamp"
        }
    }

    public struct InitiateDeviceClaimResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .string)
        ]
        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct UpdateDeviceStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string), 
            AWSShapeMember(label: "Enabled", location: .body(locationName: "enabled"), required: false, type: .boolean)
        ]
        public let deviceId: String
        /// If true, the device is enabled. If false, the device is
        ///  disabled.
        public let enabled: Bool?

        public init(deviceId: String, enabled: Bool? = nil) {
            self.deviceId = deviceId
            self.enabled = enabled
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case enabled = "enabled"
        }
    }

    public struct Attributes: AWSShape {

    }

    public struct Device: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", location: .body(locationName: "type"), required: false, type: .string), 
            AWSShapeMember(label: "Attributes", location: .body(locationName: "attributes"), required: false, type: .structure), 
            AWSShapeMember(label: "DeviceId", location: .body(locationName: "deviceId"), required: false, type: .string)
        ]
        /// The device type, such as "button".
        public let `type`: String?
        /// The user specified attributes associated with the device for an event.
        public let attributes: Attributes?
        /// The unique identifier of the device.
        public let deviceId: String?

        public init(type: String? = nil, attributes: Attributes? = nil, deviceId: String? = nil) {
            self.`type` = `type`
            self.attributes = attributes
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "type"
            case attributes = "attributes"
            case deviceId = "deviceId"
        }
    }

    public struct ListDeviceEventsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Events", location: .body(locationName: "events"), required: false, type: .list), 
            AWSShapeMember(label: "NextToken", location: .body(locationName: "nextToken"), required: false, type: .string)
        ]
        public let events: [DeviceEvent]?
        public let nextToken: String?

        public init(events: [DeviceEvent]? = nil, nextToken: String? = nil) {
            self.events = events
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case events = "events"
            case nextToken = "nextToken"
        }
    }

    public struct InvokeDeviceMethodResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceMethodResponse", location: .body(locationName: "deviceMethodResponse"), required: false, type: .string)
        ]
        /// A JSON encoded string containing the device method response.
        public let deviceMethodResponse: String?

        public init(deviceMethodResponse: String? = nil) {
            self.deviceMethodResponse = deviceMethodResponse
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethodResponse = "deviceMethodResponse"
        }
    }

    public struct DeviceMethod: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceType", location: .body(locationName: "deviceType"), required: false, type: .string), 
            AWSShapeMember(label: "MethodName", location: .body(locationName: "methodName"), required: false, type: .string)
        ]
        /// The type of the device, such as "button".
        public let deviceType: String?
        /// The name of the method applicable to the deviceType.
        public let methodName: String?

        public init(deviceType: String? = nil, methodName: String? = nil) {
            self.deviceType = deviceType
            self.methodName = methodName
        }

        private enum CodingKeys: String, CodingKey {
            case deviceType = "deviceType"
            case methodName = "methodName"
        }
    }

    public struct UpdateDeviceStateResponse: AWSShape {

    }

    public struct UnclaimDeviceResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .string)
        ]
        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct ClaimDevicesByClaimCodeResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Total", location: .body(locationName: "total"), required: false, type: .integer), 
            AWSShapeMember(label: "ClaimCode", location: .body(locationName: "claimCode"), required: false, type: .string)
        ]
        /// The total number of devices associated with the claim code that has been processed
        ///  in the claim request.
        public let total: Int32?
        /// The claim code provided by the device manufacturer.
        public let claimCode: String?

        public init(total: Int32? = nil, claimCode: String? = nil) {
            self.total = total
            self.claimCode = claimCode
        }

        private enum CodingKeys: String, CodingKey {
            case total = "total"
            case claimCode = "claimCode"
        }
    }

    public struct UnclaimDeviceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct DescribeDeviceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct DeviceEvent: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StdEvent", location: .body(locationName: "stdEvent"), required: false, type: .string), 
            AWSShapeMember(label: "Device", location: .body(locationName: "device"), required: false, type: .structure)
        ]
        /// A serialized JSON object representing the device-type specific event.
        public let stdEvent: String?
        /// An object representing the device associated with the event.
        public let device: Device?

        public init(stdEvent: String? = nil, device: Device? = nil) {
            self.stdEvent = stdEvent
            self.device = device
        }

        private enum CodingKeys: String, CodingKey {
            case stdEvent = "stdEvent"
            case device = "device"
        }
    }

    public struct FinalizeDeviceClaimRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct DescribeDeviceResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceDescription", location: .body(locationName: "deviceDescription"), required: false, type: .structure)
        ]
        /// Device details.
        public let deviceDescription: DeviceDescription?

        public init(deviceDescription: DeviceDescription? = nil) {
            self.deviceDescription = deviceDescription
        }

        private enum CodingKeys: String, CodingKey {
            case deviceDescription = "deviceDescription"
        }
    }

    public struct DeviceEventsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Events", location: .body(locationName: "events"), required: false, type: .list), 
            AWSShapeMember(label: "NextToken", location: .body(locationName: "nextToken"), required: false, type: .string)
        ]
        /// An array of zero or more elements describing the event(s) associated with the
        ///  device.
        public let events: [DeviceEvent]?
        /// The token to retrieve the next set of results.
        public let nextToken: String?

        public init(events: [DeviceEvent]? = nil, nextToken: String? = nil) {
            self.events = events
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case events = "events"
            case nextToken = "nextToken"
        }
    }

    public struct GetDeviceMethodsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct Empty: AWSShape {

    }

    public struct DeviceClaimResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .string)
        ]
        /// The device's final claim state.
        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct ClaimDevicesByClaimCodeRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClaimCode", location: .uri(locationName: "claimCode"), required: true, type: .string)
        ]
        public let claimCode: String

        public init(claimCode: String) {
            self.claimCode = claimCode
        }

        private enum CodingKeys: String, CodingKey {
            case claimCode = "claimCode"
        }
    }

    public struct InitiateDeviceClaimRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"), required: true, type: .string)
        ]
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct FinalizeDeviceClaimResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .string)
        ]
        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

}