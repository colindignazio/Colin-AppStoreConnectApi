//
// ProfilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ProfilesAPI {

    /**
     * enum for parameter fieldsBundleIds
     */
    public enum FieldsBundleIds_profilesBundleIdGetToOneRelated: String, CaseIterable {
        case app = "app"
        case bundleidcapabilities = "bundleIdCapabilities"
        case identifier = "identifier"
        case name = "name"
        case platform = "platform"
        case profiles = "profiles"
        case seedid = "seedId"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBundleIds: (query) the fields to include for returned resources of type bundleIds (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func profilesBundleIdGetToOneRelated(id: String, fieldsBundleIds: [FieldsBundleIds_profilesBundleIdGetToOneRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BundleIdWithoutIncludesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return profilesBundleIdGetToOneRelatedWithRequestBuilder(id: id, fieldsBundleIds: fieldsBundleIds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/profiles/{id}/bundleId
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsBundleIds: (query) the fields to include for returned resources of type bundleIds (optional)
     - returns: RequestBuilder<BundleIdWithoutIncludesResponse> 
     */
    open class func profilesBundleIdGetToOneRelatedWithRequestBuilder(id: String, fieldsBundleIds: [FieldsBundleIds_profilesBundleIdGetToOneRelated]? = nil) -> RequestBuilder<BundleIdWithoutIncludesResponse> {
        var localVariablePath = "/v1/profiles/{id}/bundleId"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[bundleIds]": (wrappedValue: fieldsBundleIds?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BundleIdWithoutIncludesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsCertificates
     */
    public enum FieldsCertificates_profilesCertificatesGetToManyRelated: String, CaseIterable {
        case certificatecontent = "certificateContent"
        case certificatetype = "certificateType"
        case csrcontent = "csrContent"
        case displayname = "displayName"
        case expirationdate = "expirationDate"
        case name = "name"
        case platform = "platform"
        case serialnumber = "serialNumber"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func profilesCertificatesGetToManyRelated(id: String, fieldsCertificates: [FieldsCertificates_profilesCertificatesGetToManyRelated]? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CertificatesWithoutIncludesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return profilesCertificatesGetToManyRelatedWithRequestBuilder(id: id, fieldsCertificates: fieldsCertificates, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/profiles/{id}/certificates
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<CertificatesWithoutIncludesResponse> 
     */
    open class func profilesCertificatesGetToManyRelatedWithRequestBuilder(id: String, fieldsCertificates: [FieldsCertificates_profilesCertificatesGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<CertificatesWithoutIncludesResponse> {
        var localVariablePath = "/v1/profiles/{id}/certificates"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[certificates]": (wrappedValue: fieldsCertificates?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CertificatesWithoutIncludesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter profileCreateRequest: (body) Profile representation 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func profilesCreateInstance(profileCreateRequest: ProfileCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProfileResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return profilesCreateInstanceWithRequestBuilder(profileCreateRequest: profileCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/profiles
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter profileCreateRequest: (body) Profile representation 
     - returns: RequestBuilder<ProfileResponse> 
     */
    open class func profilesCreateInstanceWithRequestBuilder(profileCreateRequest: ProfileCreateRequest) -> RequestBuilder<ProfileResponse> {
        let localVariablePath = "/v1/profiles"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: profileCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProfileResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func profilesDeleteInstance(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return profilesDeleteInstanceWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /v1/profiles/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - returns: RequestBuilder<Void> 
     */
    open class func profilesDeleteInstanceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/profiles/{id}"
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
     * enum for parameter fieldsDevices
     */
    public enum FieldsDevices_profilesDevicesGetToManyRelated: String, CaseIterable {
        case addeddate = "addedDate"
        case deviceclass = "deviceClass"
        case model = "model"
        case name = "name"
        case platform = "platform"
        case status = "status"
        case udid = "udid"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func profilesDevicesGetToManyRelated(id: String, fieldsDevices: [FieldsDevices_profilesDevicesGetToManyRelated]? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: DevicesWithoutIncludesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return profilesDevicesGetToManyRelatedWithRequestBuilder(id: id, fieldsDevices: fieldsDevices, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/profiles/{id}/devices
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - returns: RequestBuilder<DevicesWithoutIncludesResponse> 
     */
    open class func profilesDevicesGetToManyRelatedWithRequestBuilder(id: String, fieldsDevices: [FieldsDevices_profilesDevicesGetToManyRelated]? = nil, limit: Int? = nil) -> RequestBuilder<DevicesWithoutIncludesResponse> {
        var localVariablePath = "/v1/profiles/{id}/devices"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[devices]": (wrappedValue: fieldsDevices?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DevicesWithoutIncludesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter filterProfileState
     */
    public enum FilterProfileState_profilesGetCollection: String, CaseIterable {
        case active = "ACTIVE"
        case invalid = "INVALID"
    }

    /**
     * enum for parameter filterProfileType
     */
    public enum FilterProfileType_profilesGetCollection: String, CaseIterable {
        case iosAppDevelopment = "IOS_APP_DEVELOPMENT"
        case iosAppStore = "IOS_APP_STORE"
        case iosAppAdhoc = "IOS_APP_ADHOC"
        case iosAppInhouse = "IOS_APP_INHOUSE"
        case macAppDevelopment = "MAC_APP_DEVELOPMENT"
        case macAppStore = "MAC_APP_STORE"
        case macAppDirect = "MAC_APP_DIRECT"
        case tvosAppDevelopment = "TVOS_APP_DEVELOPMENT"
        case tvosAppStore = "TVOS_APP_STORE"
        case tvosAppAdhoc = "TVOS_APP_ADHOC"
        case tvosAppInhouse = "TVOS_APP_INHOUSE"
        case macCatalystAppDevelopment = "MAC_CATALYST_APP_DEVELOPMENT"
        case macCatalystAppStore = "MAC_CATALYST_APP_STORE"
        case macCatalystAppDirect = "MAC_CATALYST_APP_DIRECT"
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_profilesGetCollection: String, CaseIterable {
        case id = "id"
        case id2 = "-id"
        case name = "name"
        case name2 = "-name"
        case profilestate = "profileState"
        case profilestate2 = "-profileState"
        case profiletype = "profileType"
        case profiletype2 = "-profileType"
    }

    /**
     * enum for parameter fieldsProfiles
     */
    public enum FieldsProfiles_profilesGetCollection: String, CaseIterable {
        case bundleid = "bundleId"
        case certificates = "certificates"
        case createddate = "createdDate"
        case devices = "devices"
        case expirationdate = "expirationDate"
        case name = "name"
        case platform = "platform"
        case profilecontent = "profileContent"
        case profilestate = "profileState"
        case profiletype = "profileType"
        case uuid = "uuid"
    }

    /**
     * enum for parameter include
     */
    public enum Include_profilesGetCollection: String, CaseIterable {
        case bundleid = "bundleId"
        case certificates = "certificates"
        case devices = "devices"
    }

    /**
     * enum for parameter fieldsCertificates
     */
    public enum FieldsCertificates_profilesGetCollection: String, CaseIterable {
        case certificatecontent = "certificateContent"
        case certificatetype = "certificateType"
        case csrcontent = "csrContent"
        case displayname = "displayName"
        case expirationdate = "expirationDate"
        case name = "name"
        case platform = "platform"
        case serialnumber = "serialNumber"
    }

    /**
     * enum for parameter fieldsDevices
     */
    public enum FieldsDevices_profilesGetCollection: String, CaseIterable {
        case addeddate = "addedDate"
        case deviceclass = "deviceClass"
        case model = "model"
        case name = "name"
        case platform = "platform"
        case status = "status"
        case udid = "udid"
    }

    /**
     * enum for parameter fieldsBundleIds
     */
    public enum FieldsBundleIds_profilesGetCollection: String, CaseIterable {
        case app = "app"
        case bundleidcapabilities = "bundleIdCapabilities"
        case identifier = "identifier"
        case name = "name"
        case platform = "platform"
        case profiles = "profiles"
        case seedid = "seedId"
    }

    /**

     - parameter filterName: (query) filter by attribute &#39;name&#39; (optional)
     - parameter filterProfileState: (query) filter by attribute &#39;profileState&#39; (optional)
     - parameter filterProfileType: (query) filter by attribute &#39;profileType&#39; (optional)
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsProfiles: (query) the fields to include for returned resources of type profiles (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - parameter fieldsBundleIds: (query) the fields to include for returned resources of type bundleIds (optional)
     - parameter limitCertificates: (query) maximum number of related certificates returned (when they are included) (optional)
     - parameter limitDevices: (query) maximum number of related devices returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func profilesGetCollection(filterName: [String]? = nil, filterProfileState: [FilterProfileState_profilesGetCollection]? = nil, filterProfileType: [FilterProfileType_profilesGetCollection]? = nil, filterId: [String]? = nil, sort: [Sort_profilesGetCollection]? = nil, fieldsProfiles: [FieldsProfiles_profilesGetCollection]? = nil, limit: Int? = nil, include: [Include_profilesGetCollection]? = nil, fieldsCertificates: [FieldsCertificates_profilesGetCollection]? = nil, fieldsDevices: [FieldsDevices_profilesGetCollection]? = nil, fieldsBundleIds: [FieldsBundleIds_profilesGetCollection]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProfilesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return profilesGetCollectionWithRequestBuilder(filterName: filterName, filterProfileState: filterProfileState, filterProfileType: filterProfileType, filterId: filterId, sort: sort, fieldsProfiles: fieldsProfiles, limit: limit, include: include, fieldsCertificates: fieldsCertificates, fieldsDevices: fieldsDevices, fieldsBundleIds: fieldsBundleIds, limitCertificates: limitCertificates, limitDevices: limitDevices).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/profiles
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterName: (query) filter by attribute &#39;name&#39; (optional)
     - parameter filterProfileState: (query) filter by attribute &#39;profileState&#39; (optional)
     - parameter filterProfileType: (query) filter by attribute &#39;profileType&#39; (optional)
     - parameter filterId: (query) filter by id(s) (optional)
     - parameter sort: (query) comma-separated list of sort expressions; resources will be sorted as specified (optional)
     - parameter fieldsProfiles: (query) the fields to include for returned resources of type profiles (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - parameter fieldsBundleIds: (query) the fields to include for returned resources of type bundleIds (optional)
     - parameter limitCertificates: (query) maximum number of related certificates returned (when they are included) (optional)
     - parameter limitDevices: (query) maximum number of related devices returned (when they are included) (optional)
     - returns: RequestBuilder<ProfilesResponse> 
     */
    open class func profilesGetCollectionWithRequestBuilder(filterName: [String]? = nil, filterProfileState: [FilterProfileState_profilesGetCollection]? = nil, filterProfileType: [FilterProfileType_profilesGetCollection]? = nil, filterId: [String]? = nil, sort: [Sort_profilesGetCollection]? = nil, fieldsProfiles: [FieldsProfiles_profilesGetCollection]? = nil, limit: Int? = nil, include: [Include_profilesGetCollection]? = nil, fieldsCertificates: [FieldsCertificates_profilesGetCollection]? = nil, fieldsDevices: [FieldsDevices_profilesGetCollection]? = nil, fieldsBundleIds: [FieldsBundleIds_profilesGetCollection]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil) -> RequestBuilder<ProfilesResponse> {
        let localVariablePath = "/v1/profiles"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[name]": (wrappedValue: filterName?.encodeToJSON(), isExplode: false),
            "filter[profileState]": (wrappedValue: filterProfileState?.encodeToJSON(), isExplode: false),
            "filter[profileType]": (wrappedValue: filterProfileType?.encodeToJSON(), isExplode: false),
            "filter[id]": (wrappedValue: filterId?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
            "fields[profiles]": (wrappedValue: fieldsProfiles?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[certificates]": (wrappedValue: fieldsCertificates?.encodeToJSON(), isExplode: false),
            "fields[devices]": (wrappedValue: fieldsDevices?.encodeToJSON(), isExplode: false),
            "fields[bundleIds]": (wrappedValue: fieldsBundleIds?.encodeToJSON(), isExplode: false),
            "limit[certificates]": (wrappedValue: limitCertificates?.encodeToJSON(), isExplode: true),
            "limit[devices]": (wrappedValue: limitDevices?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProfilesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsProfiles
     */
    public enum FieldsProfiles_profilesGetInstance: String, CaseIterable {
        case bundleid = "bundleId"
        case certificates = "certificates"
        case createddate = "createdDate"
        case devices = "devices"
        case expirationdate = "expirationDate"
        case name = "name"
        case platform = "platform"
        case profilecontent = "profileContent"
        case profilestate = "profileState"
        case profiletype = "profileType"
        case uuid = "uuid"
    }

    /**
     * enum for parameter include
     */
    public enum Include_profilesGetInstance: String, CaseIterable {
        case bundleid = "bundleId"
        case certificates = "certificates"
        case devices = "devices"
    }

    /**
     * enum for parameter fieldsCertificates
     */
    public enum FieldsCertificates_profilesGetInstance: String, CaseIterable {
        case certificatecontent = "certificateContent"
        case certificatetype = "certificateType"
        case csrcontent = "csrContent"
        case displayname = "displayName"
        case expirationdate = "expirationDate"
        case name = "name"
        case platform = "platform"
        case serialnumber = "serialNumber"
    }

    /**
     * enum for parameter fieldsDevices
     */
    public enum FieldsDevices_profilesGetInstance: String, CaseIterable {
        case addeddate = "addedDate"
        case deviceclass = "deviceClass"
        case model = "model"
        case name = "name"
        case platform = "platform"
        case status = "status"
        case udid = "udid"
    }

    /**
     * enum for parameter fieldsBundleIds
     */
    public enum FieldsBundleIds_profilesGetInstance: String, CaseIterable {
        case app = "app"
        case bundleidcapabilities = "bundleIdCapabilities"
        case identifier = "identifier"
        case name = "name"
        case platform = "platform"
        case profiles = "profiles"
        case seedid = "seedId"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsProfiles: (query) the fields to include for returned resources of type profiles (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - parameter fieldsBundleIds: (query) the fields to include for returned resources of type bundleIds (optional)
     - parameter limitCertificates: (query) maximum number of related certificates returned (when they are included) (optional)
     - parameter limitDevices: (query) maximum number of related devices returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func profilesGetInstance(id: String, fieldsProfiles: [FieldsProfiles_profilesGetInstance]? = nil, include: [Include_profilesGetInstance]? = nil, fieldsCertificates: [FieldsCertificates_profilesGetInstance]? = nil, fieldsDevices: [FieldsDevices_profilesGetInstance]? = nil, fieldsBundleIds: [FieldsBundleIds_profilesGetInstance]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProfileResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return profilesGetInstanceWithRequestBuilder(id: id, fieldsProfiles: fieldsProfiles, include: include, fieldsCertificates: fieldsCertificates, fieldsDevices: fieldsDevices, fieldsBundleIds: fieldsBundleIds, limitCertificates: limitCertificates, limitDevices: limitDevices).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/profiles/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsProfiles: (query) the fields to include for returned resources of type profiles (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsCertificates: (query) the fields to include for returned resources of type certificates (optional)
     - parameter fieldsDevices: (query) the fields to include for returned resources of type devices (optional)
     - parameter fieldsBundleIds: (query) the fields to include for returned resources of type bundleIds (optional)
     - parameter limitCertificates: (query) maximum number of related certificates returned (when they are included) (optional)
     - parameter limitDevices: (query) maximum number of related devices returned (when they are included) (optional)
     - returns: RequestBuilder<ProfileResponse> 
     */
    open class func profilesGetInstanceWithRequestBuilder(id: String, fieldsProfiles: [FieldsProfiles_profilesGetInstance]? = nil, include: [Include_profilesGetInstance]? = nil, fieldsCertificates: [FieldsCertificates_profilesGetInstance]? = nil, fieldsDevices: [FieldsDevices_profilesGetInstance]? = nil, fieldsBundleIds: [FieldsBundleIds_profilesGetInstance]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil) -> RequestBuilder<ProfileResponse> {
        var localVariablePath = "/v1/profiles/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[profiles]": (wrappedValue: fieldsProfiles?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[certificates]": (wrappedValue: fieldsCertificates?.encodeToJSON(), isExplode: false),
            "fields[devices]": (wrappedValue: fieldsDevices?.encodeToJSON(), isExplode: false),
            "fields[bundleIds]": (wrappedValue: fieldsBundleIds?.encodeToJSON(), isExplode: false),
            "limit[certificates]": (wrappedValue: limitCertificates?.encodeToJSON(), isExplode: true),
            "limit[devices]": (wrappedValue: limitDevices?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProfileResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
