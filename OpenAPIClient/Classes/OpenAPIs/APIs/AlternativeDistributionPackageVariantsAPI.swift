//
// AlternativeDistributionPackageVariantsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AlternativeDistributionPackageVariantsAPI {

    /**
     * enum for parameter fieldsAlternativeDistributionPackageVariants
     */
    public enum FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVariantsGetInstance: String, CaseIterable {
        case alternativedistributionkeyblob = "alternativeDistributionKeyBlob"
        case filechecksum = "fileChecksum"
        case url = "url"
        case urlexpirationdate = "urlExpirationDate"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAlternativeDistributionPackageVariants: (query) the fields to include for returned resources of type alternativeDistributionPackageVariants (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func alternativeDistributionPackageVariantsGetInstance(id: String, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVariantsGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AlternativeDistributionPackageVariantResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return alternativeDistributionPackageVariantsGetInstanceWithRequestBuilder(id: id, fieldsAlternativeDistributionPackageVariants: fieldsAlternativeDistributionPackageVariants).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/alternativeDistributionPackageVariants/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAlternativeDistributionPackageVariants: (query) the fields to include for returned resources of type alternativeDistributionPackageVariants (optional)
     - returns: RequestBuilder<AlternativeDistributionPackageVariantResponse> 
     */
    open class func alternativeDistributionPackageVariantsGetInstanceWithRequestBuilder(id: String, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants_alternativeDistributionPackageVariantsGetInstance]? = nil) -> RequestBuilder<AlternativeDistributionPackageVariantResponse> {
        var localVariablePath = "/v1/alternativeDistributionPackageVariants/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[alternativeDistributionPackageVariants]": (wrappedValue: fieldsAlternativeDistributionPackageVariants?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AlternativeDistributionPackageVariantResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
