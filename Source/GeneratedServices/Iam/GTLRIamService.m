// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Identity and Access Management (IAM) API (iam/v1)
// Description:
//   Manages identity and access control for Google Cloud Platform resources,
//   including the creation of service accounts, which you can use to
//   authenticate to Google and make API calls.
// Documentation:
//   https://cloud.google.com/iam/

#import "GTLRIam.h"

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeIamCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRIamService
//

@implementation GTLRIamService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://iam.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint", @"pp" ];
  }
  return self;
}

@end
