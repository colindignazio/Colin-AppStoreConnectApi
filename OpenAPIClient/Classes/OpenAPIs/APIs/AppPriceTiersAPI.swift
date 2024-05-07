//
// AppPriceTiersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppPriceTiersAPI {

    /**
     * enum for parameter fieldsAppPriceTiers
     */
    public enum FieldsAppPriceTiers_appPriceTiersGetCollection: String, CaseIterable {
        case pricepoints = "pricePoints"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPriceTiersGetCollection: String, CaseIterable {
        case pricepoints = "pricePoints"
    }

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPriceTiersGetCollection: String, CaseIterable {
        case customerprice = "customerPrice"
        case pricetier = "priceTier"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**

     - parameter filterId: (query) filter by id(s) (optional)
     - parameter fieldsAppPriceTiers: (query) the fields to include for returned resources of type appPriceTiers (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter limitPricePoints: (query) maximum number of related pricePoints returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func appPriceTiersGetCollection(filterId: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersGetCollection]? = nil, limit: Int? = nil, include: [Include_appPriceTiersGetCollection]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersGetCollection]? = nil, limitPricePoints: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppPriceTiersResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appPriceTiersGetCollectionWithRequestBuilder(filterId: filterId, fieldsAppPriceTiers: fieldsAppPriceTiers, limit: limit, include: include, fieldsAppPricePoints: fieldsAppPricePoints, limitPricePoints: limitPricePoints).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appPriceTiers
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter fieldsAppPriceTiers: (query) the fields to include for returned resources of type appPriceTiers (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter limitPricePoints: (query) maximum number of related pricePoints returned (when they are included) (optional)
     - returns: RequestBuilder<AppPriceTiersResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPriceTiersGetCollectionWithRequestBuilder(filterId: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersGetCollection]? = nil, limit: Int? = nil, include: [Include_appPriceTiersGetCollection]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersGetCollection]? = nil, limitPricePoints: Int? = nil) -> RequestBuilder<AppPriceTiersResponse> {
        let localVariablePath = "/v1/appPriceTiers"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(), isExplode: false),
            "fields[appPriceTiers]": (wrappedValue: fieldsAppPriceTiers?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "limit[pricePoints]": (wrappedValue: limitPricePoints?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPriceTiersResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppPriceTiers
     */
    public enum FieldsAppPriceTiers_appPriceTiersGetInstance: String, CaseIterable {
        case pricepoints = "pricePoints"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPriceTiersGetInstance: String, CaseIterable {
        case pricepoints = "pricePoints"
    }

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPriceTiersGetInstance: String, CaseIterable {
        case customerprice = "customerPrice"
        case pricetier = "priceTier"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPriceTiers: (query) the fields to include for returned resources of type appPriceTiers (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter limitPricePoints: (query) maximum number of related pricePoints returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func appPriceTiersGetInstance(id: String, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersGetInstance]? = nil, include: [Include_appPriceTiersGetInstance]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersGetInstance]? = nil, limitPricePoints: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppPriceTierResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appPriceTiersGetInstanceWithRequestBuilder(id: id, fieldsAppPriceTiers: fieldsAppPriceTiers, include: include, fieldsAppPricePoints: fieldsAppPricePoints, limitPricePoints: limitPricePoints).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appPriceTiers/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppPriceTiers: (query) the fields to include for returned resources of type appPriceTiers (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter limitPricePoints: (query) maximum number of related pricePoints returned (when they are included) (optional)
     - returns: RequestBuilder<AppPriceTierResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPriceTiersGetInstanceWithRequestBuilder(id: String, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersGetInstance]? = nil, include: [Include_appPriceTiersGetInstance]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersGetInstance]? = nil, limitPricePoints: Int? = nil) -> RequestBuilder<AppPriceTierResponse> {
        var localVariablePath = "/v1/appPriceTiers/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appPriceTiers]": (wrappedValue: fieldsAppPriceTiers?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "limit[pricePoints]": (wrappedValue: limitPricePoints?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPriceTierResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppPriceTiers
     */
    public enum FieldsAppPriceTiers_appPriceTiersPricePointsGetToManyRelated: String, CaseIterable {
        case pricepoints = "pricePoints"
    }

    /**
     * enum for parameter fieldsAppPricePoints
     */
    public enum FieldsAppPricePoints_appPriceTiersPricePointsGetToManyRelated: String, CaseIterable {
        case customerprice = "customerPrice"
        case pricetier = "priceTier"
        case proceeds = "proceeds"
        case territory = "territory"
    }

    /**
     * enum for parameter fieldsTerritories
     */
    public enum FieldsTerritories_appPriceTiersPricePointsGetToManyRelated: String, CaseIterable {
        case currency = "currency"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appPriceTiersPricePointsGetToManyRelated: String, CaseIterable {
        case pricetier = "priceTier"
        case territory = "territory"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPriceTiers: (query) the fields to include for returned resources of type appPriceTiers (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func appPriceTiersPricePointsGetToManyRelated(id: String, filterTerritory: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersPricePointsGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersPricePointsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceTiersPricePointsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceTiersPricePointsGetToManyRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppPricePointsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appPriceTiersPricePointsGetToManyRelatedWithRequestBuilder(id: id, filterTerritory: filterTerritory, fieldsAppPriceTiers: fieldsAppPriceTiers, fieldsAppPricePoints: fieldsAppPricePoints, fieldsTerritories: fieldsTerritories, limit: limit, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appPriceTiers/{id}/pricePoints
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterTerritory: (query) filter by id(s) of related &#39;territory&#39; (optional)
     - parameter fieldsAppPriceTiers: (query) the fields to include for returned resources of type appPriceTiers (optional)
     - parameter fieldsAppPricePoints: (query) the fields to include for returned resources of type appPricePoints (optional)
     - parameter fieldsTerritories: (query) the fields to include for returned resources of type territories (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppPricePointsResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func appPriceTiersPricePointsGetToManyRelatedWithRequestBuilder(id: String, filterTerritory: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers_appPriceTiersPricePointsGetToManyRelated]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints_appPriceTiersPricePointsGetToManyRelated]? = nil, fieldsTerritories: [FieldsTerritories_appPriceTiersPricePointsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appPriceTiersPricePointsGetToManyRelated]? = nil) -> RequestBuilder<AppPricePointsResponse> {
        var localVariablePath = "/v1/appPriceTiers/{id}/pricePoints"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[territory]": (wrappedValue: filterTerritory?.encodeToJSON(), isExplode: false),
            "fields[appPriceTiers]": (wrappedValue: fieldsAppPriceTiers?.encodeToJSON(), isExplode: false),
            "fields[appPricePoints]": (wrappedValue: fieldsAppPricePoints?.encodeToJSON(), isExplode: false),
            "fields[territories]": (wrappedValue: fieldsTerritories?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPricePointsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
