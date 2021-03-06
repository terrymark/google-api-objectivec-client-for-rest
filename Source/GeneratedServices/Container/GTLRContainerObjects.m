// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Container Engine API (container/v1)
// Description:
//   Builds and manages clusters that run container-based applications, powered
//   by open source Kubernetes technology.
// Documentation:
//   https://cloud.google.com/container-engine/

#import "GTLRContainerObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRContainer_Cluster.status
NSString * const kGTLRContainer_Cluster_Status_Error           = @"ERROR";
NSString * const kGTLRContainer_Cluster_Status_Provisioning    = @"PROVISIONING";
NSString * const kGTLRContainer_Cluster_Status_Reconciling     = @"RECONCILING";
NSString * const kGTLRContainer_Cluster_Status_Running         = @"RUNNING";
NSString * const kGTLRContainer_Cluster_Status_StatusUnspecified = @"STATUS_UNSPECIFIED";
NSString * const kGTLRContainer_Cluster_Status_Stopping        = @"STOPPING";

// GTLRContainer_NodePool.status
NSString * const kGTLRContainer_NodePool_Status_Error          = @"ERROR";
NSString * const kGTLRContainer_NodePool_Status_Provisioning   = @"PROVISIONING";
NSString * const kGTLRContainer_NodePool_Status_Reconciling    = @"RECONCILING";
NSString * const kGTLRContainer_NodePool_Status_Running        = @"RUNNING";
NSString * const kGTLRContainer_NodePool_Status_RunningWithError = @"RUNNING_WITH_ERROR";
NSString * const kGTLRContainer_NodePool_Status_StatusUnspecified = @"STATUS_UNSPECIFIED";
NSString * const kGTLRContainer_NodePool_Status_Stopping       = @"STOPPING";

// GTLRContainer_Operation.operationType
NSString * const kGTLRContainer_Operation_OperationType_CreateCluster = @"CREATE_CLUSTER";
NSString * const kGTLRContainer_Operation_OperationType_CreateNodePool = @"CREATE_NODE_POOL";
NSString * const kGTLRContainer_Operation_OperationType_DeleteCluster = @"DELETE_CLUSTER";
NSString * const kGTLRContainer_Operation_OperationType_DeleteNodePool = @"DELETE_NODE_POOL";
NSString * const kGTLRContainer_Operation_OperationType_RepairCluster = @"REPAIR_CLUSTER";
NSString * const kGTLRContainer_Operation_OperationType_SetNodePoolManagement = @"SET_NODE_POOL_MANAGEMENT";
NSString * const kGTLRContainer_Operation_OperationType_TypeUnspecified = @"TYPE_UNSPECIFIED";
NSString * const kGTLRContainer_Operation_OperationType_UpdateCluster = @"UPDATE_CLUSTER";
NSString * const kGTLRContainer_Operation_OperationType_UpgradeMaster = @"UPGRADE_MASTER";
NSString * const kGTLRContainer_Operation_OperationType_UpgradeNodes = @"UPGRADE_NODES";

// GTLRContainer_Operation.status
NSString * const kGTLRContainer_Operation_Status_Aborting      = @"ABORTING";
NSString * const kGTLRContainer_Operation_Status_Done          = @"DONE";
NSString * const kGTLRContainer_Operation_Status_Pending       = @"PENDING";
NSString * const kGTLRContainer_Operation_Status_Running       = @"RUNNING";
NSString * const kGTLRContainer_Operation_Status_StatusUnspecified = @"STATUS_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRContainer_AddonsConfig
//

@implementation GTLRContainer_AddonsConfig
@dynamic horizontalPodAutoscaling, httpLoadBalancing;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_AutoUpgradeOptions
//

@implementation GTLRContainer_AutoUpgradeOptions
@dynamic autoUpgradeStartTime, descriptionProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_CancelOperationRequest
//

@implementation GTLRContainer_CancelOperationRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_Cluster
//

@implementation GTLRContainer_Cluster
@dynamic addonsConfig, clusterIpv4Cidr, createTime, currentMasterVersion,
         currentNodeCount, currentNodeVersion, descriptionProperty,
         enableKubernetesAlpha, endpoint, expireTime, initialClusterVersion,
         initialNodeCount, instanceGroupUrls, locations, loggingService,
         masterAuth, monitoringService, name, network, nodeConfig,
         nodeIpv4CidrSize, nodePools, selfLink, servicesIpv4Cidr, status,
         statusMessage, subnetwork, zoneProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"zoneProperty" : @"zone"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"instanceGroupUrls" : [NSString class],
    @"locations" : [NSString class],
    @"nodePools" : [GTLRContainer_NodePool class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ClusterUpdate
//

@implementation GTLRContainer_ClusterUpdate
@dynamic desiredAddonsConfig, desiredImageType, desiredLocations,
         desiredMasterVersion, desiredMonitoringService,
         desiredNodePoolAutoscaling, desiredNodePoolId, desiredNodeVersion;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"desiredLocations" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_CreateClusterRequest
//

@implementation GTLRContainer_CreateClusterRequest
@dynamic cluster;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_CreateNodePoolRequest
//

@implementation GTLRContainer_CreateNodePoolRequest
@dynamic nodePool;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_Empty
//

@implementation GTLRContainer_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_HorizontalPodAutoscaling
//

@implementation GTLRContainer_HorizontalPodAutoscaling
@dynamic disabled;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_HttpLoadBalancing
//

@implementation GTLRContainer_HttpLoadBalancing
@dynamic disabled;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ListClustersResponse
//

@implementation GTLRContainer_ListClustersResponse
@dynamic clusters, missingZones;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"clusters" : [GTLRContainer_Cluster class],
    @"missingZones" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ListNodePoolsResponse
//

@implementation GTLRContainer_ListNodePoolsResponse
@dynamic nodePools;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"nodePools" : [GTLRContainer_NodePool class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ListOperationsResponse
//

@implementation GTLRContainer_ListOperationsResponse
@dynamic missingZones, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"missingZones" : [NSString class],
    @"operations" : [GTLRContainer_Operation class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_MasterAuth
//

@implementation GTLRContainer_MasterAuth
@dynamic clientCertificate, clientKey, clusterCaCertificate, password, username;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodeConfig
//

@implementation GTLRContainer_NodeConfig
@dynamic diskSizeGb, imageType, labels, localSsdCount, machineType, metadata,
         oauthScopes, preemptible, serviceAccount, tags;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"oauthScopes" : [NSString class],
    @"tags" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodeConfig_Labels
//

@implementation GTLRContainer_NodeConfig_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodeConfig_Metadata
//

@implementation GTLRContainer_NodeConfig_Metadata

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodeManagement
//

@implementation GTLRContainer_NodeManagement
@dynamic autoUpgrade, upgradeOptions;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodePool
//

@implementation GTLRContainer_NodePool
@dynamic autoscaling, config, initialNodeCount, instanceGroupUrls, management,
         name, selfLink, status, statusMessage, version;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"instanceGroupUrls" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_NodePoolAutoscaling
//

@implementation GTLRContainer_NodePoolAutoscaling
@dynamic enabled, maxNodeCount, minNodeCount;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_Operation
//

@implementation GTLRContainer_Operation
@dynamic detail, name, operationType, selfLink, status, statusMessage,
         targetLink, zoneProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"zoneProperty" : @"zone" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_RollbackNodePoolUpgradeRequest
//

@implementation GTLRContainer_RollbackNodePoolUpgradeRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_ServerConfig
//

@implementation GTLRContainer_ServerConfig
@dynamic defaultClusterVersion, defaultImageType, validImageTypes,
         validMasterVersions, validNodeVersions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"validImageTypes" : [NSString class],
    @"validMasterVersions" : [NSString class],
    @"validNodeVersions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_SetNodePoolManagementRequest
//

@implementation GTLRContainer_SetNodePoolManagementRequest
@dynamic management;
@end


// ----------------------------------------------------------------------------
//
//   GTLRContainer_UpdateClusterRequest
//

@implementation GTLRContainer_UpdateClusterRequest
@dynamic update;
@end
