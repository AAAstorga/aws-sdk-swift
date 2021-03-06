// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for PinpointSMSVoice
public enum PinpointSMSVoiceErrorType: AWSErrorType {
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
    case badRequestException(message: String?)
    case internalServiceErrorException(message: String?)
    case limitExceededException(message: String?)
    case alreadyExistsException(message: String?)
}

extension PinpointSMSVoiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        default:
            return nil
        }
    }
}