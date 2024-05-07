//
// BuildBundlesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BuildBundlesAPI {

    /**
     * enum for parameter fieldsAppClipDomainStatuses
     */
    public enum FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated: String, CaseIterable {
        case domains = "domains"
        case lastupdateddate = "lastUpdatedDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelated(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppClipDomainStatusResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(id: id, fieldsAppClipDomainStatuses: fieldsAppClipDomainStatuses).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/buildBundles/{id}/appClipDomainCacheStatus
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainCacheStatusGetToOneRelatedWithRequestBuilder(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainCacheStatusGetToOneRelated]? = nil) -> RequestBuilder<AppClipDomainStatusResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/appClipDomainCacheStatus"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipDomainStatuses]": (wrappedValue: fieldsAppClipDomainStatuses?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppClipDomainStatuses
     */
    public enum FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated: String, CaseIterable {
        case domains = "domains"
        case lastupdateddate = "lastUpdatedDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelated(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppClipDomainStatusResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(id: id, fieldsAppClipDomainStatuses: fieldsAppClipDomainStatuses).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/buildBundles/{id}/appClipDomainDebugStatus
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClipDomainStatuses: (query) the fields to include for returned resources of type appClipDomainStatuses (optional)
     - returns: RequestBuilder<AppClipDomainStatusResponse> 
     */
    open class func buildBundlesAppClipDomainDebugStatusGetToOneRelatedWithRequestBuilder(id: String, fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses_buildBundlesAppClipDomainDebugStatusGetToOneRelated]? = nil) -> RequestBuilder<AppClipDomainStatusResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/appClipDomainDebugStatus"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClipDomainStatuses]": (wrappedValue: fieldsAppClipDomainStatuses?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDomainStatusResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBetaAppClipInvocations
     */
    public enum FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, CaseIterable {
        case betaappclipinvocationlocalizations = "betaAppClipInvocationLocalizations"
        case buildbundle = "buildBundle"
        case url = "url"
    }

    /**
     * enum for parameter fieldsBetaAppClipInvocationLocalizations
     */
    public enum FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, CaseIterable {
        case betaappclipinvocation = "betaAppClipInvocation"
        case locale = "locale"
        case title = "title"
    }

    /**
     * enum for parameter include
     */
    public enum Include_buildBundlesBetaAppClipInvocationsGetToManyRelated: String, CaseIterable {
        case betaappclipinvocationlocalizations = "betaAppClipInvocationLocalizations"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppClipInvocations: (query) the fields to include for returned resources of type betaAppClipInvocations (optional)
     - parameter fieldsBetaAppClipInvocationLocalizations: (query) the fields to include for returned resources of type betaAppClipInvocationLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitBetaAppClipInvocationLocalizations: (query) maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelated(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limit: Int? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, include: [Include_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BetaAppClipInvocationsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(id: id, fieldsBetaAppClipInvocations: fieldsBetaAppClipInvocations, fieldsBetaAppClipInvocationLocalizations: fieldsBetaAppClipInvocationLocalizations, limit: limit, limitBetaAppClipInvocationLocalizations: limitBetaAppClipInvocationLocalizations, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/buildBundles/{id}/betaAppClipInvocations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppClipInvocations: (query) the fields to include for returned resources of type betaAppClipInvocations (optional)
     - parameter fieldsBetaAppClipInvocationLocalizations: (query) the fields to include for returned resources of type betaAppClipInvocationLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitBetaAppClipInvocationLocalizations: (query) maximum number of related betaAppClipInvocationLocalizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<BetaAppClipInvocationsResponse> 
     */
    open class func buildBundlesBetaAppClipInvocationsGetToManyRelatedWithRequestBuilder(id: String, fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil, limit: Int? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, include: [Include_buildBundlesBetaAppClipInvocationsGetToManyRelated]? = nil) -> RequestBuilder<BetaAppClipInvocationsResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/betaAppClipInvocations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppClipInvocations]": (wrappedValue: fieldsBetaAppClipInvocations?.encodeToJSON(), isExplode: false),
            "fields[betaAppClipInvocationLocalizations]": (wrappedValue: fieldsBetaAppClipInvocationLocalizations?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "limit[betaAppClipInvocationLocalizations]": (wrappedValue: limitBetaAppClipInvocationLocalizations?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppClipInvocationsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBuildBundleFileSizes
     */
    public enum FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated: String, CaseIterable {
        case devicemodel = "deviceModel"
        case downloadbytes = "downloadBytes"
        case installbytes = "installBytes"
        case osversion = "osVersion"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuildBundleFileSizes: (query) the fields to include for returned resources of type buildBundleFileSizes (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func buildBundlesBuildBundleFileSizesGetToManyRelated(id: String, fieldsBuildBundleFileSizes: [FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated]? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BuildBundleFileSizesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(id: id, fieldsBuildBundleFileSizes: fieldsBuildBundleFileSizes, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/buildBundles/{id}/buildBundleFileSizes
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuildBundleFileSizes: (query) the fields to include for returned resources of type buildBundleFileSizes (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<BuildBundleFileSizesResponse> 
     */
    open class func buildBundlesBuildBundleFileSizesGetToManyRelatedWithRequestBuilder(id: String, fieldsBuildBundleFileSizes: [FieldsBuildBundleFileSizes_buildBundlesBuildBundleFileSizesGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<BuildBundleFileSizesResponse> {
        var localVariablePath = "/v1/buildBundles/{id}/buildBundleFileSizes"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[buildBundleFileSizes]": (wrappedValue: fieldsBuildBundleFileSizes?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildBundleFileSizesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
