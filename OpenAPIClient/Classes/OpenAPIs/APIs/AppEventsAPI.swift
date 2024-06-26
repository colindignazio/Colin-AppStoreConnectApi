//
// AppEventsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppEventsAPI {

    /**

     - parameter appEventCreateRequest: (body) AppEvent representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appEventsCreateInstance(appEventCreateRequest: AppEventCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppEventResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appEventsCreateInstanceWithRequestBuilder(appEventCreateRequest: appEventCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/appEvents
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter appEventCreateRequest: (body) AppEvent representation 
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsCreateInstanceWithRequestBuilder(appEventCreateRequest: AppEventCreateRequest) -> RequestBuilder<AppEventResponse> {
        let localVariablePath = "/v1/appEvents"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEventCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appEventsDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return appEventsDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func appEventsDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/appEvents/{id}"
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
     * enum for parameter fieldsAppEvents
     */
    public enum FieldsAppEvents_appEventsGetInstance: String, CaseIterable {
        case app = "app"
        case archivedterritoryschedules = "archivedTerritorySchedules"
        case badge = "badge"
        case deeplink = "deepLink"
        case eventstate = "eventState"
        case localizations = "localizations"
        case primarylocale = "primaryLocale"
        case priority = "priority"
        case purchaserequirement = "purchaseRequirement"
        case purpose = "purpose"
        case referencename = "referenceName"
        case territoryschedules = "territorySchedules"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appEventsGetInstance: String, CaseIterable {
        case localizations = "localizations"
    }

    /**
     * enum for parameter fieldsAppEventLocalizations
     */
    public enum FieldsAppEventLocalizations_appEventsGetInstance: String, CaseIterable {
        case appevent = "appEvent"
        case appeventscreenshots = "appEventScreenshots"
        case appeventvideoclips = "appEventVideoClips"
        case locale = "locale"
        case longdescription = "longDescription"
        case name = "name"
        case shortdescription = "shortDescription"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEvents: (query) the fields to include for returned resources of type appEvents (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppEventLocalizations: (query) the fields to include for returned resources of type appEventLocalizations (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appEventsGetInstance(id: String, fieldsAppEvents: [FieldsAppEvents_appEventsGetInstance]? = nil, include: [Include_appEventsGetInstance]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsGetInstance]? = nil, limitLocalizations: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppEventResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appEventsGetInstanceWithRequestBuilder(id: id, fieldsAppEvents: fieldsAppEvents, include: include, fieldsAppEventLocalizations: fieldsAppEventLocalizations, limitLocalizations: limitLocalizations).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEvents: (query) the fields to include for returned resources of type appEvents (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppEventLocalizations: (query) the fields to include for returned resources of type appEventLocalizations (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsGetInstanceWithRequestBuilder(id: String, fieldsAppEvents: [FieldsAppEvents_appEventsGetInstance]? = nil, include: [Include_appEventsGetInstance]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsGetInstance]? = nil, limitLocalizations: Int? = nil) -> RequestBuilder<AppEventResponse> {
        var localVariablePath = "/v1/appEvents/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appEvents]": (wrappedValue: fieldsAppEvents?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appEventLocalizations]": (wrappedValue: fieldsAppEventLocalizations?.encodeToJSON(), isExplode: false),
            "limit[localizations]": (wrappedValue: limitLocalizations?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppEventScreenshots
     */
    public enum FieldsAppEventScreenshots_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case appeventassettype = "appEventAssetType"
        case appeventlocalization = "appEventLocalization"
        case assetdeliverystate = "assetDeliveryState"
        case assettoken = "assetToken"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter fieldsAppEventVideoClips
     */
    public enum FieldsAppEventVideoClips_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case appeventassettype = "appEventAssetType"
        case appeventlocalization = "appEventLocalization"
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case previewframetimecode = "previewFrameTimeCode"
        case previewimage = "previewImage"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
        case videourl = "videoUrl"
    }

    /**
     * enum for parameter fieldsAppEventLocalizations
     */
    public enum FieldsAppEventLocalizations_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case appevent = "appEvent"
        case appeventscreenshots = "appEventScreenshots"
        case appeventvideoclips = "appEventVideoClips"
        case locale = "locale"
        case longdescription = "longDescription"
        case name = "name"
        case shortdescription = "shortDescription"
    }

    /**
     * enum for parameter fieldsAppEvents
     */
    public enum FieldsAppEvents_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case app = "app"
        case archivedterritoryschedules = "archivedTerritorySchedules"
        case badge = "badge"
        case deeplink = "deepLink"
        case eventstate = "eventState"
        case localizations = "localizations"
        case primarylocale = "primaryLocale"
        case priority = "priority"
        case purchaserequirement = "purchaseRequirement"
        case purpose = "purpose"
        case referencename = "referenceName"
        case territoryschedules = "territorySchedules"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appEventsLocalizationsGetToManyRelated: String, CaseIterable {
        case appevent = "appEvent"
        case appeventscreenshots = "appEventScreenshots"
        case appeventvideoclips = "appEventVideoClips"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEventScreenshots: (query) the fields to include for returned resources of type appEventScreenshots (optional)
     - parameter fieldsAppEventVideoClips: (query) the fields to include for returned resources of type appEventVideoClips (optional)
     - parameter fieldsAppEventLocalizations: (query) the fields to include for returned resources of type appEventLocalizations (optional)
     - parameter fieldsAppEvents: (query) the fields to include for returned resources of type appEvents (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppEventScreenshots: (query) maximum number of related appEventScreenshots returned (when they are included) (optional)
     - parameter limitAppEventVideoClips: (query) maximum number of related appEventVideoClips returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appEventsLocalizationsGetToManyRelated(id: String, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_appEventsLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppEventScreenshots: Int? = nil, limitAppEventVideoClips: Int? = nil, include: [Include_appEventsLocalizationsGetToManyRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppEventLocalizationsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appEventsLocalizationsGetToManyRelatedWithRequestBuilder(id: id, fieldsAppEventScreenshots: fieldsAppEventScreenshots, fieldsAppEventVideoClips: fieldsAppEventVideoClips, fieldsAppEventLocalizations: fieldsAppEventLocalizations, fieldsAppEvents: fieldsAppEvents, limit: limit, limitAppEventScreenshots: limitAppEventScreenshots, limitAppEventVideoClips: limitAppEventVideoClips, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appEvents/{id}/localizations
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppEventScreenshots: (query) the fields to include for returned resources of type appEventScreenshots (optional)
     - parameter fieldsAppEventVideoClips: (query) the fields to include for returned resources of type appEventVideoClips (optional)
     - parameter fieldsAppEventLocalizations: (query) the fields to include for returned resources of type appEventLocalizations (optional)
     - parameter fieldsAppEvents: (query) the fields to include for returned resources of type appEvents (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppEventScreenshots: (query) maximum number of related appEventScreenshots returned (when they are included) (optional)
     - parameter limitAppEventVideoClips: (query) maximum number of related appEventVideoClips returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppEventLocalizationsResponse> 
     */
    open class func appEventsLocalizationsGetToManyRelatedWithRequestBuilder(id: String, fieldsAppEventScreenshots: [FieldsAppEventScreenshots_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventVideoClips: [FieldsAppEventVideoClips_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations_appEventsLocalizationsGetToManyRelated]? = nil, fieldsAppEvents: [FieldsAppEvents_appEventsLocalizationsGetToManyRelated]? = nil, limit: Int? = nil, limitAppEventScreenshots: Int? = nil, limitAppEventVideoClips: Int? = nil, include: [Include_appEventsLocalizationsGetToManyRelated]? = nil) -> RequestBuilder<AppEventLocalizationsResponse> {
        var localVariablePath = "/v1/appEvents/{id}/localizations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appEventScreenshots]": (wrappedValue: fieldsAppEventScreenshots?.encodeToJSON(), isExplode: false),
            "fields[appEventVideoClips]": (wrappedValue: fieldsAppEventVideoClips?.encodeToJSON(), isExplode: false),
            "fields[appEventLocalizations]": (wrappedValue: fieldsAppEventLocalizations?.encodeToJSON(), isExplode: false),
            "fields[appEvents]": (wrappedValue: fieldsAppEvents?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "limit[appEventScreenshots]": (wrappedValue: limitAppEventScreenshots?.encodeToJSON(), isExplode: true),
            "limit[appEventVideoClips]": (wrappedValue: limitAppEventVideoClips?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventLocalizationsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter appEventUpdateRequest: (body) AppEvent representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appEventsUpdateInstance(id: String, appEventUpdateRequest: AppEventUpdateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppEventResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appEventsUpdateInstanceWithRequestBuilder(id: id, appEventUpdateRequest: appEventUpdateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /v1/appEvents/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter appEventUpdateRequest: (body) AppEvent representation 
     - returns: RequestBuilder<AppEventResponse> 
     */
    open class func appEventsUpdateInstanceWithRequestBuilder(id: String, appEventUpdateRequest: AppEventUpdateRequest) -> RequestBuilder<AppEventResponse> {
        var localVariablePath = "/v1/appEvents/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appEventUpdateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppEventResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
