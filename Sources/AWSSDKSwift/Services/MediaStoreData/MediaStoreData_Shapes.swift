// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MediaStoreData {

    public enum ItemType: String, CustomStringConvertible, Codable {
        case object = "OBJECT"
        case folder = "FOLDER"
        public var description: String { return self.rawValue }
    }

    public struct DeleteObjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Path", location: .uri(locationName: "Path"), required: true, type: .string)
        ]
        /// The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
        public let path: String

        public init(path: String) {
            self.path = path
        }

        private enum CodingKeys: String, CodingKey {
            case path = "Path"
        }
    }

    public struct Item: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "ETag", required: false, type: .string), 
            AWSShapeMember(label: "LastModified", required: false, type: .timestamp), 
            AWSShapeMember(label: "Type", required: false, type: .enum), 
            AWSShapeMember(label: "ContentType", required: false, type: .string), 
            AWSShapeMember(label: "ContentLength", required: false, type: .long)
        ]
        /// The name of the item.
        public let name: String?
        /// The ETag that represents a unique instance of the item.
        public let eTag: String?
        /// The date and time that the item was last modified.
        public let lastModified: TimeStamp?
        /// The item type (folder or object).
        public let `type`: ItemType?
        /// The content type of the item.
        public let contentType: String?
        /// The length of the item in bytes.
        public let contentLength: Int64?

        public init(name: String? = nil, eTag: String? = nil, lastModified: TimeStamp? = nil, type: ItemType? = nil, contentType: String? = nil, contentLength: Int64? = nil) {
            self.name = name
            self.eTag = eTag
            self.lastModified = lastModified
            self.`type` = `type`
            self.contentType = contentType
            self.contentLength = contentLength
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case eTag = "ETag"
            case lastModified = "LastModified"
            case `type` = "Type"
            case contentType = "ContentType"
            case contentLength = "ContentLength"
        }
    }

    public struct PutObjectResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContentSHA256", required: false, type: .string), 
            AWSShapeMember(label: "ETag", required: false, type: .string), 
            AWSShapeMember(label: "StorageClass", required: false, type: .enum)
        ]
        /// The SHA256 digest of the object that is persisted.
        public let contentSHA256: String?
        /// Unique identifier of the object in the container.
        public let eTag: String?
        /// The storage class where the object was persisted. The class should be “Temporal”.
        public let storageClass: StorageClass?

        public init(contentSHA256: String? = nil, eTag: String? = nil, storageClass: StorageClass? = nil) {
            self.contentSHA256 = contentSHA256
            self.eTag = eTag
            self.storageClass = storageClass
        }

        private enum CodingKeys: String, CodingKey {
            case contentSHA256 = "ContentSHA256"
            case eTag = "ETag"
            case storageClass = "StorageClass"
        }
    }

    public struct ListItemsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "MaxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "Path", location: .querystring(locationName: "Path"), required: false, type: .string), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string)
        ]
        /// The maximum number of results to return per API request. For example, you submit a ListItems request with MaxResults set at 500. Although 2,000 items match your request, the service returns no more than the first 500 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 1,000 results per page.
        public let maxResults: Int32?
        /// The path in the container from which to retrieve items. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
        public let path: String?
        /// The token that identifies which batch of results that you want to see. For example, you submit a ListItems request with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value. To see the next batch of results, you can submit the ListItems request a second time and specify the NextToken value. Tokens expire after 15 minutes.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, path: String? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.path = path
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case path = "Path"
            case nextToken = "NextToken"
        }
    }

    public struct ListItemsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Items", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The metadata entries for the folders and objects at the requested path.
        public let items: [Item]?
        /// The token that can be used in a request to view the next set of results. For example, you submit a ListItems request that matches 2,000 items with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value that can be used to fetch the next batch of results.
        public let nextToken: String?

        public init(items: [Item]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case nextToken = "NextToken"
        }
    }

    public enum StorageClass: String, CustomStringConvertible, Codable {
        case temporal = "TEMPORAL"
        public var description: String { return self.rawValue }
    }

    public struct DeleteObjectResponse: AWSShape {

    }

    public struct DescribeObjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Path", location: .uri(locationName: "Path"), required: true, type: .string)
        ]
        /// The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
        public let path: String

        public init(path: String) {
            self.path = path
        }

        private enum CodingKeys: String, CodingKey {
            case path = "Path"
        }
    }

    public struct PutObjectRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Body"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Body", required: true, type: .blob), 
            AWSShapeMember(label: "StorageClass", location: .header(locationName: "x-amz-storage-class"), required: false, type: .enum), 
            AWSShapeMember(label: "Path", location: .uri(locationName: "Path"), required: true, type: .string), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "CacheControl", location: .header(locationName: "Cache-Control"), required: false, type: .string)
        ]
        /// The bytes to be stored. 
        public let body: Data
        /// Indicates the storage class of a Put request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.
        public let storageClass: StorageClass?
        /// The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt; For example, to upload the file mlaw.avi to the folder path premium\canada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the AWS Elemental MediaStore User Guide. The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. 
        public let path: String
        /// The content type of the object.
        public let contentType: String?
        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?

        public init(body: Data, storageClass: StorageClass? = nil, path: String, contentType: String? = nil, cacheControl: String? = nil) {
            self.body = body
            self.storageClass = storageClass
            self.path = path
            self.contentType = contentType
            self.cacheControl = cacheControl
        }

        private enum CodingKeys: String, CodingKey {
            case body = "Body"
            case storageClass = "x-amz-storage-class"
            case path = "Path"
            case contentType = "Content-Type"
            case cacheControl = "Cache-Control"
        }
    }

    public struct GetObjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Range", location: .header(locationName: "Range"), required: false, type: .string), 
            AWSShapeMember(label: "Path", location: .uri(locationName: "Path"), required: true, type: .string)
        ]
        /// The range bytes of an object to retrieve. For more information about the Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
        public let range: String?
        /// The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt; For example, to upload the file mlaw.avi to the folder path premium\canada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the AWS Elemental MediaStore User Guide. The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. 
        public let path: String

        public init(range: String? = nil, path: String) {
            self.range = range
            self.path = path
        }

        private enum CodingKeys: String, CodingKey {
            case range = "Range"
            case path = "Path"
        }
    }

    public struct GetObjectResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Body"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StatusCode", required: true, type: .integer), 
            AWSShapeMember(label: "ContentRange", location: .header(locationName: "Content-Range"), required: false, type: .string), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "CacheControl", location: .header(locationName: "Cache-Control"), required: false, type: .string), 
            AWSShapeMember(label: "ContentLength", location: .header(locationName: "Content-Length"), required: false, type: .long), 
            AWSShapeMember(label: "LastModified", location: .header(locationName: "Last-Modified"), required: false, type: .timestamp), 
            AWSShapeMember(label: "ETag", location: .header(locationName: "ETag"), required: false, type: .string), 
            AWSShapeMember(label: "Body", required: false, type: .blob)
        ]
        /// The HTML status code of the request. Status codes ranging from 200 to 299 indicate success. All other status codes indicate the type of error that occurred.
        public let statusCode: Int32
        /// The range of bytes to retrieve.
        public let contentRange: String?
        /// The content type of the object.
        public let contentType: String?
        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP spec at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?
        /// The length of the object in bytes.
        public let contentLength: Int64?
        /// The date and time that the object was last modified.
        public let lastModified: TimeStamp?
        /// The ETag that represents a unique instance of the object.
        public let eTag: String?
        /// The bytes of the object. 
        public let body: Data?

        public init(statusCode: Int32, contentRange: String? = nil, contentType: String? = nil, cacheControl: String? = nil, contentLength: Int64? = nil, lastModified: TimeStamp? = nil, eTag: String? = nil, body: Data? = nil) {
            self.statusCode = statusCode
            self.contentRange = contentRange
            self.contentType = contentType
            self.cacheControl = cacheControl
            self.contentLength = contentLength
            self.lastModified = lastModified
            self.eTag = eTag
            self.body = body
        }

        private enum CodingKeys: String, CodingKey {
            case statusCode = "StatusCode"
            case contentRange = "Content-Range"
            case contentType = "Content-Type"
            case cacheControl = "Cache-Control"
            case contentLength = "Content-Length"
            case lastModified = "Last-Modified"
            case eTag = "ETag"
            case body = "Body"
        }
    }

    public struct DescribeObjectResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContentLength", location: .header(locationName: "Content-Length"), required: false, type: .long), 
            AWSShapeMember(label: "ETag", location: .header(locationName: "ETag"), required: false, type: .string), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "CacheControl", location: .header(locationName: "Cache-Control"), required: false, type: .string), 
            AWSShapeMember(label: "LastModified", location: .header(locationName: "Last-Modified"), required: false, type: .timestamp)
        ]
        /// The length of the object in bytes.
        public let contentLength: Int64?
        /// The ETag that represents a unique instance of the object.
        public let eTag: String?
        /// The content type of the object.
        public let contentType: String?
        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?
        /// The date and time that the object was last modified.
        public let lastModified: TimeStamp?

        public init(contentLength: Int64? = nil, eTag: String? = nil, contentType: String? = nil, cacheControl: String? = nil, lastModified: TimeStamp? = nil) {
            self.contentLength = contentLength
            self.eTag = eTag
            self.contentType = contentType
            self.cacheControl = cacheControl
            self.lastModified = lastModified
        }

        private enum CodingKeys: String, CodingKey {
            case contentLength = "Content-Length"
            case eTag = "ETag"
            case contentType = "Content-Type"
            case cacheControl = "Cache-Control"
            case lastModified = "Last-Modified"
        }
    }

}