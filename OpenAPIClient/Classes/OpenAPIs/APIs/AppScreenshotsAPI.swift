//
// AppScreenshotsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppScreenshotsAPI {

    /**

     - parameter appScreenshotCreateRequest: (body) AppScreenshot representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotsCreateInstance(appScreenshotCreateRequest: AppScreenshotCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppScreenshotResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotsCreateInstanceWithRequestBuilder(appScreenshotCreateRequest: appScreenshotCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/appScreenshots
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appScreenshotCreateRequest: (body) AppScreenshot representation 
     - returns: RequestBuilder<AppScreenshotResponse> 
     */
    open class func appScreenshotsCreateInstanceWithRequestBuilder(appScreenshotCreateRequest: AppScreenshotCreateRequest) -> RequestBuilder<AppScreenshotResponse> {
        let localVariablePath = "/v1/appScreenshots"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appScreenshotCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotsDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotsDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/appScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appScreenshotsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appScreenshots/{id}"
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
     * enum for parameter fieldsAppScreenshots
     */
    public enum FieldsAppScreenshots_appScreenshotsGetInstance: String, CaseIterable {
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
    public enum Include_appScreenshotsGetInstance: String, CaseIterable {
        case appscreenshotset = "appScreenshotSet"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotsGetInstance(id: String, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotsGetInstance]? = nil, include: [Include_appScreenshotsGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppScreenshotResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotsGetInstanceWithRequestBuilder(id: id, fieldsAppScreenshots: fieldsAppScreenshots, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppScreenshots: (query) the fields to include for returned resources of type appScreenshots (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppScreenshotResponse> 
     */
    open class func appScreenshotsGetInstanceWithRequestBuilder(id: String, fieldsAppScreenshots: [FieldsAppScreenshots_appScreenshotsGetInstance]? = nil, include: [Include_appScreenshotsGetInstance]? = nil) -> RequestBuilder<AppScreenshotResponse> {
        var localVariablePath = "/v1/appScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appScreenshots]": (wrappedValue: fieldsAppScreenshots?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appScreenshotUpdateRequest: (body) AppScreenshot representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appScreenshotsUpdateInstance(id: String, appScreenshotUpdateRequest: AppScreenshotUpdateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppScreenshotResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appScreenshotsUpdateInstanceWithRequestBuilder(id: id, appScreenshotUpdateRequest: appScreenshotUpdateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /v1/appScreenshots/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appScreenshotUpdateRequest: (body) AppScreenshot representation 
     - returns: RequestBuilder<AppScreenshotResponse> 
     */
    open class func appScreenshotsUpdateInstanceWithRequestBuilder(id: String, appScreenshotUpdateRequest: AppScreenshotUpdateRequest) -> RequestBuilder<AppScreenshotResponse> {
        var localVariablePath = "/v1/appScreenshots/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appScreenshotUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppScreenshotResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
