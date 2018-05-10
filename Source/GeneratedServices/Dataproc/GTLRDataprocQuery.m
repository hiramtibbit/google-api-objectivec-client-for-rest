// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Dataproc API (dataproc/v1)
// Description:
//   Manages Hadoop-based clusters and jobs on Google Cloud Platform.
// Documentation:
//   https://cloud.google.com/dataproc/

#import "GTLRDataprocQuery.h"

#import "GTLRDataprocObjects.h"

// ----------------------------------------------------------------------------
// Constants

// jobStateMatcher
NSString * const kGTLRDataprocJobStateMatcherActive    = @"ACTIVE";
NSString * const kGTLRDataprocJobStateMatcherAll       = @"ALL";
NSString * const kGTLRDataprocJobStateMatcherNonActive = @"NON_ACTIVE";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRDataprocQuery

@dynamic fields;

@end

@implementation GTLRDataprocQuery_ProjectsRegionsClustersCreate

@dynamic projectId, region, requestId;

+ (instancetype)queryWithObject:(GTLRDataproc_Cluster *)object
                      projectId:(NSString *)projectId
                         region:(NSString *)region {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/clusters";
  GTLRDataprocQuery_ProjectsRegionsClustersCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.region = region;
  query.expectedObjectClass = [GTLRDataproc_Operation class];
  query.loggingName = @"dataproc.projects.regions.clusters.create";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsClustersDelete

@dynamic clusterName, clusterUuid, projectId, region, requestId;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region
                       clusterName:(NSString *)clusterName {
  NSArray *pathParams = @[
    @"clusterName", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/clusters/{clusterName}";
  GTLRDataprocQuery_ProjectsRegionsClustersDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.clusterName = clusterName;
  query.expectedObjectClass = [GTLRDataproc_Operation class];
  query.loggingName = @"dataproc.projects.regions.clusters.delete";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsClustersDiagnose

@dynamic clusterName, projectId, region;

+ (instancetype)queryWithObject:(GTLRDataproc_DiagnoseClusterRequest *)object
                      projectId:(NSString *)projectId
                         region:(NSString *)region
                    clusterName:(NSString *)clusterName {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"clusterName", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:diagnose";
  GTLRDataprocQuery_ProjectsRegionsClustersDiagnose *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.region = region;
  query.clusterName = clusterName;
  query.expectedObjectClass = [GTLRDataproc_Operation class];
  query.loggingName = @"dataproc.projects.regions.clusters.diagnose";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsClustersGet

@dynamic clusterName, projectId, region;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region
                       clusterName:(NSString *)clusterName {
  NSArray *pathParams = @[
    @"clusterName", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/clusters/{clusterName}";
  GTLRDataprocQuery_ProjectsRegionsClustersGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.clusterName = clusterName;
  query.expectedObjectClass = [GTLRDataproc_Cluster class];
  query.loggingName = @"dataproc.projects.regions.clusters.get";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsClustersList

@dynamic filter, pageSize, pageToken, projectId, region;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region {
  NSArray *pathParams = @[
    @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/clusters";
  GTLRDataprocQuery_ProjectsRegionsClustersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.expectedObjectClass = [GTLRDataproc_ListClustersResponse class];
  query.loggingName = @"dataproc.projects.regions.clusters.list";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsClustersPatch

@dynamic clusterName, gracefulDecommissionTimeout, projectId, region, requestId,
         updateMask;

+ (instancetype)queryWithObject:(GTLRDataproc_Cluster *)object
                      projectId:(NSString *)projectId
                         region:(NSString *)region
                    clusterName:(NSString *)clusterName {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"clusterName", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/clusters/{clusterName}";
  GTLRDataprocQuery_ProjectsRegionsClustersPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.region = region;
  query.clusterName = clusterName;
  query.expectedObjectClass = [GTLRDataproc_Operation class];
  query.loggingName = @"dataproc.projects.regions.clusters.patch";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsJobsCancel

@dynamic jobId, projectId, region;

+ (instancetype)queryWithObject:(GTLRDataproc_CancelJobRequest *)object
                      projectId:(NSString *)projectId
                         region:(NSString *)region
                          jobId:(NSString *)jobId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"jobId", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/jobs/{jobId}:cancel";
  GTLRDataprocQuery_ProjectsRegionsJobsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.region = region;
  query.jobId = jobId;
  query.expectedObjectClass = [GTLRDataproc_Job class];
  query.loggingName = @"dataproc.projects.regions.jobs.cancel";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsJobsDelete

@dynamic jobId, projectId, region;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region
                             jobId:(NSString *)jobId {
  NSArray *pathParams = @[
    @"jobId", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/jobs/{jobId}";
  GTLRDataprocQuery_ProjectsRegionsJobsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.jobId = jobId;
  query.expectedObjectClass = [GTLRDataproc_Empty class];
  query.loggingName = @"dataproc.projects.regions.jobs.delete";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsJobsGet

@dynamic jobId, projectId, region;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region
                             jobId:(NSString *)jobId {
  NSArray *pathParams = @[
    @"jobId", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/jobs/{jobId}";
  GTLRDataprocQuery_ProjectsRegionsJobsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.jobId = jobId;
  query.expectedObjectClass = [GTLRDataproc_Job class];
  query.loggingName = @"dataproc.projects.regions.jobs.get";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsJobsList

@dynamic clusterName, filter, jobStateMatcher, pageSize, pageToken, projectId,
         region;

+ (instancetype)queryWithProjectId:(NSString *)projectId
                            region:(NSString *)region {
  NSArray *pathParams = @[
    @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/jobs";
  GTLRDataprocQuery_ProjectsRegionsJobsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.region = region;
  query.expectedObjectClass = [GTLRDataproc_ListJobsResponse class];
  query.loggingName = @"dataproc.projects.regions.jobs.list";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsJobsPatch

@dynamic jobId, projectId, region, updateMask;

+ (instancetype)queryWithObject:(GTLRDataproc_Job *)object
                      projectId:(NSString *)projectId
                         region:(NSString *)region
                          jobId:(NSString *)jobId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"jobId", @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/jobs/{jobId}";
  GTLRDataprocQuery_ProjectsRegionsJobsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.region = region;
  query.jobId = jobId;
  query.expectedObjectClass = [GTLRDataproc_Job class];
  query.loggingName = @"dataproc.projects.regions.jobs.patch";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsJobsSubmit

@dynamic projectId, region;

+ (instancetype)queryWithObject:(GTLRDataproc_SubmitJobRequest *)object
                      projectId:(NSString *)projectId
                         region:(NSString *)region {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"projectId", @"region"
  ];
  NSString *pathURITemplate = @"v1/projects/{projectId}/regions/{region}/jobs:submit";
  GTLRDataprocQuery_ProjectsRegionsJobsSubmit *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.projectId = projectId;
  query.region = region;
  query.expectedObjectClass = [GTLRDataproc_Job class];
  query.loggingName = @"dataproc.projects.regions.jobs.submit";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsOperationsCancel

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:cancel";
  GTLRDataprocQuery_ProjectsRegionsOperationsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDataproc_Empty class];
  query.loggingName = @"dataproc.projects.regions.operations.cancel";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsOperationsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRDataprocQuery_ProjectsRegionsOperationsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDataproc_Empty class];
  query.loggingName = @"dataproc.projects.regions.operations.delete";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRDataprocQuery_ProjectsRegionsOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDataproc_Operation class];
  query.loggingName = @"dataproc.projects.regions.operations.get";
  return query;
}

@end

@implementation GTLRDataprocQuery_ProjectsRegionsOperationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRDataprocQuery_ProjectsRegionsOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDataproc_ListOperationsResponse class];
  query.loggingName = @"dataproc.projects.regions.operations.list";
  return query;
}

@end
