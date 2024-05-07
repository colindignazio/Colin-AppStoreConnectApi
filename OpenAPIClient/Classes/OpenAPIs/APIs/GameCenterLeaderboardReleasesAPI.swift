//
// GameCenterLeaderboardReleasesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GameCenterLeaderboardReleasesAPI {

    /**

     - parameter gameCenterLeaderboardReleaseCreateRequest: (body) GameCenterLeaderboardRelease representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardReleasesCreateInstance(gameCenterLeaderboardReleaseCreateRequest: GameCenterLeaderboardReleaseCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardReleaseResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardReleasesCreateInstanceWithRequestBuilder(gameCenterLeaderboardReleaseCreateRequest: gameCenterLeaderboardReleaseCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/gameCenterLeaderboardReleases
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter gameCenterLeaderboardReleaseCreateRequest: (body) GameCenterLeaderboardRelease representation 
     - returns: RequestBuilder<GameCenterLeaderboardReleaseResponse> 
     */
    open class func gameCenterLeaderboardReleasesCreateInstanceWithRequestBuilder(gameCenterLeaderboardReleaseCreateRequest: GameCenterLeaderboardReleaseCreateRequest) -> RequestBuilder<GameCenterLeaderboardReleaseResponse> {
        let localVariablePath = "/v1/gameCenterLeaderboardReleases"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gameCenterLeaderboardReleaseCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardReleaseResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardReleasesDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardReleasesDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/gameCenterLeaderboardReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func gameCenterLeaderboardReleasesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/gameCenterLeaderboardReleases/{id}"
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
     * enum for parameter fieldsGameCenterLeaderboardReleases
     */
    public enum FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardReleasesGetInstance: String, CaseIterable {
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterleaderboard = "gameCenterLeaderboard"
        case live = "live"
    }

    /**
     * enum for parameter include
     */
    public enum Include_gameCenterLeaderboardReleasesGetInstance: String, CaseIterable {
        case gamecenterdetail = "gameCenterDetail"
        case gamecenterleaderboard = "gameCenterLeaderboard"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardReleases: (query) the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gameCenterLeaderboardReleasesGetInstance(id: String, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardReleasesGetInstance]? = nil, include: [Include_gameCenterLeaderboardReleasesGetInstance]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GameCenterLeaderboardReleaseResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gameCenterLeaderboardReleasesGetInstanceWithRequestBuilder(id: id, fieldsGameCenterLeaderboardReleases: fieldsGameCenterLeaderboardReleases, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/gameCenterLeaderboardReleases/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsGameCenterLeaderboardReleases: (query) the fields to include for returned resources of type gameCenterLeaderboardReleases (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<GameCenterLeaderboardReleaseResponse> 
     */
    open class func gameCenterLeaderboardReleasesGetInstanceWithRequestBuilder(id: String, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases_gameCenterLeaderboardReleasesGetInstance]? = nil, include: [Include_gameCenterLeaderboardReleasesGetInstance]? = nil) -> RequestBuilder<GameCenterLeaderboardReleaseResponse> {
        var localVariablePath = "/v1/gameCenterLeaderboardReleases/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[gameCenterLeaderboardReleases]": (wrappedValue: fieldsGameCenterLeaderboardReleases?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GameCenterLeaderboardReleaseResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}