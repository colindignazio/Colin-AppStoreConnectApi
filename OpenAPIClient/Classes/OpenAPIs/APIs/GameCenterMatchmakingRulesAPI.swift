//
// GameCenterMatchmakingRulesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterMatchmakingRulesAPI {

    /**

     - parameter gameCenterMatchmakingRuleCreateRequest: (body) GameCenterMatchmakingRule representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterMatchmakingRulesCreateInstance(gameCenterMatchmakingRuleCreateRequest: GameCenterMatchmakingRuleCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterMatchmakingRuleResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterMatchmakingRulesCreateInstanceWithRequestBuilder(gameCenterMatchmakingRuleCreateRequest: gameCenterMatchmakingRuleCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/gameCenterMatchmakingRules
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterMatchmakingRuleCreateRequest: (body) GameCenterMatchmakingRule representation 
     - returns: RequestBuilder<GameCenterMatchmakingRuleResponse> 
     */
    open class func gameCenterMatchmakingRulesCreateInstanceWithRequestBuilder(gameCenterMatchmakingRuleCreateRequest: GameCenterMatchmakingRuleCreateRequest) -> RequestBuilder<GameCenterMatchmakingRuleResponse> {
        let localVariablePath = "/v1/gameCenterMatchmakingRules"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterMatchmakingRuleCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingRuleResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterMatchmakingRulesDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterMatchmakingRulesDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/gameCenterMatchmakingRules/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterMatchmakingRulesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterMatchmakingRules/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter granularity
     */
    public enum Granularity_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics: String, CaseIterable {
        case p1D = "P1D"
        case pt1h = "PT1H"
        case pt15m = "PT15M"
    }

    /**
     * enum for parameter groupBy
     */
    public enum GroupBy_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics: String, CaseIterable {
        case gamecentermatchmakingqueue = "gameCenterMatchmakingQueue"
        case result = "result"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics: String, CaseIterable {
        case count = "count"
        case count2 = "-count"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter granularity: (query) the granularity of the per-group dataset 
     - parameter limit: (query) maximum number of groups to return per page (optional)
     - parameter groupBy: (query) the dimension by which to group the results (optional)
     - parameter filterResult: (query) filter by &#39;result&#39; attribute dimension (optional)
     - parameter filterGameCenterMatchmakingQueue: (query) filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension (optional)
     - parameter sort: (query) comma-separated list of sort expressions; metrics will be sorted as specified (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics]? = nil, filterResult: String? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterMatchmakingBooleanRuleResultsV1MetricResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetricsWithRequestBuilder(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterResult: filterResult, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingBooleanRuleResults
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter granularity: (query) the granularity of the per-group dataset 
     - parameter limit: (query) maximum number of groups to return per page (optional)
     - parameter groupBy: (query) the dimension by which to group the results (optional)
     - parameter filterResult: (query) filter by &#39;result&#39; attribute dimension (optional)
     - parameter filterGameCenterMatchmakingQueue: (query) filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension (optional)
     - parameter sort: (query) comma-separated list of sort expressions; metrics will be sorted as specified (optional)
     - returns: RequestBuilder<GameCenterMatchmakingBooleanRuleResultsV1MetricResponse> 
     */
    open class func gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetricsWithRequestBuilder(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics]? = nil, filterResult: String? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingBooleanRuleResultsGetMetrics]? = nil) -> RequestBuilder<GameCenterMatchmakingBooleanRuleResultsV1MetricResponse> {
        var localVariablePath = "/v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingBooleanRuleResults"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "granularity": (wrappedValue: granularity.encodeToJSON(), isExplode: false),
            "groupBy": (wrappedValue: groupBy?.encodeToJSON(), isExplode: false),
            "filter[result]": (wrappedValue: filterResult?.encodeToJSON(), isExplode: false),
            "filter[gameCenterMatchmakingQueue]": (wrappedValue: filterGameCenterMatchmakingQueue?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingBooleanRuleResultsV1MetricResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter granularity
     */
    public enum Granularity_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics: String, CaseIterable {
        case p1D = "P1D"
        case pt1h = "PT1H"
        case pt15m = "PT15M"
    }

    /**
     * enum for parameter groupBy
     */
    public enum GroupBy_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics: String, CaseIterable {
        case gamecentermatchmakingqueue = "gameCenterMatchmakingQueue"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics: String, CaseIterable {
        case averageresult = "averageResult"
        case averageresult2 = "-averageResult"
        case count = "count"
        case count2 = "-count"
        case p50result = "p50Result"
        case p50result2 = "-p50Result"
        case p95result = "p95Result"
        case p95result2 = "-p95Result"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter granularity: (query) the granularity of the per-group dataset 
     - parameter limit: (query) maximum number of groups to return per page (optional)
     - parameter groupBy: (query) the dimension by which to group the results (optional)
     - parameter filterGameCenterMatchmakingQueue: (query) filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension (optional)
     - parameter sort: (query) comma-separated list of sort expressions; metrics will be sorted as specified (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterMatchmakingNumberRuleResultsV1MetricResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetricsWithRequestBuilder(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingNumberRuleResults
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter granularity: (query) the granularity of the per-group dataset 
     - parameter limit: (query) maximum number of groups to return per page (optional)
     - parameter groupBy: (query) the dimension by which to group the results (optional)
     - parameter filterGameCenterMatchmakingQueue: (query) filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension (optional)
     - parameter sort: (query) comma-separated list of sort expressions; metrics will be sorted as specified (optional)
     - returns: RequestBuilder<GameCenterMatchmakingNumberRuleResultsV1MetricResponse> 
     */
    open class func gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetricsWithRequestBuilder(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingNumberRuleResultsGetMetrics]? = nil) -> RequestBuilder<GameCenterMatchmakingNumberRuleResultsV1MetricResponse> {
        var localVariablePath = "/v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingNumberRuleResults"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "granularity": (wrappedValue: granularity.encodeToJSON(), isExplode: false),
            "groupBy": (wrappedValue: groupBy?.encodeToJSON(), isExplode: false),
            "filter[gameCenterMatchmakingQueue]": (wrappedValue: filterGameCenterMatchmakingQueue?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingNumberRuleResultsV1MetricResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter granularity
     */
    public enum Granularity_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics: String, CaseIterable {
        case p1D = "P1D"
        case pt1h = "PT1H"
        case pt15m = "PT15M"
    }

    /**
     * enum for parameter groupBy
     */
    public enum GroupBy_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics: String, CaseIterable {
        case gamecentermatchmakingqueue = "gameCenterMatchmakingQueue"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics: String, CaseIterable {
        case count = "count"
        case count2 = "-count"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter granularity: (query) the granularity of the per-group dataset 
     - parameter limit: (query) maximum number of groups to return per page (optional)
     - parameter groupBy: (query) the dimension by which to group the results (optional)
     - parameter filterGameCenterMatchmakingQueue: (query) filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension (optional)
     - parameter sort: (query) comma-separated list of sort expressions; metrics will be sorted as specified (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterMatchmakingRuleErrorsV1MetricResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetricsWithRequestBuilder(id: id, granularity: granularity, limit: limit, groupBy: groupBy, filterGameCenterMatchmakingQueue: filterGameCenterMatchmakingQueue, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingRuleErrors
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter granularity: (query) the granularity of the per-group dataset 
     - parameter limit: (query) maximum number of groups to return per page (optional)
     - parameter groupBy: (query) the dimension by which to group the results (optional)
     - parameter filterGameCenterMatchmakingQueue: (query) filter by &#39;gameCenterMatchmakingQueue&#39; relationship dimension (optional)
     - parameter sort: (query) comma-separated list of sort expressions; metrics will be sorted as specified (optional)
     - returns: RequestBuilder<GameCenterMatchmakingRuleErrorsV1MetricResponse> 
     */
    open class func gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetricsWithRequestBuilder(id: String, granularity: Granularity_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics, limit: Int? = nil, groupBy: [GroupBy_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort_gameCenterMatchmakingRulesMatchmakingRuleErrorsGetMetrics]? = nil) -> RequestBuilder<GameCenterMatchmakingRuleErrorsV1MetricResponse> {
        var localVariablePath = "/v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingRuleErrors"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "granularity": (wrappedValue: granularity.encodeToJSON(), isExplode: false),
            "groupBy": (wrappedValue: groupBy?.encodeToJSON(), isExplode: false),
            "filter[gameCenterMatchmakingQueue]": (wrappedValue: filterGameCenterMatchmakingQueue?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingRuleErrorsV1MetricResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterMatchmakingRuleUpdateRequest: (body) GameCenterMatchmakingRule representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterMatchmakingRulesUpdateInstance(id: String, gameCenterMatchmakingRuleUpdateRequest: GameCenterMatchmakingRuleUpdateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterMatchmakingRuleResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterMatchmakingRulesUpdateInstanceWithRequestBuilder(id: id, gameCenterMatchmakingRuleUpdateRequest: gameCenterMatchmakingRuleUpdateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /v1/gameCenterMatchmakingRules/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterMatchmakingRuleUpdateRequest: (body) GameCenterMatchmakingRule representation 
     - returns: RequestBuilder<GameCenterMatchmakingRuleResponse> 
     */
    open class func gameCenterMatchmakingRulesUpdateInstanceWithRequestBuilder(id: String, gameCenterMatchmakingRuleUpdateRequest: GameCenterMatchmakingRuleUpdateRequest) -> RequestBuilder<GameCenterMatchmakingRuleResponse> {
        var localVariablePath = "/v1/gameCenterMatchmakingRules/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterMatchmakingRuleUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterMatchmakingRuleResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
