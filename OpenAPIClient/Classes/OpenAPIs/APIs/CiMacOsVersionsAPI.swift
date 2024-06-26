//
// CiMacOsVersionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CiMacOsVersionsAPI {

    /**
     * enum for parameter fieldsCiMacOsVersions
     */
    public enum FieldsCiMacOsVersions_ciMacOsVersionsGetCollection: String, CaseIterable {
        case name = "name"
        case version = "version"
        case xcodeversions = "xcodeVersions"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciMacOsVersionsGetCollection: String, CaseIterable {
        case xcodeversions = "xcodeVersions"
    }

    /**
     * enum for parameter fieldsCiXcodeVersions
     */
    public enum FieldsCiXcodeVersions_ciMacOsVersionsGetCollection: String, CaseIterable {
        case macosversions = "macOsVersions"
        case name = "name"
        case testdestinations = "testDestinations"
        case version = "version"
    }

    /**

     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter limitXcodeVersions: (query) maximum number of related xcodeVersions returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func ciMacOsVersionsGetCollection(fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_ciMacOsVersionsGetCollection]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsGetCollection]? = nil, limitXcodeVersions: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CiMacOsVersionsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return ciMacOsVersionsGetCollectionWithRequestBuilder(fieldsCiMacOsVersions: fieldsCiMacOsVersions, limit: limit, include: include, fieldsCiXcodeVersions: fieldsCiXcodeVersions, limitXcodeVersions: limitXcodeVersions).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/ciMacOsVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter limitXcodeVersions: (query) maximum number of related xcodeVersions returned (when they are included) (optional)
     - returns: RequestBuilder<CiMacOsVersionsResponse> 
     */
    open class func ciMacOsVersionsGetCollectionWithRequestBuilder(fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsGetCollection]? = nil, limit: Int? = nil, include: [Include_ciMacOsVersionsGetCollection]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsGetCollection]? = nil, limitXcodeVersions: Int? = nil) -> RequestBuilder<CiMacOsVersionsResponse> {
        let localVariablePath = "/v1/ciMacOsVersions"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciMacOsVersions]": (wrappedValue: fieldsCiMacOsVersions?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[ciXcodeVersions]": (wrappedValue: fieldsCiXcodeVersions?.encodeToJSON(), isExplode: false),
            "limit[xcodeVersions]": (wrappedValue: limitXcodeVersions?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiMacOsVersionsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCiMacOsVersions
     */
    public enum FieldsCiMacOsVersions_ciMacOsVersionsGetInstance: String, CaseIterable {
        case name = "name"
        case version = "version"
        case xcodeversions = "xcodeVersions"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciMacOsVersionsGetInstance: String, CaseIterable {
        case xcodeversions = "xcodeVersions"
    }

    /**
     * enum for parameter fieldsCiXcodeVersions
     */
    public enum FieldsCiXcodeVersions_ciMacOsVersionsGetInstance: String, CaseIterable {
        case macosversions = "macOsVersions"
        case name = "name"
        case testdestinations = "testDestinations"
        case version = "version"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter limitXcodeVersions: (query) maximum number of related xcodeVersions returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func ciMacOsVersionsGetInstance(id: String, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsGetInstance]? = nil, include: [Include_ciMacOsVersionsGetInstance]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsGetInstance]? = nil, limitXcodeVersions: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CiMacOsVersionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return ciMacOsVersionsGetInstanceWithRequestBuilder(id: id, fieldsCiMacOsVersions: fieldsCiMacOsVersions, include: include, fieldsCiXcodeVersions: fieldsCiXcodeVersions, limitXcodeVersions: limitXcodeVersions).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/ciMacOsVersions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter limitXcodeVersions: (query) maximum number of related xcodeVersions returned (when they are included) (optional)
     - returns: RequestBuilder<CiMacOsVersionResponse> 
     */
    open class func ciMacOsVersionsGetInstanceWithRequestBuilder(id: String, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsGetInstance]? = nil, include: [Include_ciMacOsVersionsGetInstance]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsGetInstance]? = nil, limitXcodeVersions: Int? = nil) -> RequestBuilder<CiMacOsVersionResponse> {
        var localVariablePath = "/v1/ciMacOsVersions/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciMacOsVersions]": (wrappedValue: fieldsCiMacOsVersions?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[ciXcodeVersions]": (wrappedValue: fieldsCiXcodeVersions?.encodeToJSON(), isExplode: false),
            "limit[xcodeVersions]": (wrappedValue: limitXcodeVersions?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiMacOsVersionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCiXcodeVersions
     */
    public enum FieldsCiXcodeVersions_ciMacOsVersionsXcodeVersionsGetToManyRelated: String, CaseIterable {
        case macosversions = "macOsVersions"
        case name = "name"
        case testdestinations = "testDestinations"
        case version = "version"
    }

    /**
     * enum for parameter fieldsCiMacOsVersions
     */
    public enum FieldsCiMacOsVersions_ciMacOsVersionsXcodeVersionsGetToManyRelated: String, CaseIterable {
        case name = "name"
        case version = "version"
        case xcodeversions = "xcodeVersions"
    }

    /**
     * enum for parameter include
     */
    public enum Include_ciMacOsVersionsXcodeVersionsGetToManyRelated: String, CaseIterable {
        case macosversions = "macOsVersions"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitMacOsVersions: (query) maximum number of related macOsVersions returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func ciMacOsVersionsXcodeVersionsGetToManyRelated(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitMacOsVersions: Int? = nil, include: [Include_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CiXcodeVersionsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return ciMacOsVersionsXcodeVersionsGetToManyRelatedWithRequestBuilder(id: id, fieldsCiXcodeVersions: fieldsCiXcodeVersions, fieldsCiMacOsVersions: fieldsCiMacOsVersions, limit: limit, limitMacOsVersions: limitMacOsVersions, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/ciMacOsVersions/{id}/xcodeVersions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCiXcodeVersions: (query) the fields to include for returned resources of type ciXcodeVersions (optional)
     - parameter fieldsCiMacOsVersions: (query) the fields to include for returned resources of type ciMacOsVersions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitMacOsVersions: (query) maximum number of related macOsVersions returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<CiXcodeVersionsResponse> 
     */
    open class func ciMacOsVersionsXcodeVersionsGetToManyRelatedWithRequestBuilder(id: String, fieldsCiXcodeVersions: [FieldsCiXcodeVersions_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil, limit: Int? = nil, limitMacOsVersions: Int? = nil, include: [Include_ciMacOsVersionsXcodeVersionsGetToManyRelated]? = nil) -> RequestBuilder<CiXcodeVersionsResponse> {
        var localVariablePath = "/v1/ciMacOsVersions/{id}/xcodeVersions"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[ciXcodeVersions]": (wrappedValue: fieldsCiXcodeVersions?.encodeToJSON(), isExplode: false),
            "fields[ciMacOsVersions]": (wrappedValue: fieldsCiMacOsVersions?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "limit[macOsVersions]": (wrappedValue: limitMacOsVersions?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CiXcodeVersionsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
