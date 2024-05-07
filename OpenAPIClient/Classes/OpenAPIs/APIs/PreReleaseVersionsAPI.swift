//
// PreReleaseVersionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PreReleaseVersionsAPI {

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_preReleaseVersionsAppGetToOneRelated: String, CaseIterable {
        case alternativedistributionkey = "alternativeDistributionKey"
        case analyticsreportrequests = "analyticsReportRequests"
        case appavailability = "appAvailability"
        case appclips = "appClips"
        case appcustomproductpages = "appCustomProductPages"
        case appencryptiondeclarations = "appEncryptionDeclarations"
        case appevents = "appEvents"
        case appinfos = "appInfos"
        case apppricepoints = "appPricePoints"
        case apppriceschedule = "appPriceSchedule"
        case appstoreversionexperimentsv2 = "appStoreVersionExperimentsV2"
        case appstoreversions = "appStoreVersions"
        case availableinnewterritories = "availableInNewTerritories"
        case availableterritories = "availableTerritories"
        case betaapplocalizations = "betaAppLocalizations"
        case betaappreviewdetail = "betaAppReviewDetail"
        case betagroups = "betaGroups"
        case betalicenseagreement = "betaLicenseAgreement"
        case betatesters = "betaTesters"
        case builds = "builds"
        case bundleid = "bundleId"
        case ciproduct = "ciProduct"
        case contentrightsdeclaration = "contentRightsDeclaration"
        case customerreviews = "customerReviews"
        case enduserlicenseagreement = "endUserLicenseAgreement"
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterenabledversions = "gameCenterEnabledVersions"
        case inapppurchases = "inAppPurchases"
        case inapppurchasesv2 = "inAppPurchasesV2"
        case isoreverwasmadeforkids = "isOrEverWasMadeForKids"
        case marketplacesearchdetail = "marketplaceSearchDetail"
        case name = "name"
        case perfpowermetrics = "perfPowerMetrics"
        case preorder = "preOrder"
        case prereleaseversions = "preReleaseVersions"
        case pricepoints = "pricePoints"
        case prices = "prices"
        case primarylocale = "primaryLocale"
        case promotedpurchases = "promotedPurchases"
        case reviewsubmissions = "reviewSubmissions"
        case sku = "sku"
        case subscriptiongraceperiod = "subscriptionGracePeriod"
        case subscriptiongroups = "subscriptionGroups"
        case subscriptionstatusurl = "subscriptionStatusUrl"
        case subscriptionstatusurlforsandbox = "subscriptionStatusUrlForSandbox"
        case subscriptionstatusurlversion = "subscriptionStatusUrlVersion"
        case subscriptionstatusurlversionforsandbox = "subscriptionStatusUrlVersionForSandbox"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func preReleaseVersionsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_preReleaseVersionsAppGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return preReleaseVersionsAppGetToOneRelatedWithRequestBuilder(id: id, fieldsApps: fieldsApps).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/preReleaseVersions/{id}/app
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<AppWithoutIncludesResponse> 
     */
    open class func preReleaseVersionsAppGetToOneRelatedWithRequestBuilder(id: String, fieldsApps: [FieldsApps_preReleaseVersionsAppGetToOneRelated]? = nil) -> RequestBuilder<AppWithoutIncludesResponse> {
        var localVariablePath = "/v1/preReleaseVersions/{id}/app"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppWithoutIncludesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_preReleaseVersionsBuildsGetToManyRelated: String, CaseIterable {
        case app = "app"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case appstoreversion = "appStoreVersion"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case betabuildlocalizations = "betaBuildLocalizations"
        case betagroups = "betaGroups"
        case buildaudiencetype = "buildAudienceType"
        case buildbetadetail = "buildBetaDetail"
        case buildbundles = "buildBundles"
        case computedminmacosversion = "computedMinMacOsVersion"
        case diagnosticsignatures = "diagnosticSignatures"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case iconassettoken = "iconAssetToken"
        case icons = "icons"
        case individualtesters = "individualTesters"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case minosversion = "minOsVersion"
        case perfpowermetrics = "perfPowerMetrics"
        case prereleaseversion = "preReleaseVersion"
        case processingstate = "processingState"
        case uploadeddate = "uploadedDate"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case version = "version"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func preReleaseVersionsBuildsGetToManyRelated(id: String, fieldsBuilds: [FieldsBuilds_preReleaseVersionsBuildsGetToManyRelated]? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BuildsWithoutIncludesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return preReleaseVersionsBuildsGetToManyRelatedWithRequestBuilder(id: id, fieldsBuilds: fieldsBuilds, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/preReleaseVersions/{id}/builds
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<BuildsWithoutIncludesResponse> 
     */
    open class func preReleaseVersionsBuildsGetToManyRelatedWithRequestBuilder(id: String, fieldsBuilds: [FieldsBuilds_preReleaseVersionsBuildsGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<BuildsWithoutIncludesResponse> {
        var localVariablePath = "/v1/preReleaseVersions/{id}/builds"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildsWithoutIncludesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter filterBuildsProcessingState
     */
    public enum FilterBuildsProcessingState_preReleaseVersionsGetCollection: String, CaseIterable {
        case processing = "PROCESSING"
        case failed = "FAILED"
        case invalid = "INVALID"
        case valid = "VALID"
    }

    /**
     * enum for parameter filterPlatform
     */
    public enum FilterPlatform_preReleaseVersionsGetCollection: String, CaseIterable {
        case ios = "IOS"
        case macOs = "MAC_OS"
        case tvOs = "TV_OS"
        case visionOs = "VISION_OS"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_preReleaseVersionsGetCollection: String, CaseIterable {
        case version = "version"
        case version2 = "-version"
    }

    /**
     * enum for parameter fieldsPreReleaseVersions
     */
    public enum FieldsPreReleaseVersions_preReleaseVersionsGetCollection: String, CaseIterable {
        case app = "app"
        case builds = "builds"
        case platform = "platform"
        case version = "version"
    }

    /**
     * enum for parameter include
     */
    public enum Include_preReleaseVersionsGetCollection: String, CaseIterable {
        case app = "app"
        case builds = "builds"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_preReleaseVersionsGetCollection: String, CaseIterable {
        case alternativedistributionkey = "alternativeDistributionKey"
        case analyticsreportrequests = "analyticsReportRequests"
        case appavailability = "appAvailability"
        case appclips = "appClips"
        case appcustomproductpages = "appCustomProductPages"
        case appencryptiondeclarations = "appEncryptionDeclarations"
        case appevents = "appEvents"
        case appinfos = "appInfos"
        case apppricepoints = "appPricePoints"
        case apppriceschedule = "appPriceSchedule"
        case appstoreversionexperimentsv2 = "appStoreVersionExperimentsV2"
        case appstoreversions = "appStoreVersions"
        case availableinnewterritories = "availableInNewTerritories"
        case availableterritories = "availableTerritories"
        case betaapplocalizations = "betaAppLocalizations"
        case betaappreviewdetail = "betaAppReviewDetail"
        case betagroups = "betaGroups"
        case betalicenseagreement = "betaLicenseAgreement"
        case betatesters = "betaTesters"
        case builds = "builds"
        case bundleid = "bundleId"
        case ciproduct = "ciProduct"
        case contentrightsdeclaration = "contentRightsDeclaration"
        case customerreviews = "customerReviews"
        case enduserlicenseagreement = "endUserLicenseAgreement"
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterenabledversions = "gameCenterEnabledVersions"
        case inapppurchases = "inAppPurchases"
        case inapppurchasesv2 = "inAppPurchasesV2"
        case isoreverwasmadeforkids = "isOrEverWasMadeForKids"
        case marketplacesearchdetail = "marketplaceSearchDetail"
        case name = "name"
        case perfpowermetrics = "perfPowerMetrics"
        case preorder = "preOrder"
        case prereleaseversions = "preReleaseVersions"
        case pricepoints = "pricePoints"
        case prices = "prices"
        case primarylocale = "primaryLocale"
        case promotedpurchases = "promotedPurchases"
        case reviewsubmissions = "reviewSubmissions"
        case sku = "sku"
        case subscriptiongraceperiod = "subscriptionGracePeriod"
        case subscriptiongroups = "subscriptionGroups"
        case subscriptionstatusurl = "subscriptionStatusUrl"
        case subscriptionstatusurlforsandbox = "subscriptionStatusUrlForSandbox"
        case subscriptionstatusurlversion = "subscriptionStatusUrlVersion"
        case subscriptionstatusurlversionforsandbox = "subscriptionStatusUrlVersionForSandbox"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_preReleaseVersionsGetCollection: String, CaseIterable {
        case app = "app"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case appstoreversion = "appStoreVersion"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case betabuildlocalizations = "betaBuildLocalizations"
        case betagroups = "betaGroups"
        case buildaudiencetype = "buildAudienceType"
        case buildbetadetail = "buildBetaDetail"
        case buildbundles = "buildBundles"
        case computedminmacosversion = "computedMinMacOsVersion"
        case diagnosticsignatures = "diagnosticSignatures"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case iconassettoken = "iconAssetToken"
        case icons = "icons"
        case individualtesters = "individualTesters"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case minosversion = "minOsVersion"
        case perfpowermetrics = "perfPowerMetrics"
        case prereleaseversion = "preReleaseVersion"
        case processingstate = "processingState"
        case uploadeddate = "uploadedDate"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case version = "version"
    }

    /**

     - parameter filterBuildsExpired: (query) filter by attribute &#39;builds.expired&#39; (optional)
     - parameter filterBuildsProcessingState: (query) filter by attribute &#39;builds.processingState&#39; (optional)
     - parameter filterBuildsVersion: (query) filter by attribute &#39;builds.version&#39; (optional)
     - parameter filterPlatform: (query) filter by attribute &#39;platform&#39; (optional)
     - parameter filterVersion: (query) filter by attribute &#39;version&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter filterBuilds: (query) filter by id(s) of related &#39;builds&#39; (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsPreReleaseVersions: (query) the fields to include for returned resources of type preReleaseVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func preReleaseVersionsGetCollection(filterBuildsExpired: [String]? = nil, filterBuildsProcessingState: [FilterBuildsProcessingState_preReleaseVersionsGetCollection]? = nil, filterBuildsVersion: [String]? = nil, filterPlatform: [FilterPlatform_preReleaseVersionsGetCollection]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, sort: [Sort_preReleaseVersionsGetCollection]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_preReleaseVersionsGetCollection]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetCollection]? = nil, limitBuilds: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PreReleaseVersionsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return preReleaseVersionsGetCollectionWithRequestBuilder(filterBuildsExpired: filterBuildsExpired, filterBuildsProcessingState: filterBuildsProcessingState, filterBuildsVersion: filterBuildsVersion, filterPlatform: filterPlatform, filterVersion: filterVersion, filterApp: filterApp, filterBuilds: filterBuilds, sort: sort, fieldsPreReleaseVersions: fieldsPreReleaseVersions, limit: limit, include: include, fieldsApps: fieldsApps, fieldsBuilds: fieldsBuilds, limitBuilds: limitBuilds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/preReleaseVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterBuildsExpired: (query) filter by attribute &#39;builds.expired&#39; (optional)
     - parameter filterBuildsProcessingState: (query) filter by attribute &#39;builds.processingState&#39; (optional)
     - parameter filterBuildsVersion: (query) filter by attribute &#39;builds.version&#39; (optional)
     - parameter filterPlatform: (query) filter by attribute &#39;platform&#39; (optional)
     - parameter filterVersion: (query) filter by attribute &#39;version&#39; (optional)
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; (optional)
     - parameter filterBuilds: (query) filter by id(s) of related &#39;builds&#39; (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsPreReleaseVersions: (query) the fields to include for returned resources of type preReleaseVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - returns: RequestBuilder<PreReleaseVersionsResponse> 
     */
    open class func preReleaseVersionsGetCollectionWithRequestBuilder(filterBuildsExpired: [String]? = nil, filterBuildsProcessingState: [FilterBuildsProcessingState_preReleaseVersionsGetCollection]? = nil, filterBuildsVersion: [String]? = nil, filterPlatform: [FilterPlatform_preReleaseVersionsGetCollection]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, sort: [Sort_preReleaseVersionsGetCollection]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_preReleaseVersionsGetCollection]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetCollection]? = nil, limitBuilds: Int? = nil) -> RequestBuilder<PreReleaseVersionsResponse> {
        let localVariablePath = "/v1/preReleaseVersions"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[builds.expired]": (wrappedValue: filterBuildsExpired?.encodeToJSON(), isExplode: false),
            "filter[builds.processingState]": (wrappedValue: filterBuildsProcessingState?.encodeToJSON(), isExplode: false),
            "filter[builds.version]": (wrappedValue: filterBuildsVersion?.encodeToJSON(), isExplode: false),
            "filter[platform]": (wrappedValue: filterPlatform?.encodeToJSON(), isExplode: false),
            "filter[version]": (wrappedValue: filterVersion?.encodeToJSON(), isExplode: false),
            "filter[app]": (wrappedValue: filterApp?.encodeToJSON(), isExplode: false),
            "filter[builds]": (wrappedValue: filterBuilds?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
            "fields[preReleaseVersions]": (wrappedValue: fieldsPreReleaseVersions?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
            "limit[builds]": (wrappedValue: limitBuilds?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PreReleaseVersionsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsPreReleaseVersions
     */
    public enum FieldsPreReleaseVersions_preReleaseVersionsGetInstance: String, CaseIterable {
        case app = "app"
        case builds = "builds"
        case platform = "platform"
        case version = "version"
    }

    /**
     * enum for parameter include
     */
    public enum Include_preReleaseVersionsGetInstance: String, CaseIterable {
        case app = "app"
        case builds = "builds"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_preReleaseVersionsGetInstance: String, CaseIterable {
        case alternativedistributionkey = "alternativeDistributionKey"
        case analyticsreportrequests = "analyticsReportRequests"
        case appavailability = "appAvailability"
        case appclips = "appClips"
        case appcustomproductpages = "appCustomProductPages"
        case appencryptiondeclarations = "appEncryptionDeclarations"
        case appevents = "appEvents"
        case appinfos = "appInfos"
        case apppricepoints = "appPricePoints"
        case apppriceschedule = "appPriceSchedule"
        case appstoreversionexperimentsv2 = "appStoreVersionExperimentsV2"
        case appstoreversions = "appStoreVersions"
        case availableinnewterritories = "availableInNewTerritories"
        case availableterritories = "availableTerritories"
        case betaapplocalizations = "betaAppLocalizations"
        case betaappreviewdetail = "betaAppReviewDetail"
        case betagroups = "betaGroups"
        case betalicenseagreement = "betaLicenseAgreement"
        case betatesters = "betaTesters"
        case builds = "builds"
        case bundleid = "bundleId"
        case ciproduct = "ciProduct"
        case contentrightsdeclaration = "contentRightsDeclaration"
        case customerreviews = "customerReviews"
        case enduserlicenseagreement = "endUserLicenseAgreement"
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterenabledversions = "gameCenterEnabledVersions"
        case inapppurchases = "inAppPurchases"
        case inapppurchasesv2 = "inAppPurchasesV2"
        case isoreverwasmadeforkids = "isOrEverWasMadeForKids"
        case marketplacesearchdetail = "marketplaceSearchDetail"
        case name = "name"
        case perfpowermetrics = "perfPowerMetrics"
        case preorder = "preOrder"
        case prereleaseversions = "preReleaseVersions"
        case pricepoints = "pricePoints"
        case prices = "prices"
        case primarylocale = "primaryLocale"
        case promotedpurchases = "promotedPurchases"
        case reviewsubmissions = "reviewSubmissions"
        case sku = "sku"
        case subscriptiongraceperiod = "subscriptionGracePeriod"
        case subscriptiongroups = "subscriptionGroups"
        case subscriptionstatusurl = "subscriptionStatusUrl"
        case subscriptionstatusurlforsandbox = "subscriptionStatusUrlForSandbox"
        case subscriptionstatusurlversion = "subscriptionStatusUrlVersion"
        case subscriptionstatusurlversionforsandbox = "subscriptionStatusUrlVersionForSandbox"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_preReleaseVersionsGetInstance: String, CaseIterable {
        case app = "app"
        case appencryptiondeclaration = "appEncryptionDeclaration"
        case appstoreversion = "appStoreVersion"
        case betaappreviewsubmission = "betaAppReviewSubmission"
        case betabuildlocalizations = "betaBuildLocalizations"
        case betagroups = "betaGroups"
        case buildaudiencetype = "buildAudienceType"
        case buildbetadetail = "buildBetaDetail"
        case buildbundles = "buildBundles"
        case computedminmacosversion = "computedMinMacOsVersion"
        case diagnosticsignatures = "diagnosticSignatures"
        case expirationdate = "expirationDate"
        case expired = "expired"
        case iconassettoken = "iconAssetToken"
        case icons = "icons"
        case individualtesters = "individualTesters"
        case lsminimumsystemversion = "lsMinimumSystemVersion"
        case minosversion = "minOsVersion"
        case perfpowermetrics = "perfPowerMetrics"
        case prereleaseversion = "preReleaseVersion"
        case processingstate = "processingState"
        case uploadeddate = "uploadedDate"
        case usesnonexemptencryption = "usesNonExemptEncryption"
        case version = "version"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPreReleaseVersions: (query) the fields to include for returned resources of type preReleaseVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func preReleaseVersionsGetInstance(id: String, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetInstance]? = nil, include: [Include_preReleaseVersionsGetInstance]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetInstance]? = nil, limitBuilds: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PrereleaseVersionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return preReleaseVersionsGetInstanceWithRequestBuilder(id: id, fieldsPreReleaseVersions: fieldsPreReleaseVersions, include: include, fieldsApps: fieldsApps, fieldsBuilds: fieldsBuilds, limitBuilds: limitBuilds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/preReleaseVersions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsPreReleaseVersions: (query) the fields to include for returned resources of type preReleaseVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter limitBuilds: (query) maximum number of related builds returned (when they are included) (optional)
     - returns: RequestBuilder<PrereleaseVersionResponse> 
     */
    open class func preReleaseVersionsGetInstanceWithRequestBuilder(id: String, fieldsPreReleaseVersions: [FieldsPreReleaseVersions_preReleaseVersionsGetInstance]? = nil, include: [Include_preReleaseVersionsGetInstance]? = nil, fieldsApps: [FieldsApps_preReleaseVersionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_preReleaseVersionsGetInstance]? = nil, limitBuilds: Int? = nil) -> RequestBuilder<PrereleaseVersionResponse> {
        var localVariablePath = "/v1/preReleaseVersions/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[preReleaseVersions]": (wrappedValue: fieldsPreReleaseVersions?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
            "limit[builds]": (wrappedValue: limitBuilds?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PrereleaseVersionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
