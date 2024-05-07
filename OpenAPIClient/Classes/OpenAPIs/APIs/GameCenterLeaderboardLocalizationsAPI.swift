//
// GameCenterLeaderboardLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterLeaderboardLocalizationsAPI {

    /**

     - parameter gameCenterLeaderboardLocalizationCreateRequest: (body) GameCenterLeaderboardLocalization representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardLocalizationsCreateInstance(gameCenterLeaderboardLocalizationCreateRequest: GameCenterLeaderboardLocalizationCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardLocalizationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardLocalizationsCreateInstanceWithRequestBuilder(gameCenterLeaderboardLocalizationCreateRequest: gameCenterLeaderboardLocalizationCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/gameCenterLeaderboardLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterLeaderboardLocalizationCreateRequest: (body) GameCenterLeaderboardLocalization representation 
     - returns: RequestBuilder<GameCenterLeaderboardLocalizationResponse> 
     */
    open class func gameCenterLeaderboardLocalizationsCreateInstanceWithRequestBuilder(gameCenterLeaderboardLocalizationCreateRequest: GameCenterLeaderboardLocalizationCreateRequest) -> RequestBuilder<GameCenterLeaderboardLocalizationResponse> {
        let localVariablePath = "/v1/gameCenterLeaderboardLocalizations"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardLocalizationResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardLocalizationsDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/gameCenterLeaderboardLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterLeaderboardLocalizations/{id}"
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
     * enum for parameter fieldsGameCenterLeaderboardImages
     */
    public enum FieldsGameCenterLeaderboardImages_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterleaderboardlocalization = "gameCenterLeaderboardLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardLocalizations
     */
    public enum FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated: String, CaseIterable {
        case formatteroverride = "formatterOverride"
        case formattersuffix = "formatterSuffix"
        case formattersuffixsingular = "formatterSuffixSingular"
        case gamecenterleaderboard = "gameCenterLeaderboard"
        case gamecenterleaderboardimage = "gameCenterLeaderboardImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated: String, CaseIterable {
        case gamecenterleaderboardlocalization = "gameCenterLeaderboardLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardImages: (query) the fields to include for returned resources of type gameCenterLeaderboardImages (optional)
     - parameter fieldsGameCenterLeaderboardLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated(id: String, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardImageResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelatedWithRequestBuilder(id: id, fieldsGameCenterLeaderboardImages: fieldsGameCenterLeaderboardImages, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/gameCenterLeaderboardLocalizations/{id}/gameCenterLeaderboardImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardImages: (query) the fields to include for returned resources of type gameCenterLeaderboardImages (optional)
     - parameter fieldsGameCenterLeaderboardLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterLeaderboardImageResponse> 
     */
    open class func gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelatedWithRequestBuilder(id: String, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardLocalizationsGameCenterLeaderboardImageGetToOneRelated]? = nil) -> RequestBuilder<GameCenterLeaderboardImageResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardLocalizations/{id}/gameCenterLeaderboardImage"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardImages]": (wrappedValue: fieldsGameCenterLeaderboardImages?.encodeToJSON(), isExplode: false),
            "fields[gameCenterLeaderboardLocalizations]": (wrappedValue: fieldsGameCenterLeaderboardLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardImageResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardLocalizations
     */
    public enum FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardLocalizationsGetInstance: String, CaseIterable {
        case formatteroverride = "formatterOverride"
        case formattersuffix = "formatterSuffix"
        case formattersuffixsingular = "formatterSuffixSingular"
        case gamecenterleaderboard = "gameCenterLeaderboard"
        case gamecenterleaderboardimage = "gameCenterLeaderboardImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardLocalizationsGetInstance: String, CaseIterable {
        case gamecenterleaderboard = "gameCenterLeaderboard"
        case gamecenterleaderboardimage = "gameCenterLeaderboardImage"
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardImages
     */
    public enum FieldsGameCenterLeaderboardImages_gameCenterLeaderboardLocalizationsGetInstance: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterleaderboardlocalization = "gameCenterLeaderboardLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsGameCenterLeaderboardImages: (query) the fields to include for returned resources of type gameCenterLeaderboardImages (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardLocalizationsGetInstance(id: String, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages_gameCenterLeaderboardLocalizationsGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardLocalizationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsGameCenterLeaderboardLocalizations: fieldsGameCenterLeaderboardLocalizations, include: include, fieldsGameCenterLeaderboardImages: fieldsGameCenterLeaderboardImages).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/gameCenterLeaderboardLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsGameCenterLeaderboardImages: (query) the fields to include for returned resources of type gameCenterLeaderboardImages (optional)
     - returns: RequestBuilder<GameCenterLeaderboardLocalizationResponse> 
     */
    open class func gameCenterLeaderboardLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations_gameCenterLeaderboardLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages_gameCenterLeaderboardLocalizationsGetInstance]? = nil) -> RequestBuilder<GameCenterLeaderboardLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardLocalizations]": (wrappedValue: fieldsGameCenterLeaderboardLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[gameCenterLeaderboardImages]": (wrappedValue: fieldsGameCenterLeaderboardImages?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardLocalizationResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterLeaderboardLocalizationUpdateRequest: (body) GameCenterLeaderboardLocalization representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardLocalizationsUpdateInstance(id: String, gameCenterLeaderboardLocalizationUpdateRequest: GameCenterLeaderboardLocalizationUpdateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardLocalizationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardLocalizationsUpdateInstanceWithRequestBuilder(id: id, gameCenterLeaderboardLocalizationUpdateRequest: gameCenterLeaderboardLocalizationUpdateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /v1/gameCenterLeaderboardLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterLeaderboardLocalizationUpdateRequest: (body) GameCenterLeaderboardLocalization representation 
     - returns: RequestBuilder<GameCenterLeaderboardLocalizationResponse> 
     */
    open class func gameCenterLeaderboardLocalizationsUpdateInstanceWithRequestBuilder(id: String, gameCenterLeaderboardLocalizationUpdateRequest: GameCenterLeaderboardLocalizationUpdateRequest) -> RequestBuilder<GameCenterLeaderboardLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardLocalizationResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}