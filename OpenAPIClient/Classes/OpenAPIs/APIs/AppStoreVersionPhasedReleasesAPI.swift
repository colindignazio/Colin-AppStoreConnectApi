//
// AppStoreVersionPhasedReleasesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppStoreVersionPhasedReleasesAPI {

    /**

     - parameter appStoreVersionPhasedReleaseCreateRequest: (body) AppStoreVersionPhasedRelease representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appStoreVersionPhasedReleasesCreateInstance(appStoreVersionPhasedReleaseCreateRequest: AppStoreVersionPhasedReleaseCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppStoreVersionPhasedReleaseResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appStoreVersionPhasedReleasesCreateInstanceWithRequestBuilder(appStoreVersionPhasedReleaseCreateRequest: appStoreVersionPhasedReleaseCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/appStoreVersionPhasedReleases
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appStoreVersionPhasedReleaseCreateRequest: (body) AppStoreVersionPhasedRelease representation 
     - returns: RequestBuilder<AppStoreVersionPhasedReleaseResponse> 
     */
    open class func appStoreVersionPhasedReleasesCreateInstanceWithRequestBuilder(appStoreVersionPhasedReleaseCreateRequest: AppStoreVersionPhasedReleaseCreateRequest) -> RequestBuilder<AppStoreVersionPhasedReleaseResponse> {
        let localVariablePath = "/v1/appStoreVersionPhasedReleases"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreVersionPhasedReleaseCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionPhasedReleaseResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appStoreVersionPhasedReleasesDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return appStoreVersionPhasedReleasesDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/appStoreVersionPhasedReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appStoreVersionPhasedReleasesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appStoreVersionPhasedReleases/{id}"
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

     - parameter id: (path) the id of the requested resource 
     - parameter appStoreVersionPhasedReleaseUpdateRequest: (body) AppStoreVersionPhasedRelease representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appStoreVersionPhasedReleasesUpdateInstance(id: String, appStoreVersionPhasedReleaseUpdateRequest: AppStoreVersionPhasedReleaseUpdateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppStoreVersionPhasedReleaseResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appStoreVersionPhasedReleasesUpdateInstanceWithRequestBuilder(id: id, appStoreVersionPhasedReleaseUpdateRequest: appStoreVersionPhasedReleaseUpdateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /v1/appStoreVersionPhasedReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appStoreVersionPhasedReleaseUpdateRequest: (body) AppStoreVersionPhasedRelease representation 
     - returns: RequestBuilder<AppStoreVersionPhasedReleaseResponse> 
     */
    open class func appStoreVersionPhasedReleasesUpdateInstanceWithRequestBuilder(id: String, appStoreVersionPhasedReleaseUpdateRequest: AppStoreVersionPhasedReleaseUpdateRequest) -> RequestBuilder<AppStoreVersionPhasedReleaseResponse> {
        var localVariablePath = "/v1/appStoreVersionPhasedReleases/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appStoreVersionPhasedReleaseUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppStoreVersionPhasedReleaseResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
