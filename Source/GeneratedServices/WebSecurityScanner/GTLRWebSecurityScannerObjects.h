// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Web Security Scanner API (websecurityscanner/v1alpha)
// Description:
//   Web Security Scanner API (under development).
// Documentation:
//   https://cloud.google.com/security-scanner/

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRWebSecurityScanner_Authentication;
@class GTLRWebSecurityScanner_CrawledUrl;
@class GTLRWebSecurityScanner_CustomAccount;
@class GTLRWebSecurityScanner_Finding;
@class GTLRWebSecurityScanner_FindingTypeStats;
@class GTLRWebSecurityScanner_GoogleAccount;
@class GTLRWebSecurityScanner_OutdatedLibrary;
@class GTLRWebSecurityScanner_ScanConfig;
@class GTLRWebSecurityScanner_ScanRun;
@class GTLRWebSecurityScanner_Schedule;
@class GTLRWebSecurityScanner_ViolatingResource;
@class GTLRWebSecurityScanner_VulnerableParameters;
@class GTLRWebSecurityScanner_Xss;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRWebSecurityScanner_Finding.findingType

/**
 *  An application appears to be transmitting a password field in clear text.
 *  An attacker can eavesdrop network traffic and sniff the password field.
 *
 *  Value: "CLEAR_TEXT_PASSWORD"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_Finding_FindingType_ClearTextPassword;
/**
 *  The invalid finding type.
 *
 *  Value: "FINDING_TYPE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_Finding_FindingType_FindingTypeUnspecified;
/**
 *  A page that was served over HTTPS also resources over HTTP. A
 *  man-in-the-middle attacker could tamper with the HTTP resource and gain
 *  full access to the website that loads the resource or to monitor the
 *  actions taken by the user.
 *
 *  Value: "MIXED_CONTENT"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_Finding_FindingType_MixedContent;
/**
 *  The version of an included library is known to contain a security issue.
 *  The scanner checks the version of library in use against a known list of
 *  vulnerable libraries. False positives are possible if the version
 *  detection fails or if the library has been manually patched.
 *
 *  Value: "OUTDATED_LIBRARY"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_Finding_FindingType_OutdatedLibrary;
/**
 *  This type of vulnerability occurs when the value of a request parameter
 *  is reflected at the beginning of the response, for example, in requests
 *  using JSONP. Under certain circumstances, an attacker may be able to
 *  supply an alphanumeric-only Flash file in the vulnerable parameter
 *  causing the browser to execute the Flash file as if it originated on the
 *  vulnerable server.
 *
 *  Value: "ROSETTA_FLASH"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_Finding_FindingType_RosettaFlash;
/**
 *  A cross-site scripting (XSS) bug is found via JavaScript callback. For
 *  detailed explanations on XSS, see
 *  https://www.google.com/about/appsecurity/learning/xss/.
 *
 *  Value: "XSS_CALLBACK"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_Finding_FindingType_XssCallback;
/**
 *  A potential cross-site scripting (XSS) bug due to JavaScript breakage.
 *  In some circumstances, the application under test might modify the test
 *  string before it is parsed by the browser. When the browser attempts to
 *  runs this modified test string, it will likely break and throw a
 *  JavaScript execution error, thus an injection issue is occurring.
 *  However, it may not be exploitable. Manual verification is needed to see
 *  if the test string modifications can be evaded and confirm that the issue
 *  is in fact an XSS vulnerability. For detailed explanations on XSS, see
 *  https://www.google.com/about/appsecurity/learning/xss/.
 *
 *  Value: "XSS_ERROR"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_Finding_FindingType_XssError;

// ----------------------------------------------------------------------------
// GTLRWebSecurityScanner_FindingTypeStats.findingType

/**
 *  An application appears to be transmitting a password field in clear text.
 *  An attacker can eavesdrop network traffic and sniff the password field.
 *
 *  Value: "CLEAR_TEXT_PASSWORD"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_FindingTypeStats_FindingType_ClearTextPassword;
/**
 *  The invalid finding type.
 *
 *  Value: "FINDING_TYPE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_FindingTypeStats_FindingType_FindingTypeUnspecified;
/**
 *  A page that was served over HTTPS also resources over HTTP. A
 *  man-in-the-middle attacker could tamper with the HTTP resource and gain
 *  full access to the website that loads the resource or to monitor the
 *  actions taken by the user.
 *
 *  Value: "MIXED_CONTENT"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_FindingTypeStats_FindingType_MixedContent;
/**
 *  The version of an included library is known to contain a security issue.
 *  The scanner checks the version of library in use against a known list of
 *  vulnerable libraries. False positives are possible if the version
 *  detection fails or if the library has been manually patched.
 *
 *  Value: "OUTDATED_LIBRARY"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_FindingTypeStats_FindingType_OutdatedLibrary;
/**
 *  This type of vulnerability occurs when the value of a request parameter
 *  is reflected at the beginning of the response, for example, in requests
 *  using JSONP. Under certain circumstances, an attacker may be able to
 *  supply an alphanumeric-only Flash file in the vulnerable parameter
 *  causing the browser to execute the Flash file as if it originated on the
 *  vulnerable server.
 *
 *  Value: "ROSETTA_FLASH"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_FindingTypeStats_FindingType_RosettaFlash;
/**
 *  A cross-site scripting (XSS) bug is found via JavaScript callback. For
 *  detailed explanations on XSS, see
 *  https://www.google.com/about/appsecurity/learning/xss/.
 *
 *  Value: "XSS_CALLBACK"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_FindingTypeStats_FindingType_XssCallback;
/**
 *  A potential cross-site scripting (XSS) bug due to JavaScript breakage.
 *  In some circumstances, the application under test might modify the test
 *  string before it is parsed by the browser. When the browser attempts to
 *  runs this modified test string, it will likely break and throw a
 *  JavaScript execution error, thus an injection issue is occurring.
 *  However, it may not be exploitable. Manual verification is needed to see
 *  if the test string modifications can be evaded and confirm that the issue
 *  is in fact an XSS vulnerability. For detailed explanations on XSS, see
 *  https://www.google.com/about/appsecurity/learning/xss/.
 *
 *  Value: "XSS_ERROR"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_FindingTypeStats_FindingType_XssError;

// ----------------------------------------------------------------------------
// GTLRWebSecurityScanner_ScanConfig.targetPlatforms

/** Value: "APP_ENGINE" */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanConfig_TargetPlatforms_AppEngine;
/** Value: "COMPUTE" */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanConfig_TargetPlatforms_Compute;
/** Value: "TARGET_PLATFORM_UNSPECIFIED" */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanConfig_TargetPlatforms_TargetPlatformUnspecified;

// ----------------------------------------------------------------------------
// GTLRWebSecurityScanner_ScanConfig.userAgent

/**
 *  Chrome on Android.
 *
 *  Value: "CHROME_ANDROID"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanConfig_UserAgent_ChromeAndroid;
/**
 *  Chrome on Linux. This is the service default if unspecified.
 *
 *  Value: "CHROME_LINUX"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanConfig_UserAgent_ChromeLinux;
/**
 *  Safari on IPhone.
 *
 *  Value: "SAFARI_IPHONE"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanConfig_UserAgent_SafariIphone;
/**
 *  The user agent is unknown. Service will default to CHROME_LINUX.
 *
 *  Value: "USER_AGENT_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanConfig_UserAgent_UserAgentUnspecified;

// ----------------------------------------------------------------------------
// GTLRWebSecurityScanner_ScanRun.executionState

/**
 *  Represents an invalid state caused by internal server error. This value
 *  should never be returned.
 *
 *  Value: "EXECUTION_STATE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanRun_ExecutionState_ExecutionStateUnspecified;
/**
 *  The scan is either finished or stopped by user.
 *
 *  Value: "FINISHED"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanRun_ExecutionState_Finished;
/**
 *  The scan is waiting in the queue.
 *
 *  Value: "QUEUED"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanRun_ExecutionState_Queued;
/**
 *  The scan is in progress.
 *
 *  Value: "SCANNING"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanRun_ExecutionState_Scanning;

// ----------------------------------------------------------------------------
// GTLRWebSecurityScanner_ScanRun.resultState

/**
 *  The scan finished with errors.
 *
 *  Value: "ERROR"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanRun_ResultState_Error;
/**
 *  The scan was terminated by user.
 *
 *  Value: "KILLED"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanRun_ResultState_Killed;
/**
 *  Default value. This value is returned when the ScanRun is not yet
 *  finished.
 *
 *  Value: "RESULT_STATE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanRun_ResultState_ResultStateUnspecified;
/**
 *  The scan finished without errors.
 *
 *  Value: "SUCCESS"
 */
GTLR_EXTERN NSString * const kGTLRWebSecurityScanner_ScanRun_ResultState_Success;

/**
 *  Scan authentication configuration.
 */
@interface GTLRWebSecurityScanner_Authentication : GTLRObject

/** Authentication using a custom account. */
@property(nonatomic, strong, nullable) GTLRWebSecurityScanner_CustomAccount *customAccount;

/** Authentication using a Google account. */
@property(nonatomic, strong, nullable) GTLRWebSecurityScanner_GoogleAccount *googleAccount;

@end


/**
 *  A CrawledUrl resource represents a URL that was crawled during a ScanRun.
 *  Web
 *  Security Scanner Service crawls the web applications, following all links
 *  within the scope of sites, to find the URLs to test against.
 */
@interface GTLRWebSecurityScanner_CrawledUrl : GTLRObject

/**
 *  Output only.
 *  The body of the request that was used to visit the URL.
 */
@property(nonatomic, copy, nullable) NSString *body;

/**
 *  Output only.
 *  The http method of the request that was used to visit the URL, in
 *  uppercase.
 */
@property(nonatomic, copy, nullable) NSString *httpMethod;

/**
 *  Output only.
 *  The URL that was crawled.
 */
@property(nonatomic, copy, nullable) NSString *url;

@end


/**
 *  Describes authentication configuration that uses a custom account.
 */
@interface GTLRWebSecurityScanner_CustomAccount : GTLRObject

/**
 *  Required.
 *  The login form URL of the website.
 */
@property(nonatomic, copy, nullable) NSString *loginUrl;

/**
 *  Input only.
 *  Required.
 *  The password of the custom account. The credential is stored encrypted
 *  and not returned in any response.
 */
@property(nonatomic, copy, nullable) NSString *password;

/**
 *  Required.
 *  The user name of the custom account.
 */
@property(nonatomic, copy, nullable) NSString *username;

@end


/**
 *  A generic empty message that you can re-use to avoid defining duplicated
 *  empty messages in your APIs. A typical example is to use it as the request
 *  or the response type of an API method. For instance:
 *  service Foo {
 *  rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *  }
 *  The JSON representation for `Empty` is empty JSON object `{}`.
 */
@interface GTLRWebSecurityScanner_Empty : GTLRObject
@end


/**
 *  A Finding resource represents a vulnerability instance identified during a
 *  ScanRun.
 */
@interface GTLRWebSecurityScanner_Finding : GTLRObject

/**
 *  Output only.
 *  The body of the request that triggered the vulnerability.
 */
@property(nonatomic, copy, nullable) NSString *body;

/**
 *  Output only.
 *  The description of the vulnerability.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  Output only.
 *  The URL where the browser lands when the vulnerability is detected.
 */
@property(nonatomic, copy, nullable) NSString *finalUrl;

/**
 *  Output only.
 *  The type of the Finding.
 *
 *  Likely values:
 *    @arg @c kGTLRWebSecurityScanner_Finding_FindingType_ClearTextPassword An
 *        application appears to be transmitting a password field in clear text.
 *        An attacker can eavesdrop network traffic and sniff the password
 *        field. (Value: "CLEAR_TEXT_PASSWORD")
 *    @arg @c kGTLRWebSecurityScanner_Finding_FindingType_FindingTypeUnspecified
 *        The invalid finding type. (Value: "FINDING_TYPE_UNSPECIFIED")
 *    @arg @c kGTLRWebSecurityScanner_Finding_FindingType_MixedContent A page
 *        that was served over HTTPS also resources over HTTP. A
 *        man-in-the-middle attacker could tamper with the HTTP resource and
 *        gain
 *        full access to the website that loads the resource or to monitor the
 *        actions taken by the user. (Value: "MIXED_CONTENT")
 *    @arg @c kGTLRWebSecurityScanner_Finding_FindingType_OutdatedLibrary The
 *        version of an included library is known to contain a security issue.
 *        The scanner checks the version of library in use against a known list
 *        of
 *        vulnerable libraries. False positives are possible if the version
 *        detection fails or if the library has been manually patched. (Value:
 *        "OUTDATED_LIBRARY")
 *    @arg @c kGTLRWebSecurityScanner_Finding_FindingType_RosettaFlash This type
 *        of vulnerability occurs when the value of a request parameter
 *        is reflected at the beginning of the response, for example, in
 *        requests
 *        using JSONP. Under certain circumstances, an attacker may be able to
 *        supply an alphanumeric-only Flash file in the vulnerable parameter
 *        causing the browser to execute the Flash file as if it originated on
 *        the
 *        vulnerable server. (Value: "ROSETTA_FLASH")
 *    @arg @c kGTLRWebSecurityScanner_Finding_FindingType_XssCallback A
 *        cross-site scripting (XSS) bug is found via JavaScript callback. For
 *        detailed explanations on XSS, see
 *        https://www.google.com/about/appsecurity/learning/xss/. (Value:
 *        "XSS_CALLBACK")
 *    @arg @c kGTLRWebSecurityScanner_Finding_FindingType_XssError A potential
 *        cross-site scripting (XSS) bug due to JavaScript breakage.
 *        In some circumstances, the application under test might modify the
 *        test
 *        string before it is parsed by the browser. When the browser attempts
 *        to
 *        runs this modified test string, it will likely break and throw a
 *        JavaScript execution error, thus an injection issue is occurring.
 *        However, it may not be exploitable. Manual verification is needed to
 *        see
 *        if the test string modifications can be evaded and confirm that the
 *        issue
 *        is in fact an XSS vulnerability. For detailed explanations on XSS, see
 *        https://www.google.com/about/appsecurity/learning/xss/. (Value:
 *        "XSS_ERROR")
 */
@property(nonatomic, copy, nullable) NSString *findingType;

/**
 *  Output only.
 *  If the vulnerability was originated from nested IFrame, the immediate
 *  parent IFrame is reported.
 */
@property(nonatomic, copy, nullable) NSString *frameUrl;

/**
 *  Output only.
 *  The URL produced by the server-side fuzzer and used in the request that
 *  triggered the vulnerability.
 */
@property(nonatomic, copy, nullable) NSString *fuzzedUrl;

/**
 *  Output only.
 *  The http method of the request that triggered the vulnerability, in
 *  uppercase.
 */
@property(nonatomic, copy, nullable) NSString *httpMethod;

/**
 *  Output only.
 *  The resource name of the Finding. The name follows the format of
 *  'projects/{projectId}/scanConfigs/{scanConfigId}/scanruns/{scanRunId}/findings/{findingId}'.
 *  The finding IDs are generated by the system.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Output only.
 *  An addon containing information about outdated libraries.
 */
@property(nonatomic, strong, nullable) GTLRWebSecurityScanner_OutdatedLibrary *outdatedLibrary;

/**
 *  Output only.
 *  The URL containing human-readable payload that user can leverage to
 *  reproduce the vulnerability.
 */
@property(nonatomic, copy, nullable) NSString *reproductionUrl;

/**
 *  Output only.
 *  The tracking ID uniquely identifies a vulnerability instance across
 *  multiple ScanRuns.
 */
@property(nonatomic, copy, nullable) NSString *trackingId;

/**
 *  Output only.
 *  An addon containing detailed information regarding any resource causing the
 *  vulnerability such as JavaScript sources, image, audio files, etc.
 */
@property(nonatomic, strong, nullable) GTLRWebSecurityScanner_ViolatingResource *violatingResource;

/**
 *  Output only.
 *  An addon containing information about request parameters which were found
 *  to be vulnerable.
 */
@property(nonatomic, strong, nullable) GTLRWebSecurityScanner_VulnerableParameters *vulnerableParameters;

/**
 *  Output only.
 *  An addon containing information reported for an XSS, if any.
 */
@property(nonatomic, strong, nullable) GTLRWebSecurityScanner_Xss *xss;

@end


/**
 *  A FindingTypeStats resource represents stats regarding a specific
 *  FindingType
 *  of Findings under a given ScanRun.
 */
@interface GTLRWebSecurityScanner_FindingTypeStats : GTLRObject

/**
 *  Output only.
 *  The count of findings belonging to this finding type.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *findingCount;

/**
 *  Output only.
 *  The finding type associated with the stats.
 *
 *  Likely values:
 *    @arg @c kGTLRWebSecurityScanner_FindingTypeStats_FindingType_ClearTextPassword
 *        An application appears to be transmitting a password field in clear
 *        text.
 *        An attacker can eavesdrop network traffic and sniff the password
 *        field. (Value: "CLEAR_TEXT_PASSWORD")
 *    @arg @c kGTLRWebSecurityScanner_FindingTypeStats_FindingType_FindingTypeUnspecified
 *        The invalid finding type. (Value: "FINDING_TYPE_UNSPECIFIED")
 *    @arg @c kGTLRWebSecurityScanner_FindingTypeStats_FindingType_MixedContent
 *        A page that was served over HTTPS also resources over HTTP. A
 *        man-in-the-middle attacker could tamper with the HTTP resource and
 *        gain
 *        full access to the website that loads the resource or to monitor the
 *        actions taken by the user. (Value: "MIXED_CONTENT")
 *    @arg @c kGTLRWebSecurityScanner_FindingTypeStats_FindingType_OutdatedLibrary
 *        The version of an included library is known to contain a security
 *        issue.
 *        The scanner checks the version of library in use against a known list
 *        of
 *        vulnerable libraries. False positives are possible if the version
 *        detection fails or if the library has been manually patched. (Value:
 *        "OUTDATED_LIBRARY")
 *    @arg @c kGTLRWebSecurityScanner_FindingTypeStats_FindingType_RosettaFlash
 *        This type of vulnerability occurs when the value of a request
 *        parameter
 *        is reflected at the beginning of the response, for example, in
 *        requests
 *        using JSONP. Under certain circumstances, an attacker may be able to
 *        supply an alphanumeric-only Flash file in the vulnerable parameter
 *        causing the browser to execute the Flash file as if it originated on
 *        the
 *        vulnerable server. (Value: "ROSETTA_FLASH")
 *    @arg @c kGTLRWebSecurityScanner_FindingTypeStats_FindingType_XssCallback A
 *        cross-site scripting (XSS) bug is found via JavaScript callback. For
 *        detailed explanations on XSS, see
 *        https://www.google.com/about/appsecurity/learning/xss/. (Value:
 *        "XSS_CALLBACK")
 *    @arg @c kGTLRWebSecurityScanner_FindingTypeStats_FindingType_XssError A
 *        potential cross-site scripting (XSS) bug due to JavaScript breakage.
 *        In some circumstances, the application under test might modify the
 *        test
 *        string before it is parsed by the browser. When the browser attempts
 *        to
 *        runs this modified test string, it will likely break and throw a
 *        JavaScript execution error, thus an injection issue is occurring.
 *        However, it may not be exploitable. Manual verification is needed to
 *        see
 *        if the test string modifications can be evaded and confirm that the
 *        issue
 *        is in fact an XSS vulnerability. For detailed explanations on XSS, see
 *        https://www.google.com/about/appsecurity/learning/xss/. (Value:
 *        "XSS_ERROR")
 */
@property(nonatomic, copy, nullable) NSString *findingType;

@end


/**
 *  Describes authentication configuration that uses a Google account.
 */
@interface GTLRWebSecurityScanner_GoogleAccount : GTLRObject

/**
 *  Input only.
 *  Required.
 *  The password of the Google account. The credential is stored encrypted
 *  and not returned in any response.
 */
@property(nonatomic, copy, nullable) NSString *password;

/**
 *  Required.
 *  The user name of the Google account.
 */
@property(nonatomic, copy, nullable) NSString *username;

@end


/**
 *  Response for the `ListCrawledUrls` method.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "crawledUrls" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRWebSecurityScanner_ListCrawledUrlsResponse : GTLRCollectionObject

/**
 *  The list of CrawledUrls returned.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRWebSecurityScanner_CrawledUrl *> *crawledUrls;

/**
 *  Token to retrieve the next page of results, or empty if there are no
 *  more results in the list.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end


/**
 *  Response for the `ListFindings` method.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "findings" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRWebSecurityScanner_ListFindingsResponse : GTLRCollectionObject

/**
 *  The list of Findings returned.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRWebSecurityScanner_Finding *> *findings;

/**
 *  Token to retrieve the next page of results, or empty if there are no
 *  more results in the list.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end


/**
 *  Response for the `ListFindingTypeStats` method.
 */
@interface GTLRWebSecurityScanner_ListFindingTypeStatsResponse : GTLRObject

/** The list of FindingTypeStats returned. */
@property(nonatomic, strong, nullable) NSArray<GTLRWebSecurityScanner_FindingTypeStats *> *findingTypeStats;

@end


/**
 *  Response for the `ListScanConfigs` method.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "scanConfigs" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRWebSecurityScanner_ListScanConfigsResponse : GTLRCollectionObject

/**
 *  Token to retrieve the next page of results, or empty if there are no
 *  more results in the list.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The list of ScanConfigs returned.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRWebSecurityScanner_ScanConfig *> *scanConfigs;

@end


/**
 *  Response for the `ListScanRuns` method.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "scanRuns" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRWebSecurityScanner_ListScanRunsResponse : GTLRCollectionObject

/**
 *  Token to retrieve the next page of results, or empty if there are no
 *  more results in the list.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The list of ScanRuns returned.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRWebSecurityScanner_ScanRun *> *scanRuns;

@end


/**
 *  Information reported for an outdated library.
 */
@interface GTLRWebSecurityScanner_OutdatedLibrary : GTLRObject

/**
 *  URLs to learn more information about the vulnerabilities in the library.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *learnMoreUrls;

/** The name of the outdated library. */
@property(nonatomic, copy, nullable) NSString *libraryName;

/** The version number. */
@property(nonatomic, copy, nullable) NSString *version;

@end


/**
 *  A ScanConfig resource contains the configurations to launch a scan.
 */
@interface GTLRWebSecurityScanner_ScanConfig : GTLRObject

/**
 *  The authentication configuration. If specified, service will use the
 *  authentication configuration during scanning.
 */
@property(nonatomic, strong, nullable) GTLRWebSecurityScanner_Authentication *authentication;

/**
 *  The blacklist URL patterns as described in
 *  https://cloud.google.com/security-scanner/docs/excluded-urls
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *blacklistPatterns;

/**
 *  Required.
 *  The user provided display name of the ScanConfig.
 */
@property(nonatomic, copy, nullable) NSString *displayName;

/**
 *  The maximum QPS during scanning. A valid value ranges from 5 to 20
 *  inclusively. If the field is unspecified or its value is set 0, server will
 *  default to 15. Other values outside of [5, 20] range will be rejected with
 *  INVALID_ARGUMENT error.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *maxQps;

/**
 *  The resource name of the ScanConfig. The name follows the format of
 *  'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs are
 *  generated by the system.
 */
@property(nonatomic, copy, nullable) NSString *name;

/** The schedule of the ScanConfig. */
@property(nonatomic, strong, nullable) GTLRWebSecurityScanner_Schedule *schedule;

/**
 *  Required.
 *  The starting URLs from which the scanner finds site pages.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *startingUrls;

/**
 *  Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be
 *  used as a default.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *targetPlatforms;

/**
 *  The user agent used during scanning.
 *
 *  Likely values:
 *    @arg @c kGTLRWebSecurityScanner_ScanConfig_UserAgent_ChromeAndroid Chrome
 *        on Android. (Value: "CHROME_ANDROID")
 *    @arg @c kGTLRWebSecurityScanner_ScanConfig_UserAgent_ChromeLinux Chrome on
 *        Linux. This is the service default if unspecified. (Value:
 *        "CHROME_LINUX")
 *    @arg @c kGTLRWebSecurityScanner_ScanConfig_UserAgent_SafariIphone Safari
 *        on IPhone. (Value: "SAFARI_IPHONE")
 *    @arg @c kGTLRWebSecurityScanner_ScanConfig_UserAgent_UserAgentUnspecified
 *        The user agent is unknown. Service will default to CHROME_LINUX.
 *        (Value: "USER_AGENT_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *userAgent;

@end


/**
 *  A ScanRun is a output-only resource representing an actual run of the scan.
 */
@interface GTLRWebSecurityScanner_ScanRun : GTLRObject

/**
 *  Output only.
 *  The time at which the ScanRun reached termination state - that the ScanRun
 *  is either finished or stopped by user.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *endTime;

/**
 *  Output only.
 *  The execution state of the ScanRun.
 *
 *  Likely values:
 *    @arg @c kGTLRWebSecurityScanner_ScanRun_ExecutionState_ExecutionStateUnspecified
 *        Represents an invalid state caused by internal server error. This
 *        value
 *        should never be returned. (Value: "EXECUTION_STATE_UNSPECIFIED")
 *    @arg @c kGTLRWebSecurityScanner_ScanRun_ExecutionState_Finished The scan
 *        is either finished or stopped by user. (Value: "FINISHED")
 *    @arg @c kGTLRWebSecurityScanner_ScanRun_ExecutionState_Queued The scan is
 *        waiting in the queue. (Value: "QUEUED")
 *    @arg @c kGTLRWebSecurityScanner_ScanRun_ExecutionState_Scanning The scan
 *        is in progress. (Value: "SCANNING")
 */
@property(nonatomic, copy, nullable) NSString *executionState;

/**
 *  Output only.
 *  Whether the scan run has found any vulnerabilities.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *hasVulnerabilities;

/**
 *  Output only.
 *  The resource name of the ScanRun. The name follows the format of
 *  'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
 *  The ScanRun IDs are generated by the system.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Output only.
 *  The percentage of total completion ranging from 0 to 100.
 *  If the scan is in queue, the value is 0.
 *  If the scan is running, the value ranges from 0 to 100.
 *  If the scan is finished, the value is 100.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *progressPercent;

/**
 *  Output only.
 *  The result state of the ScanRun. This field is only available after the
 *  execution state reaches "FINISHED".
 *
 *  Likely values:
 *    @arg @c kGTLRWebSecurityScanner_ScanRun_ResultState_Error The scan
 *        finished with errors. (Value: "ERROR")
 *    @arg @c kGTLRWebSecurityScanner_ScanRun_ResultState_Killed The scan was
 *        terminated by user. (Value: "KILLED")
 *    @arg @c kGTLRWebSecurityScanner_ScanRun_ResultState_ResultStateUnspecified
 *        Default value. This value is returned when the ScanRun is not yet
 *        finished. (Value: "RESULT_STATE_UNSPECIFIED")
 *    @arg @c kGTLRWebSecurityScanner_ScanRun_ResultState_Success The scan
 *        finished without errors. (Value: "SUCCESS")
 */
@property(nonatomic, copy, nullable) NSString *resultState;

/**
 *  Output only.
 *  The time at which the ScanRun started.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *startTime;

/**
 *  Output only.
 *  The number of URLs crawled during this ScanRun. If the scan is in progress,
 *  the value represents the number of URLs crawled up to now.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *urlsCrawledCount;

/**
 *  Output only.
 *  The number of URLs tested during this ScanRun. If the scan is in progress,
 *  the value represents the number of URLs tested up to now. The number of
 *  URLs tested is usually larger than the number URLS crawled because
 *  typically a crawled URL is tested with multiple test payloads.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *urlsTestedCount;

@end


/**
 *  Scan schedule configuration.
 */
@interface GTLRWebSecurityScanner_Schedule : GTLRObject

/**
 *  Required.
 *  The duration of time between executions in days.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *intervalDurationDays;

/**
 *  A timestamp indicates when the next run will be scheduled. The value is
 *  refreshed by the server after each run. If unspecified, it will default
 *  to current server time, which means the scan will be scheduled to start
 *  immediately.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *scheduleTime;

@end


/**
 *  Request for the `StartScanRun` method.
 */
@interface GTLRWebSecurityScanner_StartScanRunRequest : GTLRObject
@end


/**
 *  Request for the `StopScanRun` method.
 */
@interface GTLRWebSecurityScanner_StopScanRunRequest : GTLRObject
@end


/**
 *  Information regarding any resource causing the vulnerability such
 *  as JavaScript sources, image, audio files, etc.
 */
@interface GTLRWebSecurityScanner_ViolatingResource : GTLRObject

/** The MIME type of this resource. */
@property(nonatomic, copy, nullable) NSString *contentType;

/** URL of this violating resource. */
@property(nonatomic, copy, nullable) NSString *resourceUrl;

@end


/**
 *  Information about vulnerable request parameters.
 */
@interface GTLRWebSecurityScanner_VulnerableParameters : GTLRObject

/** The vulnerable parameter names. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *parameterNames;

@end


/**
 *  Information reported for an XSS.
 */
@interface GTLRWebSecurityScanner_Xss : GTLRObject

/** An error message generated by a javascript breakage. */
@property(nonatomic, copy, nullable) NSString *errorMessage;

/** Stack traces leading to the point where the XSS occurred. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *stackTraces;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
