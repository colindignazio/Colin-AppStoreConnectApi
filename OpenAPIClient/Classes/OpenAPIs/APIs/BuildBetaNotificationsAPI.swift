//
// BuildBetaNotificationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BuildBetaNotificationsAPI {

    /**

     - parameter buildBetaNotificationCreateRequest: (body) BuildBetaNotification representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func buildBetaNotificationsCreateInstance(buildBetaNotificationCreateRequest: BuildBetaNotificationCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BuildBetaNotificationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return buildBetaNotificationsCreateInstanceWithRequestBuilder(buildBetaNotificationCreateRequest: buildBetaNotificationCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/buildBetaNotifications
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter buildBetaNotificationCreateRequest: (body) BuildBetaNotification representation 
     - returns: RequestBuilder<BuildBetaNotificationResponse> 
     */
    open class func buildBetaNotificationsCreateInstanceWithRequestBuilder(buildBetaNotificationCreateRequest: BuildBetaNotificationCreateRequest) -> RequestBuilder<BuildBetaNotificationResponse> {
        let localVariablePath = "/v1/buildBetaNotifications"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: buildBetaNotificationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuildBetaNotificationResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
