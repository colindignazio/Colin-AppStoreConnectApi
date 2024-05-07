//
// GameCenterLeaderboardSetLocalizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterLeaderboardSetLocalizationsAPI {

    /**

     - parameter gameCenterLeaderboardSetLocalizationCreateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardSetLocalizationsCreateInstance(gameCenterLeaderboardSetLocalizationCreateRequest: GameCenterLeaderboardSetLocalizationCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardSetLocalizationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(gameCenterLeaderboardSetLocalizationCreateRequest: gameCenterLeaderboardSetLocalizationCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/gameCenterLeaderboardSetLocalizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterLeaderboardSetLocalizationCreateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsCreateInstanceWithRequestBuilder(gameCenterLeaderboardSetLocalizationCreateRequest: GameCenterLeaderboardSetLocalizationCreateRequest) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        let localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardSetLocalizationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardSetLocalizationsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
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
     * enum for parameter fieldsGameCenterLeaderboardSetLocalizations
     */
    public enum FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, CaseIterable {
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetImages
     */
    public enum FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated: String, CaseIterable {
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardSetImageResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(id: id, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterLeaderboardSetImageResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelatedWithRequestBuilder(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGameCenterLeaderboardSetImageGetToOneRelated]? = nil) -> RequestBuilder<GameCenterLeaderboardSetImageResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardSetLocalizations]": (wrappedValue: fieldsGameCenterLeaderboardSetLocalizations?.encodeToJSON(), isExplode: false),
            "fields[gameCenterLeaderboardSetImages]": (wrappedValue: fieldsGameCenterLeaderboardSetImages?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetImageResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetLocalizations
     */
    public enum FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance: String, CaseIterable {
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
        case locale = "locale"
        case name = "name"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardSetLocalizationsGetInstance: String, CaseIterable {
        case gamecenterleaderboardset = "gameCenterLeaderboardSet"
        case gamecenterleaderboardsetimage = "gameCenterLeaderboardSetImage"
    }

    /**
     * enum for parameter fieldsGameCenterLeaderboardSetImages
     */
    public enum FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case gamecenterleaderboardsetlocalization = "gameCenterLeaderboardSetLocalization"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardSetLocalizationsGetInstance(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardSetLocalizationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(id: id, fieldsGameCenterLeaderboardSetLocalizations: fieldsGameCenterLeaderboardSetLocalizations, include: include, fieldsGameCenterLeaderboardSetImages: fieldsGameCenterLeaderboardSetImages).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardSetLocalizations: (query) the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsGameCenterLeaderboardSetImages: (query) the fields to include for returned resources of type gameCenterLeaderboardSetImages (optional)
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsGetInstanceWithRequestBuilder(id: String, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, include: [Include_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil, fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages_gameCenterLeaderboardSetLocalizationsGetInstance]? = nil) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardSetLocalizations]": (wrappedValue: fieldsGameCenterLeaderboardSetLocalizations?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[gameCenterLeaderboardSetImages]": (wrappedValue: fieldsGameCenterLeaderboardSetImages?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterLeaderboardSetLocalizationUpdateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstance(id: String, gameCenterLeaderboardSetLocalizationUpdateRequest: GameCenterLeaderboardSetLocalizationUpdateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardSetLocalizationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(id: id, gameCenterLeaderboardSetLocalizationUpdateRequest: gameCenterLeaderboardSetLocalizationUpdateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /v1/gameCenterLeaderboardSetLocalizations/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter gameCenterLeaderboardSetLocalizationUpdateRequest: (body) GameCenterLeaderboardSetLocalization representation 
     - returns: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> 
     */
    open class func gameCenterLeaderboardSetLocalizationsUpdateInstanceWithRequestBuilder(id: String, gameCenterLeaderboardSetLocalizationUpdateRequest: GameCenterLeaderboardSetLocalizationUpdateRequest) -> RequestBuilder<GameCenterLeaderboardSetLocalizationResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardSetLocalizations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardSetLocalizationUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardSetLocalizationResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}