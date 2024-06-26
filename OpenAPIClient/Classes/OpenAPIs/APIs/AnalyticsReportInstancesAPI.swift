//
// AnalyticsReportInstancesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AnalyticsReportInstancesAPI {

    /**
     * enum for parameter fieldsAnalyticsReportInstances
     */
    public enum FieldsAnalyticsReportInstances_analyticsReportInstancesGetInstance: String, CaseIterable {
        case granularity = "granularity"
        case processingdate = "processingDate"
        case segments = "segments"
    }

    /**
     * enum for parameter fieldsAnalyticsReportSegments
     */
    public enum FieldsAnalyticsReportSegments_analyticsReportInstancesGetInstance: String, CaseIterable {
        case checksum = "checksum"
        case sizeinbytes = "sizeInBytes"
        case url = "url"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAnalyticsReportInstances: (query) the fields to include for returned resources of type analyticsReportInstances (optional)
     - parameter fieldsAnalyticsReportSegments: (query) the fields to include for returned resources of type analyticsReportSegments (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func analyticsReportInstancesGetInstance(id: String, fieldsAnalyticsReportInstances: [FieldsAnalyticsReportInstances_analyticsReportInstancesGetInstance]? = nil, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportInstancesGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnalyticsReportInstanceResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return analyticsReportInstancesGetInstanceWithRequestBuilder(id: id, fieldsAnalyticsReportInstances: fieldsAnalyticsReportInstances, fieldsAnalyticsReportSegments: fieldsAnalyticsReportSegments).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/analyticsReportInstances/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAnalyticsReportInstances: (query) the fields to include for returned resources of type analyticsReportInstances (optional)
     - parameter fieldsAnalyticsReportSegments: (query) the fields to include for returned resources of type analyticsReportSegments (optional)
     - returns: RequestBuilder<AnalyticsReportInstanceResponse> 
     */
    open class func analyticsReportInstancesGetInstanceWithRequestBuilder(id: String, fieldsAnalyticsReportInstances: [FieldsAnalyticsReportInstances_analyticsReportInstancesGetInstance]? = nil, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportInstancesGetInstance]? = nil) -> RequestBuilder<AnalyticsReportInstanceResponse> {
        var localVariablePath = "/v1/analyticsReportInstances/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[analyticsReportInstances]": (wrappedValue: fieldsAnalyticsReportInstances?.encodeToJSON(), isExplode: false),
            "fields[analyticsReportSegments]": (wrappedValue: fieldsAnalyticsReportSegments?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnalyticsReportInstanceResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAnalyticsReportSegments
     */
    public enum FieldsAnalyticsReportSegments_analyticsReportInstancesSegmentsGetToManyRelated: String, CaseIterable {
        case checksum = "checksum"
        case sizeinbytes = "sizeInBytes"
        case url = "url"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAnalyticsReportSegments: (query) the fields to include for returned resources of type analyticsReportSegments (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func analyticsReportInstancesSegmentsGetToManyRelated(id: String, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportInstancesSegmentsGetToManyRelated]? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnalyticsReportSegmentsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return analyticsReportInstancesSegmentsGetToManyRelatedWithRequestBuilder(id: id, fieldsAnalyticsReportSegments: fieldsAnalyticsReportSegments, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/analyticsReportInstances/{id}/segments
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAnalyticsReportSegments: (query) the fields to include for returned resources of type analyticsReportSegments (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<AnalyticsReportSegmentsResponse> 
     */
    open class func analyticsReportInstancesSegmentsGetToManyRelatedWithRequestBuilder(id: String, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments_analyticsReportInstancesSegmentsGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<AnalyticsReportSegmentsResponse> {
        var localVariablePath = "/v1/analyticsReportInstances/{id}/segments"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[analyticsReportSegments]": (wrappedValue: fieldsAnalyticsReportSegments?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnalyticsReportSegmentsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
