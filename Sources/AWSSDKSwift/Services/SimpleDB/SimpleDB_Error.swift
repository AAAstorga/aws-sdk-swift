// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SimpleDB
public enum SimpleDBErrorType: AWSErrorType {
    case invalidParameterValue(message: String?)
    case missingParameter(message: String?)
    case noSuchDomain(message: String?)
    case numberDomainAttributesExceeded(message: String?)
    case numberDomainBytesExceeded(message: String?)
    case numberItemAttributesExceeded(message: String?)
    case attributeDoesNotExist(message: String?)
    case duplicateItemName(message: String?)
    case numberSubmittedItemsExceeded(message: String?)
    case numberSubmittedAttributesExceeded(message: String?)
    case invalidNextToken(message: String?)
    case invalidNumberPredicates(message: String?)
    case invalidNumberValueTests(message: String?)
    case invalidQueryExpression(message: String?)
    case requestTimeout(message: String?)
    case tooManyRequestedAttributes(message: String?)
    case numberDomainsExceeded(message: String?)
}

extension SimpleDBErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidParameterValue":
            self = .invalidParameterValue(message: message)
        case "MissingParameter":
            self = .missingParameter(message: message)
        case "NoSuchDomain":
            self = .noSuchDomain(message: message)
        case "NumberDomainAttributesExceeded":
            self = .numberDomainAttributesExceeded(message: message)
        case "NumberDomainBytesExceeded":
            self = .numberDomainBytesExceeded(message: message)
        case "NumberItemAttributesExceeded":
            self = .numberItemAttributesExceeded(message: message)
        case "AttributeDoesNotExist":
            self = .attributeDoesNotExist(message: message)
        case "DuplicateItemName":
            self = .duplicateItemName(message: message)
        case "NumberSubmittedItemsExceeded":
            self = .numberSubmittedItemsExceeded(message: message)
        case "NumberSubmittedAttributesExceeded":
            self = .numberSubmittedAttributesExceeded(message: message)
        case "InvalidNextToken":
            self = .invalidNextToken(message: message)
        case "InvalidNumberPredicates":
            self = .invalidNumberPredicates(message: message)
        case "InvalidNumberValueTests":
            self = .invalidNumberValueTests(message: message)
        case "InvalidQueryExpression":
            self = .invalidQueryExpression(message: message)
        case "RequestTimeout":
            self = .requestTimeout(message: message)
        case "TooManyRequestedAttributes":
            self = .tooManyRequestedAttributes(message: message)
        case "NumberDomainsExceeded":
            self = .numberDomainsExceeded(message: message)
        default:
            return nil
        }
    }
}