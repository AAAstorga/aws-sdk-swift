// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension SimpleDB {

    public struct Attribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "AlternateNameEncoding", required: false, type: .string), 
            AWSShapeMember(label: "AlternateValueEncoding", required: false, type: .string)
        ]
        /// The name of the attribute.
        public let name: String
        /// The value of the attribute.
        public let value: String
        public let alternateNameEncoding: String?
        public let alternateValueEncoding: String?

        public init(name: String, value: String, alternateNameEncoding: String? = nil, alternateValueEncoding: String? = nil) {
            self.name = name
            self.value = value
            self.alternateNameEncoding = alternateNameEncoding
            self.alternateValueEncoding = alternateValueEncoding
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
            case alternateNameEncoding = "AlternateNameEncoding"
            case alternateValueEncoding = "AlternateValueEncoding"
        }
    }

    public struct DeleteAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Attributes", required: false, type: .structure), 
            AWSShapeMember(label: "DomainName", required: true, type: .string), 
            AWSShapeMember(label: "Expected", required: false, type: .structure), 
            AWSShapeMember(label: "ItemName", required: true, type: .string)
        ]
        /// A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items.
        public let attributes: DeletableAttributeList?
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted.
        public let expected: UpdateCondition?
        /// The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs.
        public let itemName: String

        public init(attributes: DeletableAttributeList? = nil, domainName: String, expected: UpdateCondition? = nil, itemName: String) {
            self.attributes = attributes
            self.domainName = domainName
            self.expected = expected
            self.itemName = itemName
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attributes"
            case domainName = "DomainName"
            case expected = "Expected"
            case itemName = "ItemName"
        }
    }

    public struct BatchPutAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DomainName", required: true, type: .string), 
            AWSShapeMember(label: "Items", required: true, type: .structure)
        ]
        /// The name of the domain in which the attributes are being stored.
        public let domainName: String
        /// A list of items on which to perform the operation.
        public let items: ReplaceableItemList

        public init(domainName: String, items: ReplaceableItemList) {
            self.domainName = domainName
            self.items = items
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case items = "Items"
        }
    }

    public struct ReplaceableAttributeList: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Attribute", required: false, type: .list)
        ]
        public let attribute: [ReplaceableAttribute]?

        public init(attribute: [ReplaceableAttribute]? = nil) {
            self.attribute = attribute
        }

        private enum CodingKeys: String, CodingKey {
            case attribute = "Attribute"
        }
    }

    public struct PutAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DomainName", required: true, type: .string), 
            AWSShapeMember(label: "Expected", required: false, type: .structure), 
            AWSShapeMember(label: "ItemName", required: true, type: .string), 
            AWSShapeMember(label: "Attributes", required: true, type: .structure)
        ]
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated.
        public let expected: UpdateCondition?
        /// The name of the item.
        public let itemName: String
        /// The list of attributes.
        public let attributes: ReplaceableAttributeList

        public init(domainName: String, expected: UpdateCondition? = nil, itemName: String, attributes: ReplaceableAttributeList) {
            self.domainName = domainName
            self.expected = expected
            self.itemName = itemName
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case expected = "Expected"
            case itemName = "ItemName"
            case attributes = "Attributes"
        }
    }

    public struct GetAttributesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Attributes", required: false, type: .structure)
        ]
        /// The list of attributes returned by the operation.
        public let attributes: AttributeList?

        public init(attributes: AttributeList? = nil) {
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attributes"
        }
    }

    public struct ReplaceableItem: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .body(locationName: "ItemName"), required: true, type: .string), 
            AWSShapeMember(label: "Attributes", required: true, type: .structure)
        ]
        /// The name of the replaceable item.
        public let name: String
        /// The list of attributes for a replaceable item.
        public let attributes: ReplaceableAttributeList

        public init(name: String, attributes: ReplaceableAttributeList) {
            self.name = name
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case name = "ItemName"
            case attributes = "Attributes"
        }
    }

    public struct ItemList: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Item", required: false, type: .list)
        ]
        public let item: [Item]?

        public init(item: [Item]? = nil) {
            self.item = item
        }

        private enum CodingKeys: String, CodingKey {
            case item = "Item"
        }
    }

    public struct DomainNameList: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DomainName", required: false, type: .list)
        ]
        public let domainName: [String]?

        public init(domainName: [String]? = nil) {
            self.domainName = domainName
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    public struct DeletableAttributeList: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Attribute", required: false, type: .list)
        ]
        public let attribute: [DeletableAttribute]?

        public init(attribute: [DeletableAttribute]? = nil) {
            self.attribute = attribute
        }

        private enum CodingKeys: String, CodingKey {
            case attribute = "Attribute"
        }
    }

    public struct ReplaceableItemList: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Item", required: false, type: .list)
        ]
        public let item: [ReplaceableItem]?

        public init(item: [ReplaceableItem]? = nil) {
            self.item = item
        }

        private enum CodingKeys: String, CodingKey {
            case item = "Item"
        }
    }

    public struct DeleteDomainRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DomainName", required: true, type: .string)
        ]
        /// The name of the domain to delete.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    public struct Item: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AlternateNameEncoding", required: false, type: .string), 
            AWSShapeMember(label: "Attributes", required: true, type: .structure), 
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        public let alternateNameEncoding: String?
        /// A list of attributes.
        public let attributes: AttributeList
        /// The name of the item.
        public let name: String

        public init(alternateNameEncoding: String? = nil, attributes: AttributeList, name: String) {
            self.alternateNameEncoding = alternateNameEncoding
            self.attributes = attributes
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case alternateNameEncoding = "AlternateNameEncoding"
            case attributes = "Attributes"
            case name = "Name"
        }
    }

    public struct ListDomainsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxNumberOfDomains", required: false, type: .integer)
        ]
        /// A string informing Amazon SimpleDB where to start the next list of domain names.
        public let nextToken: String?
        /// The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
        public let maxNumberOfDomains: Int32?

        public init(nextToken: String? = nil, maxNumberOfDomains: Int32? = nil) {
            self.nextToken = nextToken
            self.maxNumberOfDomains = maxNumberOfDomains
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case maxNumberOfDomains = "MaxNumberOfDomains"
        }
    }

    public struct AttributeList: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Attribute", required: false, type: .list)
        ]
        public let attribute: [Attribute]?

        public init(attribute: [Attribute]? = nil) {
            self.attribute = attribute
        }

        private enum CodingKeys: String, CodingKey {
            case attribute = "Attribute"
        }
    }

    public struct GetAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AttributeNames", required: false, type: .structure), 
            AWSShapeMember(label: "DomainName", required: true, type: .string), 
            AWSShapeMember(label: "ItemName", required: true, type: .string), 
            AWSShapeMember(label: "ConsistentRead", required: false, type: .boolean)
        ]
        /// The names of the attributes.
        public let attributeNames: AttributeNameList?
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The name of the item.
        public let itemName: String
        /// Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If true, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
        public let consistentRead: Bool?

        public init(attributeNames: AttributeNameList? = nil, domainName: String, itemName: String, consistentRead: Bool? = nil) {
            self.attributeNames = attributeNames
            self.domainName = domainName
            self.itemName = itemName
            self.consistentRead = consistentRead
        }

        private enum CodingKeys: String, CodingKey {
            case attributeNames = "AttributeNames"
            case domainName = "DomainName"
            case itemName = "ItemName"
            case consistentRead = "ConsistentRead"
        }
    }

    public struct DeletableAttribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// The value of the attribute.
        public let value: String?
        /// The name of the attribute.
        public let name: String

        public init(value: String? = nil, name: String) {
            self.value = value
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case name = "Name"
        }
    }

    public struct BatchDeleteAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DomainName", required: true, type: .string), 
            AWSShapeMember(label: "Items", required: true, type: .structure)
        ]
        /// The name of the domain in which the attributes are being deleted.
        public let domainName: String
        /// A list of items on which to perform the operation.
        public let items: DeletableItemList

        public init(domainName: String, items: DeletableItemList) {
            self.domainName = domainName
            self.items = items
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case items = "Items"
        }
    }

    public struct DomainMetadataResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ItemCount", required: false, type: .integer), 
            AWSShapeMember(label: "AttributeValueCount", required: false, type: .integer), 
            AWSShapeMember(label: "AttributeValuesSizeBytes", required: false, type: .long), 
            AWSShapeMember(label: "Timestamp", required: false, type: .integer), 
            AWSShapeMember(label: "ItemNamesSizeBytes", required: false, type: .long), 
            AWSShapeMember(label: "AttributeNamesSizeBytes", required: false, type: .long), 
            AWSShapeMember(label: "AttributeNameCount", required: false, type: .integer)
        ]
        /// The number of all items in the domain.
        public let itemCount: Int32?
        /// The number of all attribute name/value pairs in the domain.
        public let attributeValueCount: Int32?
        /// The total size of all attribute values in the domain, in bytes.
        public let attributeValuesSizeBytes: Int64?
        /// The data and time when metadata was calculated, in Epoch (UNIX) seconds.
        public let timestamp: Int32?
        /// The total size of all item names in the domain, in bytes.
        public let itemNamesSizeBytes: Int64?
        /// The total size of all unique attribute names in the domain, in bytes.
        public let attributeNamesSizeBytes: Int64?
        /// The number of unique attribute names in the domain.
        public let attributeNameCount: Int32?

        public init(itemCount: Int32? = nil, attributeValueCount: Int32? = nil, attributeValuesSizeBytes: Int64? = nil, timestamp: Int32? = nil, itemNamesSizeBytes: Int64? = nil, attributeNamesSizeBytes: Int64? = nil, attributeNameCount: Int32? = nil) {
            self.itemCount = itemCount
            self.attributeValueCount = attributeValueCount
            self.attributeValuesSizeBytes = attributeValuesSizeBytes
            self.timestamp = timestamp
            self.itemNamesSizeBytes = itemNamesSizeBytes
            self.attributeNamesSizeBytes = attributeNamesSizeBytes
            self.attributeNameCount = attributeNameCount
        }

        private enum CodingKeys: String, CodingKey {
            case itemCount = "ItemCount"
            case attributeValueCount = "AttributeValueCount"
            case attributeValuesSizeBytes = "AttributeValuesSizeBytes"
            case timestamp = "Timestamp"
            case itemNamesSizeBytes = "ItemNamesSizeBytes"
            case attributeNamesSizeBytes = "AttributeNamesSizeBytes"
            case attributeNameCount = "AttributeNameCount"
        }
    }

    public struct SelectResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Items", required: false, type: .structure), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of items that match the select expression.
        public let items: ItemList?
        /// An opaque token indicating that more items than MaxNumberOfItems were matched, the response size exceeded 1 megabyte, or the execution time exceeded 5 seconds.
        public let nextToken: String?

        public init(items: ItemList? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case nextToken = "NextToken"
        }
    }

    public struct AttributeNameList: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AttributeName", required: false, type: .list)
        ]
        public let attributeName: [String]?

        public init(attributeName: [String]? = nil) {
            self.attributeName = attributeName
        }

        private enum CodingKeys: String, CodingKey {
            case attributeName = "AttributeName"
        }
    }

    public struct DomainMetadataRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DomainName", required: true, type: .string)
        ]
        /// The name of the domain for which to display the metadata of.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    public struct ReplaceableAttribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "Replace", required: false, type: .boolean)
        ]
        /// The name of the replaceable attribute.
        public let name: String
        /// The value of the replaceable attribute.
        public let value: String
        /// A flag specifying whether or not to replace the attribute/value pair or to add a new attribute/value pair. The default setting is false.
        public let replace: Bool?

        public init(name: String, value: String, replace: Bool? = nil) {
            self.name = name
            self.value = value
            self.replace = replace
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
            case replace = "Replace"
        }
    }

    public struct DeletableItemList: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Item", required: false, type: .list)
        ]
        public let item: [DeletableItem]?

        public init(item: [DeletableItem]? = nil) {
            self.item = item
        }

        private enum CodingKeys: String, CodingKey {
            case item = "Item"
        }
    }

    public struct SelectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ConsistentRead", required: false, type: .boolean), 
            AWSShapeMember(label: "SelectExpression", required: true, type: .string)
        ]
        /// A string informing Amazon SimpleDB where to start the next list of ItemNames.
        public let nextToken: String?
        /// Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If true, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
        public let consistentRead: Bool?
        /// The expression used to query the domain.
        public let selectExpression: String

        public init(nextToken: String? = nil, consistentRead: Bool? = nil, selectExpression: String) {
            self.nextToken = nextToken
            self.consistentRead = consistentRead
            self.selectExpression = selectExpression
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case consistentRead = "ConsistentRead"
            case selectExpression = "SelectExpression"
        }
    }

    public struct ListDomainsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DomainNames", required: false, type: .structure), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of domain names that match the expression.
        public let domainNames: DomainNameList?
        /// An opaque token indicating that there are more domains than the specified MaxNumberOfDomains still available.
        public let nextToken: String?

        public init(domainNames: DomainNameList? = nil, nextToken: String? = nil) {
            self.domainNames = domainNames
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case domainNames = "DomainNames"
            case nextToken = "NextToken"
        }
    }

    public struct UpdateCondition: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Exists", required: false, type: .boolean), 
            AWSShapeMember(label: "Value", required: false, type: .string)
        ]
        /// The name of the attribute involved in the condition.
        public let name: String?
        /// A value specifying whether or not the specified attribute must exist with the specified value in order for the update condition to be satisfied. Specify true if the attribute must exist for the update condition to be satisfied. Specify false if the attribute should not exist in order for the update condition to be satisfied.
        public let exists: Bool?
        /// The value of an attribute. This value can only be specified when the Exists parameter is equal to true.
        public let value: String?

        public init(name: String? = nil, exists: Bool? = nil, value: String? = nil) {
            self.name = name
            self.exists = exists
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case exists = "Exists"
            case value = "Value"
        }
    }

    public struct CreateDomainRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DomainName", required: true, type: .string)
        ]
        /// The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    public struct DeletableItem: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Attributes", required: false, type: .structure), 
            AWSShapeMember(label: "Name", location: .body(locationName: "ItemName"), required: true, type: .string)
        ]
        public let attributes: DeletableAttributeList?
        public let name: String

        public init(attributes: DeletableAttributeList? = nil, name: String) {
            self.attributes = attributes
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attributes"
            case name = "ItemName"
        }
    }

}