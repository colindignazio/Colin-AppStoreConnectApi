//
// AppScreenshotSetsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppScreenshotSetsAPI {

    /**
     * enum for parameter fieldsAppScreenshotSets
     */
    public enum FieldsAppScreenshotSets_appScreenshotSetsAppScreenshotsGetToManyRelated: String, CaseIterable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case appscreenshots = "appScreenshots"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
        case screenshotdisplaytype = "screenshotDisplayType"
    }

    /**
     * enum for parameter fieldsAppScreenshots
     */
    public enum FieldsAppScreenshots_appScreenshotSetsAppScreenshotsGetToManyRelated: String, CaseIterable {
        case appscreenshotset = "appScreenshotSet"
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case assettype = "assetType"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appScreenshotSetsAppScreenshotsGetToManyRelated: String, CaseIterable {
        case appscreenshotset = "appScreenshotSet"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotSetsAppScreenshotsGetToManyRelated(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppScreenshotsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotSetsAppScreenshotsGetToManyRelatedWithRequestBuilder(id: id, fieldsAppScreenshotSets: fieldsAppScreenshotSets, fieldsAppScreenshots: fieldsAppScreenshots, limit: limit, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appScreenshotSets/{id}/appScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppScreenshotsResponse> 
     */
    open class func appScreenshotSetsAppScreenshotsGetToManyRelatedWithRequestBuilder(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil, limit: Int? = nil, include: [Include_appScreenshotSetsAppScreenshotsGetToManyRelated]? = nil) -> RequestBuilder<AppScreenshotsResponse> {
        var localVariablePath = "/v1/appScreenshotSets/{id}/appScreenshots"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appScreenshotSets]": (wrappedValue: fieldsAppScreenshotSets?.encodeToJSON(), isExplode: false),
            "fields[appScreenshots]": (wrappedValue: fieldsAppScreenshots?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotSetsAppScreenshotsGetToManyRelationship(id: String, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppScreenshotSetAppScreenshotsLinkagesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotSetsAppScreenshotsGetToManyRelationshipWithRequestBuilder(id: id, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appScreenshotSets/{id}/relationships/appScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse> 
     */
    open class func appScreenshotSetsAppScreenshotsGetToManyRelationshipWithRequestBuilder(id: String, limit: Int? = nil) -> RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse> {
        var localVariablePath = "/v1/appScreenshotSets/{id}/relationships/appScreenshots"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetAppScreenshotsLinkagesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appScreenshotSetAppScreenshotsLinkagesRequest: (body) List of related linkages 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotSetsAppScreenshotsReplaceToManyRelationship(id: String, appScreenshotSetAppScreenshotsLinkagesRequest: AppScreenshotSetAppScreenshotsLinkagesRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotSetsAppScreenshotsReplaceToManyRelationshipWithRequestBuilder(id: id, appScreenshotSetAppScreenshotsLinkagesRequest: appScreenshotSetAppScreenshotsLinkagesRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /v1/appScreenshotSets/{id}/relationships/appScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appScreenshotSetAppScreenshotsLinkagesRequest: (body) List of related linkages 
     - returns: RequestBuilder<Void> 
     */
    open class func appScreenshotSetsAppScreenshotsReplaceToManyRelationshipWithRequestBuilder(id: String, appScreenshotSetAppScreenshotsLinkagesRequest: AppScreenshotSetAppScreenshotsLinkagesRequest) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appScreenshotSets/{id}/relationships/appScreenshots"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appScreenshotSetAppScreenshotsLinkagesRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter appScreenshotSetCreateRequest: (body) AppScreenshotSet representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotSetsCreateInstance(appScreenshotSetCreateRequest: AppScreenshotSetCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppScreenshotSetResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotSetsCreateInstanceWithRequestBuilder(appScreenshotSetCreateRequest: appScreenshotSetCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/appScreenshotSets
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appScreenshotSetCreateRequest: (body) AppScreenshotSet representation 
     - returns: RequestBuilder<AppScreenshotSetResponse> 
     */
    open class func appScreenshotSetsCreateInstanceWithRequestBuilder(appScreenshotSetCreateRequest: AppScreenshotSetCreateRequest) -> RequestBuilder<AppScreenshotSetResponse> {
        let localVariablePath = "/v1/appScreenshotSets"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appScreenshotSetCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotSetsDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotSetsDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/appScreenshotSets/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appScreenshotSetsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appScreenshotSets/{id}"
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
     * enum for parameter fieldsAppScreenshotSets
     */
    public enum FieldsAppScreenshotSets_appScreenshotSetsGetInstance: String, CaseIterable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case appscreenshots = "appScreenshots"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
        case screenshotdisplaytype = "screenshotDisplayType"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appScreenshotSetsGetInstance: String, CaseIterable {
        case appcustomproductpagelocalization = "appCustomProductPageLocalization"
        case appscreenshots = "appScreenshots"
        case appstoreversionexperimenttreatmentlocalization = "appStoreVersionExperimentTreatmentLocalization"
        case appstoreversionlocalization = "appStoreVersionLocalization"
    }

    /**
     * enum for parameter fieldsAppScreenshots
     */
    public enum FieldsAppScreenshots_appScreenshotSetsGetInstance: String, CaseIterable {
        case appscreenshotset = "appScreenshotSet"
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case assettype = "assetType"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter limitAppScreenshots: (query) maximum number of related appScreenshots returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotSetsGetInstance(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsGetInstance]? = nil, include: [Include_appScreenshotSetsGetInstance]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsGetInstance]? = nil, limitAppScreenshots: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppScreenshotSetResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotSetsGetInstanceWithRequestBuilder(id: id, fieldsAppScreenshotSets: fieldsAppScreenshotSets, include: include, fieldsAppScreenshots: fieldsAppScreenshots, limitAppScreenshots: limitAppScreenshots).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appScreenshotSets/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshotSets: (query) the fields to include for returned resources of type appScreenshotSets (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter limitAppScreenshots: (query) maximum number of related appScreenshots returned (when they are included) (optional)
     - returns: RequestBuilder<AppScreenshotSetResponse> 
     */
    open class func appScreenshotSetsGetInstanceWithRequestBuilder(id: String, fieldsAppScreenshotSets: [FieldsAppScreenshotSets_appScreenshotSetsGetInstance]? = nil, include: [Include_appScreenshotSetsGetInstance]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotSetsGetInstance]? = nil, limitAppScreenshots: Int? = nil) -> RequestBuilder<AppScreenshotSetResponse> {
        var localVariablePath = "/v1/appScreenshotSets/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appScreenshotSets]": (wrappedValue: fieldsAppScreenshotSets?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appScreenshots]": (wrappedValue: fieldsAppScreenshots?.encodeToJSON(), isExplode: false),
            "limit[appScreenshots]": (wrappedValue: limitAppScreenshots?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotSetResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}