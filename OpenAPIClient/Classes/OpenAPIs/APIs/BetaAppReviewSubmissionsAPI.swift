//
// BetaAppReviewSubmissionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BetaAppReviewSubmissionsAPI {

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_betaAppReviewSubmissionsBuildGetToOneRelated: String, CaseIterable {
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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func betaAppReviewSubmissionsBuildGetToOneRelated(id: String, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsBuildGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BuildWithoutIncludesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return betaAppReviewSubmissionsBuildGetToOneRelatedWithRequestBuilder(id: id, fieldsBuilds: fieldsBuilds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/betaAppReviewSubmissions/{id}/build
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - returns: RequestBuilder<BuildWithoutIncludesResponse> 
     */
    open class func betaAppReviewSubmissionsBuildGetToOneRelatedWithRequestBuilder(id: String, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsBuildGetToOneRelated]? = nil) -> RequestBuilder<BuildWithoutIncludesResponse> {
        var localVariablePath = "/v1/betaAppReviewSubmissions/{id}/build"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildWithoutIncludesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter betaAppReviewSubmissionCreateRequest: (body) BetaAppReviewSubmission representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func betaAppReviewSubmissionsCreateInstance(betaAppReviewSubmissionCreateRequest: BetaAppReviewSubmissionCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BetaAppReviewSubmissionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return betaAppReviewSubmissionsCreateInstanceWithRequestBuilder(betaAppReviewSubmissionCreateRequest: betaAppReviewSubmissionCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/betaAppReviewSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter betaAppReviewSubmissionCreateRequest: (body) BetaAppReviewSubmission representation 
     - returns: RequestBuilder<BetaAppReviewSubmissionResponse> 
     */
    open class func betaAppReviewSubmissionsCreateInstanceWithRequestBuilder(betaAppReviewSubmissionCreateRequest: BetaAppReviewSubmissionCreateRequest) -> RequestBuilder<BetaAppReviewSubmissionResponse> {
        let localVariablePath = "/v1/betaAppReviewSubmissions"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: betaAppReviewSubmissionCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter filterBetaReviewState
     */
    public enum FilterBetaReviewState_betaAppReviewSubmissionsGetCollection: String, CaseIterable {
        case waitingForReview = "WAITING_FOR_REVIEW"
        case inReview = "IN_REVIEW"
        case rejected = "REJECTED"
        case approved = "APPROVED"
    }

    /**
     * enum for parameter fieldsBetaAppReviewSubmissions
     */
    public enum FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetCollection: String, CaseIterable {
        case betareviewstate = "betaReviewState"
        case build = "build"
        case submitteddate = "submittedDate"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppReviewSubmissionsGetCollection: String, CaseIterable {
        case build = "build"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_betaAppReviewSubmissionsGetCollection: String, CaseIterable {
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

     - parameter filterBuild: (query) filter by id(s) of related &#39;build&#39; 
     - parameter filterBetaReviewState: (query) filter by attribute &#39;betaReviewState&#39; (optional)
     - parameter fieldsBetaAppReviewSubmissions: (query) the fields to include for returned resources of type betaAppReviewSubmissions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func betaAppReviewSubmissionsGetCollection(filterBuild: [String], filterBetaReviewState: [FilterBetaReviewState_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetCollection]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BetaAppReviewSubmissionsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return betaAppReviewSubmissionsGetCollectionWithRequestBuilder(filterBuild: filterBuild, filterBetaReviewState: filterBetaReviewState, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, limit: limit, include: include, fieldsBuilds: fieldsBuilds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/betaAppReviewSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterBuild: (query) filter by id(s) of related &#39;build&#39; 
     - parameter filterBetaReviewState: (query) filter by attribute &#39;betaReviewState&#39; (optional)
     - parameter fieldsBetaAppReviewSubmissions: (query) the fields to include for returned resources of type betaAppReviewSubmissions (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - returns: RequestBuilder<BetaAppReviewSubmissionsResponse> 
     */
    open class func betaAppReviewSubmissionsGetCollectionWithRequestBuilder(filterBuild: [String], filterBetaReviewState: [FilterBetaReviewState_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetCollection]? = nil, limit: Int? = nil, include: [Include_betaAppReviewSubmissionsGetCollection]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetCollection]? = nil) -> RequestBuilder<BetaAppReviewSubmissionsResponse> {
        let localVariablePath = "/v1/betaAppReviewSubmissions"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[betaReviewState]": (wrappedValue: filterBetaReviewState?.encodeToJSON(), isExplode: false),
            "filter[build]": (wrappedValue: filterBuild.encodeToJSON(), isExplode: false),
            "fields[betaAppReviewSubmissions]": (wrappedValue: fieldsBetaAppReviewSubmissions?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsBetaAppReviewSubmissions
     */
    public enum FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetInstance: String, CaseIterable {
        case betareviewstate = "betaReviewState"
        case build = "build"
        case submitteddate = "submittedDate"
    }

    /**
     * enum for parameter include
     */
    public enum Include_betaAppReviewSubmissionsGetInstance: String, CaseIterable {
        case build = "build"
    }

    /**
     * enum for parameter fieldsBuilds
     */
    public enum FieldsBuilds_betaAppReviewSubmissionsGetInstance: String, CaseIterable {
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
     - parameter fieldsBetaAppReviewSubmissions: (query) the fields to include for returned resources of type betaAppReviewSubmissions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func betaAppReviewSubmissionsGetInstance(id: String, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetInstance]? = nil, include: [Include_betaAppReviewSubmissionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BetaAppReviewSubmissionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return betaAppReviewSubmissionsGetInstanceWithRequestBuilder(id: id, fieldsBetaAppReviewSubmissions: fieldsBetaAppReviewSubmissions, include: include, fieldsBuilds: fieldsBuilds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/betaAppReviewSubmissions/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBetaAppReviewSubmissions: (query) the fields to include for returned resources of type betaAppReviewSubmissions (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsBuilds: (query) the fields to include for returned resources of type builds (optional)
     - returns: RequestBuilder<BetaAppReviewSubmissionResponse> 
     */
    open class func betaAppReviewSubmissionsGetInstanceWithRequestBuilder(id: String, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions_betaAppReviewSubmissionsGetInstance]? = nil, include: [Include_betaAppReviewSubmissionsGetInstance]? = nil, fieldsBuilds: [FieldsBuilds_betaAppReviewSubmissionsGetInstance]? = nil) -> RequestBuilder<BetaAppReviewSubmissionResponse> {
        var localVariablePath = "/v1/betaAppReviewSubmissions/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[betaAppReviewSubmissions]": (wrappedValue: fieldsBetaAppReviewSubmissions?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[builds]": (wrappedValue: fieldsBuilds?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BetaAppReviewSubmissionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}