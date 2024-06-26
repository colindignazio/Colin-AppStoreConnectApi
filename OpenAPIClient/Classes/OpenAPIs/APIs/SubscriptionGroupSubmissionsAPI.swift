//
// SubscriptionGroupSubmissionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriptionGroupSubmissionsAPI {

    /**

     - parameter subscriptionGroupSubmissionCreateRequest: (body) SubscriptionGroupSubmission representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func subscriptionGroupSubmissionsCreateInstance(subscriptionGroupSubmissionCreateRequest: SubscriptionGroupSubmissionCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SubscriptionGroupSubmissionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(subscriptionGroupSubmissionCreateRequest: subscriptionGroupSubmissionCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/subscriptionGroupSubmissions
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter subscriptionGroupSubmissionCreateRequest: (body) SubscriptionGroupSubmission representation 
     - returns: RequestBuilder<SubscriptionGroupSubmissionResponse> 
     */
    open class func subscriptionGroupSubmissionsCreateInstanceWithRequestBuilder(subscriptionGroupSubmissionCreateRequest: SubscriptionGroupSubmissionCreateRequest) -> RequestBuilder<SubscriptionGroupSubmissionResponse> {
        let localVariablePath = "/v1/subscriptionGroupSubmissions"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: subscriptionGroupSubmissionCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionGroupSubmissionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
