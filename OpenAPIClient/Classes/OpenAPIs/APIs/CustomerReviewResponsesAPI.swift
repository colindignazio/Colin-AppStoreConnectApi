//
// CustomerReviewResponsesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CustomerReviewResponsesAPI {

    /**

     - parameter customerReviewResponseV1CreateRequest: (body) CustomerReviewResponse representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customerReviewResponsesCreateInstance(customerReviewResponseV1CreateRequest: CustomerReviewResponseV1CreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CustomerReviewResponseV1Response?, _ error: Error?) -> Void)) -> RequestTask {
        return customerReviewResponsesCreateInstanceWithRequestBuilder(customerReviewResponseV1CreateRequest: customerReviewResponseV1CreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/customerReviewResponses
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter customerReviewResponseV1CreateRequest: (body) CustomerReviewResponse representation 
     - returns: RequestBuilder<CustomerReviewResponseV1Response> 
     */
    open class func customerReviewResponsesCreateInstanceWithRequestBuilder(customerReviewResponseV1CreateRequest: CustomerReviewResponseV1CreateRequest) -> RequestBuilder<CustomerReviewResponseV1Response> {
        let localVariablePath = "/v1/customerReviewResponses"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: customerReviewResponseV1CreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponseV1Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customerReviewResponsesDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return customerReviewResponsesDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/customerReviewResponses/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func customerReviewResponsesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/customerReviewResponses/{id}"
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
     * enum for parameter fieldsCustomerReviewResponses
     */
    public enum FieldsCustomerReviewResponses_customerReviewResponsesGetInstance: String, CaseIterable {
        case lastmodifieddate = "lastModifiedDate"
        case responsebody = "responseBody"
        case review = "review"
        case state = "state"
    }

    /**
     * enum for parameter include
     */
    public enum Include_customerReviewResponsesGetInstance: String, CaseIterable {
        case review = "review"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCustomerReviewResponses: (query) the fields to include for returned resources of type customerReviewResponses (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customerReviewResponsesGetInstance(id: String, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewResponsesGetInstance]? = nil, include: [Include_customerReviewResponsesGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CustomerReviewResponseV1Response?, _ error: Error?) -> Void)) -> RequestTask {
        return customerReviewResponsesGetInstanceWithRequestBuilder(id: id, fieldsCustomerReviewResponses: fieldsCustomerReviewResponses, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/customerReviewResponses/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCustomerReviewResponses: (query) the fields to include for returned resources of type customerReviewResponses (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<CustomerReviewResponseV1Response> 
     */
    open class func customerReviewResponsesGetInstanceWithRequestBuilder(id: String, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses_customerReviewResponsesGetInstance]? = nil, include: [Include_customerReviewResponsesGetInstance]? = nil) -> RequestBuilder<CustomerReviewResponseV1Response> {
        var localVariablePath = "/v1/customerReviewResponses/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[customerReviewResponses]": (wrappedValue: fieldsCustomerReviewResponses?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerReviewResponseV1Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
