// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Play Developer API (androidpublisher/v3)
// Description:
//   Accesses Android application developers' Google Play accounts.
// Documentation:
//   https://developers.google.com/android-publisher

#import "GTLRAndroidPublisherObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Apk
//

@implementation GTLRAndroidPublisher_Apk
@dynamic binary, versionCode;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ApkBinary
//

@implementation GTLRAndroidPublisher_ApkBinary
@dynamic sha1, sha256;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ApksAddExternallyHostedRequest
//

@implementation GTLRAndroidPublisher_ApksAddExternallyHostedRequest
@dynamic externallyHostedApk;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ApksAddExternallyHostedResponse
//

@implementation GTLRAndroidPublisher_ApksAddExternallyHostedResponse
@dynamic externallyHostedApk;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ApksListResponse
//

@implementation GTLRAndroidPublisher_ApksListResponse
@dynamic apks, kind;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"apks" : [GTLRAndroidPublisher_Apk class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_AppDetails
//

@implementation GTLRAndroidPublisher_AppDetails
@dynamic contactEmail, contactPhone, contactWebsite, defaultLanguage;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_AppEdit
//

@implementation GTLRAndroidPublisher_AppEdit
@dynamic expiryTimeSeconds, identifier;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Bundle
//

@implementation GTLRAndroidPublisher_Bundle
@dynamic sha1, sha256, versionCode;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_BundlesListResponse
//

@implementation GTLRAndroidPublisher_BundlesListResponse
@dynamic bundles, kind;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bundles" : [GTLRAndroidPublisher_Bundle class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Comment
//

@implementation GTLRAndroidPublisher_Comment
@dynamic developerComment, userComment;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_CountryTargeting
//

@implementation GTLRAndroidPublisher_CountryTargeting
@dynamic countries, includeRestOfWorld;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"countries" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_DeobfuscationFile
//

@implementation GTLRAndroidPublisher_DeobfuscationFile
@dynamic symbolType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_DeobfuscationFilesUploadResponse
//

@implementation GTLRAndroidPublisher_DeobfuscationFilesUploadResponse
@dynamic deobfuscationFile;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_DeveloperComment
//

@implementation GTLRAndroidPublisher_DeveloperComment
@dynamic lastModified, text;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_DeviceMetadata
//

@implementation GTLRAndroidPublisher_DeviceMetadata
@dynamic cpuMake, cpuModel, deviceClass, glEsVersion, manufacturer,
         nativePlatform, productName, ramMb, screenDensityDpi, screenHeightPx,
         screenWidthPx;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ExpansionFile
//

@implementation GTLRAndroidPublisher_ExpansionFile
@dynamic fileSize, referencesVersion;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ExpansionFilesUploadResponse
//

@implementation GTLRAndroidPublisher_ExpansionFilesUploadResponse
@dynamic expansionFile;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ExternallyHostedApk
//

@implementation GTLRAndroidPublisher_ExternallyHostedApk
@dynamic applicationLabel, certificateBase64s, externallyHostedUrl,
         fileSha1Base64, fileSha256Base64, fileSize, iconBase64, maximumSdk,
         minimumSdk, nativeCodes, packageName, usesFeatures, usesPermissions,
         versionCode, versionName;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"certificateBase64s" : [NSString class],
    @"nativeCodes" : [NSString class],
    @"usesFeatures" : [NSString class],
    @"usesPermissions" : [GTLRAndroidPublisher_ExternallyHostedApkUsesPermission class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ExternallyHostedApkUsesPermission
//

@implementation GTLRAndroidPublisher_ExternallyHostedApkUsesPermission
@dynamic maxSdkVersion, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Image
//

@implementation GTLRAndroidPublisher_Image
@dynamic identifier, sha1, sha256, url;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ImagesDeleteAllResponse
//

@implementation GTLRAndroidPublisher_ImagesDeleteAllResponse
@dynamic deleted;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"deleted" : [GTLRAndroidPublisher_Image class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ImagesListResponse
//

@implementation GTLRAndroidPublisher_ImagesListResponse
@dynamic images;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"images" : [GTLRAndroidPublisher_Image class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ImagesUploadResponse
//

@implementation GTLRAndroidPublisher_ImagesUploadResponse
@dynamic image;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_InAppProduct
//

@implementation GTLRAndroidPublisher_InAppProduct
@dynamic defaultLanguage, defaultPrice, gracePeriod, listings, packageName,
         prices, purchaseType, season, sku, status, subscriptionPeriod,
         trialPeriod;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_InAppProduct_Listings
//

@implementation GTLRAndroidPublisher_InAppProduct_Listings

+ (Class)classForAdditionalProperties {
  return [GTLRAndroidPublisher_InAppProductListing class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_InAppProduct_Prices
//

@implementation GTLRAndroidPublisher_InAppProduct_Prices

+ (Class)classForAdditionalProperties {
  return [GTLRAndroidPublisher_Price class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_InAppProductListing
//

@implementation GTLRAndroidPublisher_InAppProductListing
@dynamic descriptionProperty, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_InappproductsListResponse
//

@implementation GTLRAndroidPublisher_InappproductsListResponse
@dynamic inappproduct, kind, pageInfo, tokenPagination;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"inappproduct" : [GTLRAndroidPublisher_InAppProduct class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_InternalAppSharingArtifact
//

@implementation GTLRAndroidPublisher_InternalAppSharingArtifact
@dynamic certificateFingerprint, downloadUrl, sha256;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_IntroductoryPriceInfo
//

@implementation GTLRAndroidPublisher_IntroductoryPriceInfo
@dynamic introductoryPriceAmountMicros, introductoryPriceCurrencyCode,
         introductoryPriceCycles, introductoryPricePeriod;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Listing
//

@implementation GTLRAndroidPublisher_Listing
@dynamic fullDescription, language, shortDescription, title, video;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ListingsListResponse
//

@implementation GTLRAndroidPublisher_ListingsListResponse
@dynamic kind, listings;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"listings" : [GTLRAndroidPublisher_Listing class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_LocalizedText
//

@implementation GTLRAndroidPublisher_LocalizedText
@dynamic language, text;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_MonthDay
//

@implementation GTLRAndroidPublisher_MonthDay
@dynamic day, month;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_PageInfo
//

@implementation GTLRAndroidPublisher_PageInfo
@dynamic resultPerPage, startIndex, totalResults;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Price
//

@implementation GTLRAndroidPublisher_Price
@dynamic currency, priceMicros;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ProductPurchase
//

@implementation GTLRAndroidPublisher_ProductPurchase
@dynamic acknowledgementState, consumptionState, developerPayload, kind,
         orderId, purchaseState, purchaseTimeMillis, purchaseType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ProductPurchasesAcknowledgeRequest
//

@implementation GTLRAndroidPublisher_ProductPurchasesAcknowledgeRequest
@dynamic developerPayload;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Prorate
//

@implementation GTLRAndroidPublisher_Prorate
@dynamic defaultPrice, start;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Review
//

@implementation GTLRAndroidPublisher_Review
@dynamic authorName, comments, reviewId;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"comments" : [GTLRAndroidPublisher_Comment class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ReviewReplyResult
//

@implementation GTLRAndroidPublisher_ReviewReplyResult
@dynamic lastEdited, replyText;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ReviewsListResponse
//

@implementation GTLRAndroidPublisher_ReviewsListResponse
@dynamic pageInfo, reviews, tokenPagination;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"reviews" : [GTLRAndroidPublisher_Review class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ReviewsReplyRequest
//

@implementation GTLRAndroidPublisher_ReviewsReplyRequest
@dynamic replyText;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_ReviewsReplyResponse
//

@implementation GTLRAndroidPublisher_ReviewsReplyResponse
@dynamic result;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Season
//

@implementation GTLRAndroidPublisher_Season
@dynamic end, prorations, start;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"prorations" : [GTLRAndroidPublisher_Prorate class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_SubscriptionCancelSurveyResult
//

@implementation GTLRAndroidPublisher_SubscriptionCancelSurveyResult
@dynamic cancelSurveyReason, userInputCancelReason;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_SubscriptionDeferralInfo
//

@implementation GTLRAndroidPublisher_SubscriptionDeferralInfo
@dynamic desiredExpiryTimeMillis, expectedExpiryTimeMillis;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_SubscriptionPriceChange
//

@implementation GTLRAndroidPublisher_SubscriptionPriceChange
@dynamic newPrice, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_SubscriptionPurchase
//

@implementation GTLRAndroidPublisher_SubscriptionPurchase
@dynamic acknowledgementState, autoRenewing, autoResumeTimeMillis, cancelReason,
         cancelSurveyResult, countryCode, developerPayload, emailAddress,
         expiryTimeMillis, familyName, givenName, introductoryPriceInfo, kind,
         linkedPurchaseToken, orderId, paymentState, priceAmountMicros,
         priceChange, priceCurrencyCode, profileId, profileName, purchaseType,
         startTimeMillis, userCancellationTimeMillis;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_SubscriptionPurchasesAcknowledgeRequest
//

@implementation GTLRAndroidPublisher_SubscriptionPurchasesAcknowledgeRequest
@dynamic developerPayload;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_SubscriptionPurchasesDeferRequest
//

@implementation GTLRAndroidPublisher_SubscriptionPurchasesDeferRequest
@dynamic deferralInfo;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_SubscriptionPurchasesDeferResponse
//

@implementation GTLRAndroidPublisher_SubscriptionPurchasesDeferResponse
@dynamic newExpiryTimeMillis;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Testers
//

@implementation GTLRAndroidPublisher_Testers
@dynamic googleGroups;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"googleGroups" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Timestamp
//

@implementation GTLRAndroidPublisher_Timestamp
@dynamic nanos, seconds;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_TokenPagination
//

@implementation GTLRAndroidPublisher_TokenPagination
@dynamic nextPageToken, previousPageToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_Track
//

@implementation GTLRAndroidPublisher_Track
@dynamic releases, track;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"releases" : [GTLRAndroidPublisher_TrackRelease class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_TrackRelease
//

@implementation GTLRAndroidPublisher_TrackRelease
@dynamic countryTargeting, name, releaseNotes, status, userFraction,
         versionCodes;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"releaseNotes" : [GTLRAndroidPublisher_LocalizedText class],
    @"versionCodes" : [NSNumber class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_TracksListResponse
//

@implementation GTLRAndroidPublisher_TracksListResponse
@dynamic kind, tracks;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"tracks" : [GTLRAndroidPublisher_Track class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_UserComment
//

@implementation GTLRAndroidPublisher_UserComment
@dynamic androidOsVersion, appVersionCode, appVersionName, device,
         deviceMetadata, lastModified, originalText, reviewerLanguage,
         starRating, text, thumbsDownCount, thumbsUpCount;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_VoidedPurchase
//

@implementation GTLRAndroidPublisher_VoidedPurchase
@dynamic kind, orderId, purchaseTimeMillis, purchaseToken, voidedReason,
         voidedSource, voidedTimeMillis;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAndroidPublisher_VoidedPurchasesListResponse
//

@implementation GTLRAndroidPublisher_VoidedPurchasesListResponse
@dynamic pageInfo, tokenPagination, voidedPurchases;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"voidedPurchases" : [GTLRAndroidPublisher_VoidedPurchase class]
  };
  return map;
}

@end
