// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension CostandUsageReportService {

    public struct ReportDefinition: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "S3Prefix", required: true, type: .string), 
            AWSShapeMember(label: "S3Bucket", required: true, type: .string), 
            AWSShapeMember(label: "AdditionalArtifacts", required: false, type: .list), 
            AWSShapeMember(label: "ReportName", required: true, type: .string), 
            AWSShapeMember(label: "AdditionalSchemaElements", required: true, type: .list), 
            AWSShapeMember(label: "TimeUnit", required: true, type: .enum), 
            AWSShapeMember(label: "Format", required: true, type: .enum), 
            AWSShapeMember(label: "S3Region", required: true, type: .enum), 
            AWSShapeMember(label: "Compression", required: true, type: .enum)
        ]
        public let s3Prefix: String
        public let s3Bucket: String
        public let additionalArtifacts: [AdditionalArtifact]?
        public let reportName: String
        public let additionalSchemaElements: [SchemaElement]
        public let timeUnit: TimeUnit
        public let format: ReportFormat
        public let s3Region: AWSRegion
        public let compression: CompressionFormat

        public init(s3Prefix: String, s3Bucket: String, additionalArtifacts: [AdditionalArtifact]? = nil, reportName: String, additionalSchemaElements: [SchemaElement], timeUnit: TimeUnit, format: ReportFormat, s3Region: AWSRegion, compression: CompressionFormat) {
            self.s3Prefix = s3Prefix
            self.s3Bucket = s3Bucket
            self.additionalArtifacts = additionalArtifacts
            self.reportName = reportName
            self.additionalSchemaElements = additionalSchemaElements
            self.timeUnit = timeUnit
            self.format = format
            self.s3Region = s3Region
            self.compression = compression
        }

        private enum CodingKeys: String, CodingKey {
            case s3Prefix = "S3Prefix"
            case s3Bucket = "S3Bucket"
            case additionalArtifacts = "AdditionalArtifacts"
            case reportName = "ReportName"
            case additionalSchemaElements = "AdditionalSchemaElements"
            case timeUnit = "TimeUnit"
            case format = "Format"
            case s3Region = "S3Region"
            case compression = "Compression"
        }
    }

    public struct DescribeReportDefinitionsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ReportDefinitions", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        public let reportDefinitions: [ReportDefinition]?
        public let nextToken: String?

        public init(reportDefinitions: [ReportDefinition]? = nil, nextToken: String? = nil) {
            self.reportDefinitions = reportDefinitions
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case reportDefinitions = "ReportDefinitions"
            case nextToken = "NextToken"
        }
    }

    public enum ReportFormat: String, CustomStringConvertible, Codable {
        case textorcsv = "textORcsv"
        public var description: String { return self.rawValue }
    }

    public struct PutReportDefinitionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ReportDefinition", required: true, type: .structure)
        ]
        public let reportDefinition: ReportDefinition

        public init(reportDefinition: ReportDefinition) {
            self.reportDefinition = reportDefinition
        }

        private enum CodingKeys: String, CodingKey {
            case reportDefinition = "ReportDefinition"
        }
    }

    public struct DeleteReportDefinitionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResponseMessage", required: false, type: .string)
        ]
        public let responseMessage: String?

        public init(responseMessage: String? = nil) {
            self.responseMessage = responseMessage
        }

        private enum CodingKeys: String, CodingKey {
            case responseMessage = "ResponseMessage"
        }
    }

    public struct PutReportDefinitionResponse: AWSShape {

    }

    public enum AdditionalArtifact: String, CustomStringConvertible, Codable {
        case redshift = "REDSHIFT"
        case quicksight = "QUICKSIGHT"
        public var description: String { return self.rawValue }
    }

    public enum TimeUnit: String, CustomStringConvertible, Codable {
        case hourly = "HOURLY"
        case daily = "DAILY"
        public var description: String { return self.rawValue }
    }

    public enum SchemaElement: String, CustomStringConvertible, Codable {
        case resources = "RESOURCES"
        public var description: String { return self.rawValue }
    }

    public struct DeleteReportDefinitionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ReportName", required: false, type: .string)
        ]
        public let reportName: String?

        public init(reportName: String? = nil) {
            self.reportName = reportName
        }

        private enum CodingKeys: String, CodingKey {
            case reportName = "ReportName"
        }
    }

    public enum AWSRegion: String, CustomStringConvertible, Codable {
        case usEast1 = "us-east-1"
        case usWest1 = "us-west-1"
        case usWest2 = "us-west-2"
        case euCentral1 = "eu-central-1"
        case euWest1 = "eu-west-1"
        case apSoutheast1 = "ap-southeast-1"
        case apSoutheast2 = "ap-southeast-2"
        case apNortheast1 = "ap-northeast-1"
        public var description: String { return self.rawValue }
    }

    public enum CompressionFormat: String, CustomStringConvertible, Codable {
        case zip = "ZIP"
        case gzip = "GZIP"
        public var description: String { return self.rawValue }
    }

    public struct DescribeReportDefinitionsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer)
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

}