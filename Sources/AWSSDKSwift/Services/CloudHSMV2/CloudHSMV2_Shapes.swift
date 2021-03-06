// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension CloudHSMV2 {

    public struct ListTagsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceId", required: true, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer)
        ]
        /// The cluster identifier (ID) for the cluster whose tags you are getting. To find the cluster ID, use DescribeClusters.
        public let resourceId: String
        /// The NextToken value that you received in the previous response. Use this value to get more tags.
        public let nextToken: String?
        /// The maximum number of tags to return in the response. When there are more tags than the number you specify, the response contains a NextToken value.
        public let maxResults: Int32?

        public init(resourceId: String, nextToken: String? = nil, maxResults: Int32? = nil) {
            self.resourceId = resourceId
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
        }
    }

    public struct DeleteBackupRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BackupId", required: true, type: .string)
        ]
        /// The ID of the backup to be deleted. To find the ID of a backup, use the DescribeBackups operation.
        public let backupId: String

        public init(backupId: String) {
            self.backupId = backupId
        }

        private enum CodingKeys: String, CodingKey {
            case backupId = "BackupId"
        }
    }

    public enum HsmState: String, CustomStringConvertible, Codable {
        case createInProgress = "CREATE_IN_PROGRESS"
        case active = "ACTIVE"
        case degraded = "DEGRADED"
        case deleteInProgress = "DELETE_IN_PROGRESS"
        case deleted = "DELETED"
        public var description: String { return self.rawValue }
    }

    public struct CreateClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "HsmType", required: true, type: .string), 
            AWSShapeMember(label: "SubnetIds", required: true, type: .list), 
            AWSShapeMember(label: "SourceBackupId", required: false, type: .string)
        ]
        /// The type of HSM to use in the cluster. Currently the only allowed value is hsm1.medium.
        public let hsmType: String
        /// The identifiers (IDs) of the subnets where you are creating the cluster. You must specify at least one subnet. If you specify multiple subnets, they must meet the following criteria:   All subnets must be in the same virtual private cloud (VPC).   You can specify only one subnet per Availability Zone.  
        public let subnetIds: [String]
        /// The identifier (ID) of the cluster backup to restore. Use this value to restore the cluster from a backup instead of creating a new cluster. To find the backup ID, use DescribeBackups.
        public let sourceBackupId: String?

        public init(hsmType: String, subnetIds: [String], sourceBackupId: String? = nil) {
            self.hsmType = hsmType
            self.subnetIds = subnetIds
            self.sourceBackupId = sourceBackupId
        }

        private enum CodingKeys: String, CodingKey {
            case hsmType = "HsmType"
            case subnetIds = "SubnetIds"
            case sourceBackupId = "SourceBackupId"
        }
    }

    public struct DescribeClustersResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Clusters", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of clusters.
        public let clusters: [Cluster]?
        /// An opaque string that indicates that the response contains only a subset of clusters. Use this value in a subsequent DescribeClusters request to get more clusters.
        public let nextToken: String?

        public init(clusters: [Cluster]? = nil, nextToken: String? = nil) {
            self.clusters = clusters
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusters = "Clusters"
            case nextToken = "NextToken"
        }
    }

    public struct UntagResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TagKeyList", required: true, type: .list), 
            AWSShapeMember(label: "ResourceId", required: true, type: .string)
        ]
        /// A list of one or more tag keys for the tags that you are removing. Specify only the tag keys, not the tag values.
        public let tagKeyList: [String]
        /// The cluster identifier (ID) for the cluster whose tags you are removing. To find the cluster ID, use DescribeClusters.
        public let resourceId: String

        public init(tagKeyList: [String], resourceId: String) {
            self.tagKeyList = tagKeyList
            self.resourceId = resourceId
        }

        private enum CodingKeys: String, CodingKey {
            case tagKeyList = "TagKeyList"
            case resourceId = "ResourceId"
        }
    }

    public struct Backup: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CopyTimestamp", required: false, type: .timestamp), 
            AWSShapeMember(label: "BackupState", required: false, type: .enum), 
            AWSShapeMember(label: "BackupId", required: true, type: .string), 
            AWSShapeMember(label: "SourceRegion", required: false, type: .string), 
            AWSShapeMember(label: "DeleteTimestamp", required: false, type: .timestamp), 
            AWSShapeMember(label: "CreateTimestamp", required: false, type: .timestamp), 
            AWSShapeMember(label: "SourceBackup", required: false, type: .string), 
            AWSShapeMember(label: "SourceCluster", required: false, type: .string), 
            AWSShapeMember(label: "ClusterId", required: false, type: .string)
        ]
        public let copyTimestamp: TimeStamp?
        /// The state of the backup.
        public let backupState: BackupState?
        /// The identifier (ID) of the backup.
        public let backupId: String
        public let sourceRegion: String?
        /// The date and time when the backup will be permanently deleted.
        public let deleteTimestamp: TimeStamp?
        /// The date and time when the backup was created.
        public let createTimestamp: TimeStamp?
        public let sourceBackup: String?
        public let sourceCluster: String?
        /// The identifier (ID) of the cluster that was backed up.
        public let clusterId: String?

        public init(copyTimestamp: TimeStamp? = nil, backupState: BackupState? = nil, backupId: String, sourceRegion: String? = nil, deleteTimestamp: TimeStamp? = nil, createTimestamp: TimeStamp? = nil, sourceBackup: String? = nil, sourceCluster: String? = nil, clusterId: String? = nil) {
            self.copyTimestamp = copyTimestamp
            self.backupState = backupState
            self.backupId = backupId
            self.sourceRegion = sourceRegion
            self.deleteTimestamp = deleteTimestamp
            self.createTimestamp = createTimestamp
            self.sourceBackup = sourceBackup
            self.sourceCluster = sourceCluster
            self.clusterId = clusterId
        }

        private enum CodingKeys: String, CodingKey {
            case copyTimestamp = "CopyTimestamp"
            case backupState = "BackupState"
            case backupId = "BackupId"
            case sourceRegion = "SourceRegion"
            case deleteTimestamp = "DeleteTimestamp"
            case createTimestamp = "CreateTimestamp"
            case sourceBackup = "SourceBackup"
            case sourceCluster = "SourceCluster"
            case clusterId = "ClusterId"
        }
    }

    public struct DescribeBackupsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Filters", required: false, type: .map), 
            AWSShapeMember(label: "SortAscending", required: false, type: .boolean), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// One or more filters to limit the items returned in the response. Use the backupIds filter to return only the specified backups. Specify backups by their backup identifier (ID). Use the sourceBackupIds filter to return only the backups created from a source backup. The sourceBackupID of a source backup is returned by the CopyBackupToRegion operation. Use the clusterIds filter to return only the backups for the specified clusters. Specify clusters by their cluster identifier (ID). Use the states filter to return only backups that match the specified state.
        public let filters: [String: [String]]?
        public let sortAscending: Bool?
        /// The maximum number of backups to return in the response. When there are more backups than the number you specify, the response contains a NextToken value.
        public let maxResults: Int32?
        /// The NextToken value that you received in the previous response. Use this value to get more backups.
        public let nextToken: String?

        public init(filters: [String: [String]]? = nil, sortAscending: Bool? = nil, maxResults: Int32? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.sortAscending = sortAscending
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case sortAscending = "SortAscending"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public enum BackupPolicy: String, CustomStringConvertible, Codable {
        case `default` = "DEFAULT"
        public var description: String { return self.rawValue }
    }

    public struct DeleteHsmRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterId", required: true, type: .string), 
            AWSShapeMember(label: "HsmId", required: false, type: .string), 
            AWSShapeMember(label: "EniIp", required: false, type: .string), 
            AWSShapeMember(label: "EniId", required: false, type: .string)
        ]
        /// The identifier (ID) of the cluster that contains the HSM that you are deleting.
        public let clusterId: String
        /// The identifier (ID) of the HSM that you are deleting.
        public let hsmId: String?
        /// The IP address of the elastic network interface (ENI) of the HSM that you are deleting.
        public let eniIp: String?
        /// The identifier (ID) of the elastic network interface (ENI) of the HSM that you are deleting.
        public let eniId: String?

        public init(clusterId: String, hsmId: String? = nil, eniIp: String? = nil, eniId: String? = nil) {
            self.clusterId = clusterId
            self.hsmId = hsmId
            self.eniIp = eniIp
            self.eniId = eniId
        }

        private enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case hsmId = "HsmId"
            case eniIp = "EniIp"
            case eniId = "EniId"
        }
    }

    public struct Certificates: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AwsHardwareCertificate", required: false, type: .string), 
            AWSShapeMember(label: "ClusterCertificate", required: false, type: .string), 
            AWSShapeMember(label: "HsmCertificate", required: false, type: .string), 
            AWSShapeMember(label: "ClusterCsr", required: false, type: .string), 
            AWSShapeMember(label: "ManufacturerHardwareCertificate", required: false, type: .string)
        ]
        /// The HSM hardware certificate issued (signed) by AWS CloudHSM.
        public let awsHardwareCertificate: String?
        /// The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
        public let clusterCertificate: String?
        /// The HSM certificate issued (signed) by the HSM hardware.
        public let hsmCertificate: String?
        /// The cluster's certificate signing request (CSR). The CSR exists only when the cluster's state is UNINITIALIZED.
        public let clusterCsr: String?
        /// The HSM hardware certificate issued (signed) by the hardware manufacturer.
        public let manufacturerHardwareCertificate: String?

        public init(awsHardwareCertificate: String? = nil, clusterCertificate: String? = nil, hsmCertificate: String? = nil, clusterCsr: String? = nil, manufacturerHardwareCertificate: String? = nil) {
            self.awsHardwareCertificate = awsHardwareCertificate
            self.clusterCertificate = clusterCertificate
            self.hsmCertificate = hsmCertificate
            self.clusterCsr = clusterCsr
            self.manufacturerHardwareCertificate = manufacturerHardwareCertificate
        }

        private enum CodingKeys: String, CodingKey {
            case awsHardwareCertificate = "AwsHardwareCertificate"
            case clusterCertificate = "ClusterCertificate"
            case hsmCertificate = "HsmCertificate"
            case clusterCsr = "ClusterCsr"
            case manufacturerHardwareCertificate = "ManufacturerHardwareCertificate"
        }
    }

    public struct Tag: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "Key", required: true, type: .string)
        ]
        /// The value of the tag.
        public let value: String
        /// The key of the tag.
        public let key: String

        public init(value: String, key: String) {
            self.value = value
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case key = "Key"
        }
    }

    public struct UntagResourceResponse: AWSShape {

    }

    public struct Hsm: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EniIp", required: false, type: .string), 
            AWSShapeMember(label: "ClusterId", required: false, type: .string), 
            AWSShapeMember(label: "AvailabilityZone", required: false, type: .string), 
            AWSShapeMember(label: "SubnetId", required: false, type: .string), 
            AWSShapeMember(label: "EniId", required: false, type: .string), 
            AWSShapeMember(label: "StateMessage", required: false, type: .string), 
            AWSShapeMember(label: "HsmId", required: true, type: .string), 
            AWSShapeMember(label: "State", required: false, type: .enum)
        ]
        /// The IP address of the HSM's elastic network interface (ENI).
        public let eniIp: String?
        /// The identifier (ID) of the cluster that contains the HSM.
        public let clusterId: String?
        /// The Availability Zone that contains the HSM.
        public let availabilityZone: String?
        /// The subnet that contains the HSM's elastic network interface (ENI).
        public let subnetId: String?
        /// The identifier (ID) of the HSM's elastic network interface (ENI).
        public let eniId: String?
        /// A description of the HSM's state.
        public let stateMessage: String?
        /// The HSM's identifier (ID).
        public let hsmId: String
        /// The HSM's state.
        public let state: HsmState?

        public init(eniIp: String? = nil, clusterId: String? = nil, availabilityZone: String? = nil, subnetId: String? = nil, eniId: String? = nil, stateMessage: String? = nil, hsmId: String, state: HsmState? = nil) {
            self.eniIp = eniIp
            self.clusterId = clusterId
            self.availabilityZone = availabilityZone
            self.subnetId = subnetId
            self.eniId = eniId
            self.stateMessage = stateMessage
            self.hsmId = hsmId
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case eniIp = "EniIp"
            case clusterId = "ClusterId"
            case availabilityZone = "AvailabilityZone"
            case subnetId = "SubnetId"
            case eniId = "EniId"
            case stateMessage = "StateMessage"
            case hsmId = "HsmId"
            case state = "State"
        }
    }

    public struct DeleteBackupResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Backup", required: false, type: .structure)
        ]
        /// Information on the Backup object deleted.
        public let backup: Backup?

        public init(backup: Backup? = nil) {
            self.backup = backup
        }

        private enum CodingKeys: String, CodingKey {
            case backup = "Backup"
        }
    }

    public struct RestoreBackupResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Backup", required: false, type: .structure)
        ]
        /// Information on the Backup object created.
        public let backup: Backup?

        public init(backup: Backup? = nil) {
            self.backup = backup
        }

        private enum CodingKeys: String, CodingKey {
            case backup = "Backup"
        }
    }

    public struct CopyBackupToRegionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DestinationRegion", required: true, type: .string), 
            AWSShapeMember(label: "BackupId", required: true, type: .string)
        ]
        /// The AWS region that will contain your copied CloudHSM cluster backup.
        public let destinationRegion: String
        /// The ID of the backup that will be copied to the destination region. 
        public let backupId: String

        public init(destinationRegion: String, backupId: String) {
            self.destinationRegion = destinationRegion
            self.backupId = backupId
        }

        private enum CodingKeys: String, CodingKey {
            case destinationRegion = "DestinationRegion"
            case backupId = "BackupId"
        }
    }

    public struct DescribeBackupsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Backups", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of backups.
        public let backups: [Backup]?
        /// An opaque string that indicates that the response contains only a subset of backups. Use this value in a subsequent DescribeBackups request to get more backups.
        public let nextToken: String?

        public init(backups: [Backup]? = nil, nextToken: String? = nil) {
            self.backups = backups
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case backups = "Backups"
            case nextToken = "NextToken"
        }
    }

    public enum BackupState: String, CustomStringConvertible, Codable {
        case createInProgress = "CREATE_IN_PROGRESS"
        case ready = "READY"
        case deleted = "DELETED"
        case pendingDeletion = "PENDING_DELETION"
        public var description: String { return self.rawValue }
    }

    public struct CreateClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Cluster", required: false, type: .structure)
        ]
        /// Information about the cluster that was created.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "Cluster"
        }
    }

    public struct CopyBackupToRegionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DestinationBackup", required: false, type: .structure)
        ]
        /// Information on the backup that will be copied to the destination region, including CreateTimestamp, SourceBackup, SourceCluster, and Source Region. CreateTimestamp of the destination backup will be the same as that of the source backup. You will need to use the sourceBackupID returned in this operation to use the DescribeBackups operation on the backup that will be copied to the destination region.
        public let destinationBackup: DestinationBackup?

        public init(destinationBackup: DestinationBackup? = nil) {
            self.destinationBackup = destinationBackup
        }

        private enum CodingKeys: String, CodingKey {
            case destinationBackup = "DestinationBackup"
        }
    }

    public struct TagResourceResponse: AWSShape {

    }

    public struct DeleteHsmResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "HsmId", required: false, type: .string)
        ]
        /// The identifier (ID) of the HSM that was deleted.
        public let hsmId: String?

        public init(hsmId: String? = nil) {
            self.hsmId = hsmId
        }

        private enum CodingKeys: String, CodingKey {
            case hsmId = "HsmId"
        }
    }

    public struct InitializeClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SignedCert", required: true, type: .string), 
            AWSShapeMember(label: "ClusterId", required: true, type: .string), 
            AWSShapeMember(label: "TrustAnchor", required: true, type: .string)
        ]
        /// The cluster certificate issued (signed) by your issuing certificate authority (CA). The certificate must be in PEM format and can contain a maximum of 5000 characters.
        public let signedCert: String
        /// The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use DescribeClusters.
        public let clusterId: String
        /// The issuing certificate of the issuing certificate authority (CA) that issued (signed) the cluster certificate. This can be a root (self-signed) certificate or a certificate chain that begins with the certificate that issued the cluster certificate and ends with a root certificate. The certificate or certificate chain must be in PEM format and can contain a maximum of 5000 characters.
        public let trustAnchor: String

        public init(signedCert: String, clusterId: String, trustAnchor: String) {
            self.signedCert = signedCert
            self.clusterId = clusterId
            self.trustAnchor = trustAnchor
        }

        private enum CodingKeys: String, CodingKey {
            case signedCert = "SignedCert"
            case clusterId = "ClusterId"
            case trustAnchor = "TrustAnchor"
        }
    }

    public struct Cluster: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StateMessage", required: false, type: .string), 
            AWSShapeMember(label: "Hsms", required: false, type: .list), 
            AWSShapeMember(label: "SourceBackupId", required: false, type: .string), 
            AWSShapeMember(label: "BackupPolicy", required: false, type: .enum), 
            AWSShapeMember(label: "PreCoPassword", required: false, type: .string), 
            AWSShapeMember(label: "SecurityGroup", required: false, type: .string), 
            AWSShapeMember(label: "HsmType", required: false, type: .string), 
            AWSShapeMember(label: "Certificates", required: false, type: .structure), 
            AWSShapeMember(label: "SubnetMapping", required: false, type: .map), 
            AWSShapeMember(label: "State", required: false, type: .enum), 
            AWSShapeMember(label: "VpcId", required: false, type: .string), 
            AWSShapeMember(label: "CreateTimestamp", required: false, type: .timestamp), 
            AWSShapeMember(label: "ClusterId", required: false, type: .string)
        ]
        /// A description of the cluster's state.
        public let stateMessage: String?
        /// Contains information about the HSMs in the cluster.
        public let hsms: [Hsm]?
        /// The identifier (ID) of the backup used to create the cluster. This value exists only when the cluster was created from a backup.
        public let sourceBackupId: String?
        /// The cluster's backup policy.
        public let backupPolicy: BackupPolicy?
        /// The default password for the cluster's Pre-Crypto Officer (PRECO) user.
        public let preCoPassword: String?
        /// The identifier (ID) of the cluster's security group.
        public let securityGroup: String?
        /// The type of HSM that the cluster contains.
        public let hsmType: String?
        /// Contains one or more certificates or a certificate signing request (CSR).
        public let certificates: Certificates?
        /// A map of the cluster's subnets and their corresponding Availability Zones.
        public let subnetMapping: [String: String]?
        /// The cluster's state.
        public let state: ClusterState?
        /// The identifier (ID) of the virtual private cloud (VPC) that contains the cluster.
        public let vpcId: String?
        /// The date and time when the cluster was created.
        public let createTimestamp: TimeStamp?
        /// The cluster's identifier (ID).
        public let clusterId: String?

        public init(stateMessage: String? = nil, hsms: [Hsm]? = nil, sourceBackupId: String? = nil, backupPolicy: BackupPolicy? = nil, preCoPassword: String? = nil, securityGroup: String? = nil, hsmType: String? = nil, certificates: Certificates? = nil, subnetMapping: [String: String]? = nil, state: ClusterState? = nil, vpcId: String? = nil, createTimestamp: TimeStamp? = nil, clusterId: String? = nil) {
            self.stateMessage = stateMessage
            self.hsms = hsms
            self.sourceBackupId = sourceBackupId
            self.backupPolicy = backupPolicy
            self.preCoPassword = preCoPassword
            self.securityGroup = securityGroup
            self.hsmType = hsmType
            self.certificates = certificates
            self.subnetMapping = subnetMapping
            self.state = state
            self.vpcId = vpcId
            self.createTimestamp = createTimestamp
            self.clusterId = clusterId
        }

        private enum CodingKeys: String, CodingKey {
            case stateMessage = "StateMessage"
            case hsms = "Hsms"
            case sourceBackupId = "SourceBackupId"
            case backupPolicy = "BackupPolicy"
            case preCoPassword = "PreCoPassword"
            case securityGroup = "SecurityGroup"
            case hsmType = "HsmType"
            case certificates = "Certificates"
            case subnetMapping = "SubnetMapping"
            case state = "State"
            case vpcId = "VpcId"
            case createTimestamp = "CreateTimestamp"
            case clusterId = "ClusterId"
        }
    }

    public struct CreateHsmResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Hsm", required: false, type: .structure)
        ]
        /// Information about the HSM that was created.
        public let hsm: Hsm?

        public init(hsm: Hsm? = nil) {
            self.hsm = hsm
        }

        private enum CodingKeys: String, CodingKey {
            case hsm = "Hsm"
        }
    }

    public struct RestoreBackupRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BackupId", required: true, type: .string)
        ]
        /// The ID of the backup to be restored. To find the ID of a backup, use the DescribeBackups operation.
        public let backupId: String

        public init(backupId: String) {
            self.backupId = backupId
        }

        private enum CodingKeys: String, CodingKey {
            case backupId = "BackupId"
        }
    }

    public struct InitializeClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", required: false, type: .enum), 
            AWSShapeMember(label: "StateMessage", required: false, type: .string)
        ]
        /// The cluster's state.
        public let state: ClusterState?
        /// A description of the cluster's state.
        public let stateMessage: String?

        public init(state: ClusterState? = nil, stateMessage: String? = nil) {
            self.state = state
            self.stateMessage = stateMessage
        }

        private enum CodingKeys: String, CodingKey {
            case state = "State"
            case stateMessage = "StateMessage"
        }
    }

    public struct DeleteClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterId", required: true, type: .string)
        ]
        /// The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use DescribeClusters.
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        private enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    public struct DestinationBackup: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreateTimestamp", required: false, type: .timestamp), 
            AWSShapeMember(label: "SourceBackup", required: false, type: .string), 
            AWSShapeMember(label: "SourceCluster", required: false, type: .string), 
            AWSShapeMember(label: "SourceRegion", required: false, type: .string)
        ]
        public let createTimestamp: TimeStamp?
        public let sourceBackup: String?
        public let sourceCluster: String?
        public let sourceRegion: String?

        public init(createTimestamp: TimeStamp? = nil, sourceBackup: String? = nil, sourceCluster: String? = nil, sourceRegion: String? = nil) {
            self.createTimestamp = createTimestamp
            self.sourceBackup = sourceBackup
            self.sourceCluster = sourceCluster
            self.sourceRegion = sourceRegion
        }

        private enum CodingKeys: String, CodingKey {
            case createTimestamp = "CreateTimestamp"
            case sourceBackup = "SourceBackup"
            case sourceCluster = "SourceCluster"
            case sourceRegion = "SourceRegion"
        }
    }

    public struct CreateHsmRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AvailabilityZone", required: true, type: .string), 
            AWSShapeMember(label: "ClusterId", required: true, type: .string), 
            AWSShapeMember(label: "IpAddress", required: false, type: .string)
        ]
        /// The Availability Zone where you are creating the HSM. To find the cluster's Availability Zones, use DescribeClusters.
        public let availabilityZone: String
        /// The identifier (ID) of the HSM's cluster. To find the cluster ID, use DescribeClusters.
        public let clusterId: String
        /// The HSM's IP address. If you specify an IP address, use an available address from the subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify an IP address, one is chosen for you from that subnet.
        public let ipAddress: String?

        public init(availabilityZone: String, clusterId: String, ipAddress: String? = nil) {
            self.availabilityZone = availabilityZone
            self.clusterId = clusterId
            self.ipAddress = ipAddress
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case clusterId = "ClusterId"
            case ipAddress = "IpAddress"
        }
    }

    public struct ListTagsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "TagList", required: true, type: .list)
        ]
        /// An opaque string that indicates that the response contains only a subset of tags. Use this value in a subsequent ListTags request to get more tags.
        public let nextToken: String?
        /// A list of tags.
        public let tagList: [Tag]

        public init(nextToken: String? = nil, tagList: [Tag]) {
            self.nextToken = nextToken
            self.tagList = tagList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case tagList = "TagList"
        }
    }

    public enum ClusterState: String, CustomStringConvertible, Codable {
        case createInProgress = "CREATE_IN_PROGRESS"
        case uninitialized = "UNINITIALIZED"
        case initializeInProgress = "INITIALIZE_IN_PROGRESS"
        case initialized = "INITIALIZED"
        case active = "ACTIVE"
        case updateInProgress = "UPDATE_IN_PROGRESS"
        case deleteInProgress = "DELETE_IN_PROGRESS"
        case deleted = "DELETED"
        case degraded = "DEGRADED"
        public var description: String { return self.rawValue }
    }

    public struct TagResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TagList", required: true, type: .list), 
            AWSShapeMember(label: "ResourceId", required: true, type: .string)
        ]
        /// A list of one or more tags.
        public let tagList: [Tag]
        /// The cluster identifier (ID) for the cluster that you are tagging. To find the cluster ID, use DescribeClusters.
        public let resourceId: String

        public init(tagList: [Tag], resourceId: String) {
            self.tagList = tagList
            self.resourceId = resourceId
        }

        private enum CodingKeys: String, CodingKey {
            case tagList = "TagList"
            case resourceId = "ResourceId"
        }
    }

    public struct DescribeClustersRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Filters", required: false, type: .map), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer)
        ]
        /// One or more filters to limit the items returned in the response. Use the clusterIds filter to return only the specified clusters. Specify clusters by their cluster identifier (ID). Use the vpcIds filter to return only the clusters in the specified virtual private clouds (VPCs). Specify VPCs by their VPC identifier (ID). Use the states filter to return only clusters that match the specified state.
        public let filters: [String: [String]]?
        /// The NextToken value that you received in the previous response. Use this value to get more clusters.
        public let nextToken: String?
        /// The maximum number of clusters to return in the response. When there are more clusters than the number you specify, the response contains a NextToken value.
        public let maxResults: Int32?

        public init(filters: [String: [String]]? = nil, nextToken: String? = nil, maxResults: Int32? = nil) {
            self.filters = filters
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
        }
    }

    public struct DeleteClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Cluster", required: false, type: .structure)
        ]
        /// Information about the cluster that was deleted.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "Cluster"
        }
    }

}