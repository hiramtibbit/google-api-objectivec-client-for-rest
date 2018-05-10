// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Runtime Configuration API (runtimeconfig/v1)
// Description:
//   The Runtime Configurator allows you to dynamically configure and expose
//   variables through Google Cloud Platform. In addition, you can also set
//   Watchers and Waiters that will watch for changes to your data and return
//   based on certain conditions.
// Documentation:
//   https://cloud.google.com/deployment-manager/runtime-configurator/

#import "GTLRCloudRuntimeConfigQuery.h"

#import "GTLRCloudRuntimeConfigObjects.h"

@implementation GTLRCloudRuntimeConfigQuery

@dynamic fields;

@end

@implementation GTLRCloudRuntimeConfigQuery_OperationsCancel

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudRuntimeConfig_CancelOperationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:cancel";
  GTLRCloudRuntimeConfigQuery_OperationsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRuntimeConfig_Empty class];
  query.loggingName = @"runtimeconfig.operations.cancel";
  return query;
}

@end

@implementation GTLRCloudRuntimeConfigQuery_OperationsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRuntimeConfigQuery_OperationsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRuntimeConfig_Empty class];
  query.loggingName = @"runtimeconfig.operations.delete";
  return query;
}

@end

@implementation GTLRCloudRuntimeConfigQuery_OperationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRuntimeConfigQuery_OperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRuntimeConfig_ListOperationsResponse class];
  query.loggingName = @"runtimeconfig.operations.list";
  return query;
}

@end
