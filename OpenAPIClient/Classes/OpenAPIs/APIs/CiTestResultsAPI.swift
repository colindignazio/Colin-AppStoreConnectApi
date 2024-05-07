//
// CiTestResultsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CiTestResultsAPI {

    /**
     * enum for parameter fieldsCiTestResults
     */
    public enum FieldsCiTestResults_ciTestResultsGetInstance: String, CaseIterable {
        case classname = "className"
        case destinationtestresults = "destinationTestResults"
        case filesource = "fileSource"
        case message = "message"
        case name = "name"
        case status = "status"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiTestResults: (query) the fields to include for returned resources of type ciTestResults (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func ciTestResultsGetInstance(id: String, fieldsCiTestResults: [FieldsCiTestResults_ciTestResultsGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CiTestResultResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return ciTestResultsGetInstanceWithRequestBuilder(id: id, fieldsCiTestResults: fieldsCiTestResults).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/ciTestResults/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiTestResults: (query) the fields to include for returned resources of type ciTestResults (optional)
     - returns: RequestBuilder<CiTestResultResponse> 
     */
    open class func ciTestResultsGetInstanceWithRequestBuilder(id: String, fieldsCiTestResults: [FieldsCiTestResults_ciTestResultsGetInstance]? = nil) -> RequestBuilder<CiTestResultResponse> {
        var localVariablePath = "/v1/ciTestResults/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciTestResults]": (wrappedValue: fieldsCiTestResults?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiTestResultResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}