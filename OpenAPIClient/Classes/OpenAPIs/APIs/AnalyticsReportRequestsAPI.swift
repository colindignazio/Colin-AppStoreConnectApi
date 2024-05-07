//
// AnalyticsReportRequestsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AnalyticsReportRequestsAPI {

    /**

     - parameter analyticsReportRequestCreateRequest: (body) AnalyticsReportRequest representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func analyticsReportRequestsCreateInstance(analyticsReportRequestCreateRequest: AnalyticsReportRequestCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnalyticsReportRequestResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return analyticsReportRequestsCreateInstanceWithRequestBuilder(analyticsReportRequestCreateRequest: analyticsReportRequestCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/analyticsReportRequests
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter analyticsReportRequestCreateRequest: (body) AnalyticsReportRequest representation 
     - returns: RequestBuilder<AnalyticsReportRequestResponse> 
     */
    open class func analyticsReportRequestsCreateInstanceWithRequestBuilder(analyticsReportRequestCreateRequest: AnalyticsReportRequestCreateRequest) -> RequestBuilder<AnalyticsReportRequestResponse> {
        let localVariablePath = "/v1/analyticsReportRequests"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: analyticsReportRequestCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnalyticsReportRequestResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func analyticsReportRequestsDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return analyticsReportRequestsDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/analyticsReportRequests/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func analyticsReportRequestsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/analyticsReportRequests/{id}"
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
     * enum for parameter fieldsAnalyticsReportRequests
     */
    public enum FieldsAnalyticsReportRequests_analyticsReportRequestsGetInstance: String, CaseIterable {
        case accesstype = "accessType"
        case app = "app"
        case reports = "reports"
        case stoppedduetoinactivity = "stoppedDueToInactivity"
    }

    /**
     * enum for parameter include
     */
    public enum Include_analyticsReportRequestsGetInstance: String, CaseIterable {
        case reports = "reports"
    }

    /**
     * enum for parameter fieldsAnalyticsReports
     */
    public enum FieldsAnalyticsReports_analyticsReportRequestsGetInstance: String, CaseIterable {
        case category = "category"
        case instances = "instances"
        case name = "name"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAnalyticsReportRequests: (query) the fields to include for returned resources of type analyticsReportRequests (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAnalyticsReports: (query) the fields to include for returned resources of type analyticsReports (optional)
     - parameter limitReports: (query) maximum number of related reports returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func analyticsReportRequestsGetInstance(id: String, fieldsAnalyticsReportRequests: [FieldsAnalyticsReportRequests_analyticsReportRequestsGetInstance]? = nil, include: [Include_analyticsReportRequestsGetInstance]? = nil, fieldsAnalyticsReports: [FieldsAnalyticsReports_analyticsReportRequestsGetInstance]? = nil, limitReports: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnalyticsReportRequestResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return analyticsReportRequestsGetInstanceWithRequestBuilder(id: id, fieldsAnalyticsReportRequests: fieldsAnalyticsReportRequests, include: include, fieldsAnalyticsReports: fieldsAnalyticsReports, limitReports: limitReports).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/analyticsReportRequests/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAnalyticsReportRequests: (query) the fields to include for returned resources of type analyticsReportRequests (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAnalyticsReports: (query) the fields to include for returned resources of type analyticsReports (optional)
     - parameter limitReports: (query) maximum number of related reports returned (when they are included) (optional)
     - returns: RequestBuilder<AnalyticsReportRequestResponse> 
     */
    open class func analyticsReportRequestsGetInstanceWithRequestBuilder(id: String, fieldsAnalyticsReportRequests: [FieldsAnalyticsReportRequests_analyticsReportRequestsGetInstance]? = nil, include: [Include_analyticsReportRequestsGetInstance]? = nil, fieldsAnalyticsReports: [FieldsAnalyticsReports_analyticsReportRequestsGetInstance]? = nil, limitReports: Int? = nil) -> RequestBuilder<AnalyticsReportRequestResponse> {
        var localVariablePath = "/v1/analyticsReportRequests/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[analyticsReportRequests]": (wrappedValue: fieldsAnalyticsReportRequests?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[analyticsReports]": (wrappedValue: fieldsAnalyticsReports?.encodeToJSON(), isExplode: false),
            "limit[reports]": (wrappedValue: limitReports?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnalyticsReportRequestResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter filterCategory
     */
    public enum FilterCategory_analyticsReportRequestsReportsGetToManyRelated: String, CaseIterable {
        case appUsage = "APP_USAGE"
        case appStoreEngagement = "APP_STORE_ENGAGEMENT"
        case commerce = "COMMERCE"
        case frameworkUsage = "FRAMEWORK_USAGE"
        case performance = "PERFORMANCE"
    }

    /**
     * enum for parameter fieldsAnalyticsReports
     */
    public enum FieldsAnalyticsReports_analyticsReportRequestsReportsGetToManyRelated: String, CaseIterable {
        case category = "category"
        case instances = "instances"
        case name = "name"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterCategory: (query) filter by attribute &#39;category&#39; (optional)
     - parameter filterName: (query) filter by attribute &#39;name&#39; (optional)
     - parameter fieldsAnalyticsReports: (query) the fields to include for returned resources of type analyticsReports (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func analyticsReportRequestsReportsGetToManyRelated(id: String, filterCategory: [FilterCategory_analyticsReportRequestsReportsGetToManyRelated]? = nil, filterName: [String]? = nil, fieldsAnalyticsReports: [FieldsAnalyticsReports_analyticsReportRequestsReportsGetToManyRelated]? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnalyticsReportsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return analyticsReportRequestsReportsGetToManyRelatedWithRequestBuilder(id: id, filterCategory: filterCategory, filterName: filterName, fieldsAnalyticsReports: fieldsAnalyticsReports, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/analyticsReportRequests/{id}/reports
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterCategory: (query) filter by attribute &#39;category&#39; (optional)
     - parameter filterName: (query) filter by attribute &#39;name&#39; (optional)
     - parameter fieldsAnalyticsReports: (query) the fields to include for returned resources of type analyticsReports (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<AnalyticsReportsResponse> 
     */
    open class func analyticsReportRequestsReportsGetToManyRelatedWithRequestBuilder(id: String, filterCategory: [FilterCategory_analyticsReportRequestsReportsGetToManyRelated]? = nil, filterName: [String]? = nil, fieldsAnalyticsReports: [FieldsAnalyticsReports_analyticsReportRequestsReportsGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<AnalyticsReportsResponse> {
        var localVariablePath = "/v1/analyticsReportRequests/{id}/reports"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[category]": (wrappedValue: filterCategory?.encodeToJSON(), isExplode: false),
            "filter[name]": (wrappedValue: filterName?.encodeToJSON(), isExplode: false),
            "fields[analyticsReports]": (wrappedValue: fieldsAnalyticsReports?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnalyticsReportsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}