//
// BetaAppReviewDetailsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BetaAppReviewDetailsAPI {

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsAppGetToOneRelated: String, CaseIterable {
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
    open class func betaAppReviewDetailsAppGetToOneRelated(id: String, fieldsApps: [FieldsApps_betaAppReviewDetailsAppGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppWithoutIncludesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(id: id, fieldsApps: fieldsApps).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/betaAppReviewDetails/{id}/app
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<AppWithoutIncludesResponse> 
     */
    open class func betaAppReviewDetailsAppGetToOneRelatedWithRequestBuilder(id: String, fieldsApps: [FieldsApps_betaAppReviewDetailsAppGetToOneRelated]? = nil) -> RequestBuilder<AppWithoutIncludesResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}/app"
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
     * enum for parameter fieldsBetaAppReviewDetails
     */
    public enum FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection: String, CaseIterable {
        case app = "app"
        case contactemail = "contactEmail"
        case contactfirstname = "contactFirstName"
        case contactlastname = "contactLastName"
        case contactphone = "contactPhone"
        case demoaccountname = "demoAccountName"
        case demoaccountpassword = "demoAccountPassword"
        case demoaccountrequired = "demoAccountRequired"
        case notes = "notes"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppReviewDetailsGetCollection: String, CaseIterable {
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsGetCollection: String, CaseIterable {
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

     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func betaAppReviewDetailsGetCollection(filterApp: [String], fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewDetailsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetCollection]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BetaAppReviewDetailsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return betaAppReviewDetailsGetCollectionWithRequestBuilder(filterApp: filterApp, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, limit: limit, include: include, fieldsApps: fieldsApps).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/betaAppReviewDetails
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterApp: (query) filter by id(s) of related &#39;app&#39; 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<BetaAppReviewDetailsResponse> 
     */
    open class func betaAppReviewDetailsGetCollectionWithRequestBuilder(filterApp: [String], fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewDetailsGetCollection]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetCollection]? = nil) -> RequestBuilder<BetaAppReviewDetailsResponse> {
        let localVariablePath = "/v1/betaAppReviewDetails"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[app]": (wrappedValue: filterApp.encodeToJSON(), isExplode: false),
            "fields[betaAppReviewDetails]": (wrappedValue: fieldsBetaAppReviewDetails?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBetaAppReviewDetails
     */
    public enum FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance: String, CaseIterable {
        case app = "app"
        case contactemail = "contactEmail"
        case contactfirstname = "contactFirstName"
        case contactlastname = "contactLastName"
        case contactphone = "contactPhone"
        case demoaccountname = "demoAccountName"
        case demoaccountpassword = "demoAccountPassword"
        case demoaccountrequired = "demoAccountRequired"
        case notes = "notes"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppReviewDetailsGetInstance: String, CaseIterable {
        case app = "app"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_betaAppReviewDetailsGetInstance: String, CaseIterable {
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
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func betaAppReviewDetailsGetInstance(id: String, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance]? = nil, include: [Include_betaAppReviewDetailsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BetaAppReviewDetailResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return betaAppReviewDetailsGetInstanceWithRequestBuilder(id: id, fieldsBetaAppReviewDetails: fieldsBetaAppReviewDetails, include: include, fieldsApps: fieldsApps).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/betaAppReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppReviewDetails: (query) the fields to include for returned resources of type betaAppReviewDetails (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsGetInstanceWithRequestBuilder(id: String, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails_betaAppReviewDetailsGetInstance]? = nil, include: [Include_betaAppReviewDetailsGetInstance]? = nil, fieldsApps: [FieldsApps_betaAppReviewDetailsGetInstance]? = nil) -> RequestBuilder<BetaAppReviewDetailResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppReviewDetails]": (wrappedValue: fieldsBetaAppReviewDetails?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter betaAppReviewDetailUpdateRequest: (body) BetaAppReviewDetail representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func betaAppReviewDetailsUpdateInstance(id: String, betaAppReviewDetailUpdateRequest: BetaAppReviewDetailUpdateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BetaAppReviewDetailResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return betaAppReviewDetailsUpdateInstanceWithRequestBuilder(id: id, betaAppReviewDetailUpdateRequest: betaAppReviewDetailUpdateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /v1/betaAppReviewDetails/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter betaAppReviewDetailUpdateRequest: (body) BetaAppReviewDetail representation 
     - returns: RequestBuilder<BetaAppReviewDetailResponse> 
     */
    open class func betaAppReviewDetailsUpdateInstanceWithRequestBuilder(id: String, betaAppReviewDetailUpdateRequest: BetaAppReviewDetailUpdateRequest) -> RequestBuilder<BetaAppReviewDetailResponse> {
        var localVariablePath = "/v1/betaAppReviewDetails/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppReviewDetailUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewDetailResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}