//
// AppPricePointsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppPricePointsAPI {

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPricePointsGetCollection: String, CaseIterable {
        case customerprice = "customerPrice"
        case pricetier = "priceTier"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPricePointsGetCollection: String, CaseIterable {
        case pricetier = "priceTier"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPricePointsGetCollection: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter filterPriceTier: (query) filter by id(s) of related &#39;priceTier&#39; (optional)
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func appPricePointsGetCollection(filterPriceTier: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsGetCollection]? = nil, limit: Int? = nil, include: [Include_appPricePointsGetCollection]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsGetCollection]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppPricePointsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appPricePointsGetCollectionWithRequestBuilder(filterPriceTier: filterPriceTier, filterTerritory: filterTerritory, fieldsAppPricePoints: fieldsAppPricePoints, limit: limit, include: include, fieldsTerritories: fieldsTerritories).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appPricePoints
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterPriceTier: (query) filter by id(s) of related &#39;priceTier&#39; (optional)
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - returns: RequestBuilder<AppPricePointsResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPricePointsGetCollectionWithRequestBuilder(filterPriceTier: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsGetCollection]? = nil, limit: Int? = nil, include: [Include_appPricePointsGetCollection]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsGetCollection]? = nil) -> RequestBuilder<AppPricePointsResponse> {
        let localVariablePath = "/v1/appPricePoints"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[priceTier]": (wrappedValue: filterPriceTier?.encodeToJSON(), isExplode: false),
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(), isExplode: false),
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPricePointsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPricePointsGetInstance: String, CaseIterable {
        case customerprice = "customerPrice"
        case pricetier = "priceTier"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPricePointsGetInstance: String, CaseIterable {
        case pricetier = "priceTier"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPricePointsGetInstance: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func appPricePointsGetInstance(id: String, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsGetInstance]? = nil, include: [Include_appPricePointsGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppPricePointResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appPricePointsGetInstanceWithRequestBuilder(id: id, fieldsAppPricePoints: fieldsAppPricePoints, include: include, fieldsTerritories: fieldsTerritories).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appPricePoints/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - returns: RequestBuilder<AppPricePointResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPricePointsGetInstanceWithRequestBuilder(id: String, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsGetInstance]? = nil, include: [Include_appPricePointsGetInstance]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsGetInstance]? = nil) -> RequestBuilder<AppPricePointResponse> {
        var localVariablePath = "/v1/appPricePoints/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPricePointResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPricePointsTerritoryGetToOneRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func appPricePointsTerritoryGetToOneRelated(id: String, fieldsTerritories: [FieldsTerritories_appPricePointsTerritoryGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TerritoryResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appPricePointsTerritoryGetToOneRelatedWithRequestBuilder(id: id, fieldsTerritories: fieldsTerritories).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appPricePoints/{id}/territory
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - returns: RequestBuilder<TerritoryResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPricePointsTerritoryGetToOneRelatedWithRequestBuilder(id: String, fieldsTerritories: [FieldsTerritories_appPricePointsTerritoryGetToOneRelated]? = nil) -> RequestBuilder<TerritoryResponse> {
        var localVariablePath = "/v1/appPricePoints/{id}/territory"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TerritoryResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPricePointsV3EqualizationsGetToManyRelated: String, CaseIterable {
        case app = "app"
        case customerprice = "customerPrice"
        case equalizations = "equalizations"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsApps
     */
    public enum FieldsApps_appPricePointsV3EqualizationsGetToManyRelated: String, CaseIterable {
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
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPricePointsV3EqualizationsGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPricePointsV3EqualizationsGetToManyRelated: String, CaseIterable {
        case app = "app"
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appPricePointsV3EqualizationsGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsV3EqualizationsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appPricePointsV3EqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsV3EqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPricePointsV3EqualizationsGetToManyRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppPricePointsV3Response?, _ error: Error?) -> Void)) -> RequestTask {
        return appPricePointsV3EqualizationsGetToManyRelatedWithRequestBuilder(id: id, filterTerritory: filterTerritory, fieldsAppPricePoints: fieldsAppPricePoints, fieldsApps: fieldsApps, fieldsTerritories: fieldsTerritories, limit: limit, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v3/appPricePoints/{id}/equalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter fieldsApps: (query) the fields to include for returned resources of type apps (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppPricePointsV3Response> 
     */
    open class func appPricePointsV3EqualizationsGetToManyRelatedWithRequestBuilder(id: String, filterTerritory: [String]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsV3EqualizationsGetToManyRelated]? = nil, fieldsApps: [FieldsApps_appPricePointsV3EqualizationsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPricePointsV3EqualizationsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPricePointsV3EqualizationsGetToManyRelated]? = nil) -> RequestBuilder<AppPricePointsV3Response> {
        var localVariablePath = "/v3/appPricePoints/{id}/equalizations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(), isExplode: false),
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "fields[apps]": (wrappedValue: fieldsApps?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPricePointsV3Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPricePointsV3GetInstance: String, CaseIterable {
        case app = "app"
        case customerprice = "customerPrice"
        case equalizations = "equalizations"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPricePointsV3GetInstance: String, CaseIterable {
        case app = "app"
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appPricePointsV3GetInstance(id: String, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsV3GetInstance]? = nil, include: [Include_appPricePointsV3GetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppPricePointV3Response?, _ error: Error?) -> Void)) -> RequestTask {
        return appPricePointsV3GetInstanceWithRequestBuilder(id: id, fieldsAppPricePoints: fieldsAppPricePoints, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v3/appPricePoints/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppPricePointV3Response> 
     */
    open class func appPricePointsV3GetInstanceWithRequestBuilder(id: String, fieldsAppPricePoints: [FieldsAppPricePoints_appPricePointsV3GetInstance]? = nil, include: [Include_appPricePointsV3GetInstance]? = nil) -> RequestBuilder<AppPricePointV3Response> {
        var localVariablePath = "/v3/appPricePoints/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPricePointV3Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}