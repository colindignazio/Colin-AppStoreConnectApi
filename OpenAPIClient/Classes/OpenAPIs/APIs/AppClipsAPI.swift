//
// AppClipsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppClipsAPI {

    /**
     * enum for parameter filterAction
     */
    public enum FilterAction_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, CaseIterable {
        case _open = "OPEN"
        case view = "VIEW"
        case play = "PLAY"
    }

    /**
     * enum for parameter filterPlaceStatus
     */
    public enum FilterPlaceStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, CaseIterable {
        case pending = "PENDING"
        case matched = "MATCHED"
        case noMatch = "NO_MATCH"
    }

    /**
     * enum for parameter filterStatus
     */
    public enum FilterStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, CaseIterable {
        case received = "RECEIVED"
        case deactivated = "DEACTIVATED"
        case appTransferInProgress = "APP_TRANSFER_IN_PROGRESS"
    }

    /**
     * enum for parameter fieldsAppClipAdvancedExperiences
     */
    public enum FieldsAppClipAdvancedExperiences_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, CaseIterable {
        case action = "action"
        case appclip = "appClip"
        case businesscategory = "businessCategory"
        case defaultlanguage = "defaultLanguage"
        case headerimage = "headerImage"
        case ispoweredby = "isPoweredBy"
        case link = "link"
        case localizations = "localizations"
        case place = "place"
        case placestatus = "placeStatus"
        case removed = "removed"
        case status = "status"
        case version = "version"
    }

    /**
     * enum for parameter fieldsAppClips
     */
    public enum FieldsAppClips_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, CaseIterable {
        case app = "app"
        case appclipadvancedexperiences = "appClipAdvancedExperiences"
        case appclipdefaultexperiences = "appClipDefaultExperiences"
        case bundleid = "bundleId"
    }

    /**
     * enum for parameter fieldsAppClipAdvancedExperienceImages
     */
    public enum FieldsAppClipAdvancedExperienceImages_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, CaseIterable {
        case assetdeliverystate = "assetDeliveryState"
        case filename = "fileName"
        case filesize = "fileSize"
        case imageasset = "imageAsset"
        case sourcefilechecksum = "sourceFileChecksum"
        case uploadoperations = "uploadOperations"
        case uploaded = "uploaded"
    }

    /**
     * enum for parameter fieldsAppClipAdvancedExperienceLocalizations
     */
    public enum FieldsAppClipAdvancedExperienceLocalizations_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, CaseIterable {
        case language = "language"
        case subtitle = "subtitle"
        case title = "title"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipsAppClipAdvancedExperiencesGetToManyRelated: String, CaseIterable {
        case appclip = "appClip"
        case headerimage = "headerImage"
        case localizations = "localizations"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter filterAction: (query) filter by attribute &#39;action&#39; (optional)
     - parameter filterPlaceStatus: (query) filter by attribute &#39;placeStatus&#39; (optional)
     - parameter filterStatus: (query) filter by attribute &#39;status&#39; (optional)
     - parameter fieldsAppClipAdvancedExperiences: (query) the fields to include for returned resources of type appClipAdvancedExperiences (optional)
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppClipAdvancedExperienceImages: (query) the fields to include for returned resources of type appClipAdvancedExperienceImages (optional)
     - parameter fieldsAppClipAdvancedExperienceLocalizations: (query) the fields to include for returned resources of type appClipAdvancedExperienceLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appClipsAppClipAdvancedExperiencesGetToManyRelated(id: String, filterAction: [FilterAction_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterPlaceStatus: [FilterPlaceStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterStatus: [FilterStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceLocalizations: [FieldsAppClipAdvancedExperienceLocalizations_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, include: [Include_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppClipAdvancedExperiencesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appClipsAppClipAdvancedExperiencesGetToManyRelatedWithRequestBuilder(id: id, filterAction: filterAction, filterPlaceStatus: filterPlaceStatus, filterStatus: filterStatus, fieldsAppClipAdvancedExperiences: fieldsAppClipAdvancedExperiences, fieldsAppClips: fieldsAppClips, fieldsAppClipAdvancedExperienceImages: fieldsAppClipAdvancedExperienceImages, fieldsAppClipAdvancedExperienceLocalizations: fieldsAppClipAdvancedExperienceLocalizations, limit: limit, limitLocalizations: limitLocalizations, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appClips/{id}/appClipAdvancedExperiences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter filterAction: (query) filter by attribute &#39;action&#39; (optional)
     - parameter filterPlaceStatus: (query) filter by attribute &#39;placeStatus&#39; (optional)
     - parameter filterStatus: (query) filter by attribute &#39;status&#39; (optional)
     - parameter fieldsAppClipAdvancedExperiences: (query) the fields to include for returned resources of type appClipAdvancedExperiences (optional)
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppClipAdvancedExperienceImages: (query) the fields to include for returned resources of type appClipAdvancedExperienceImages (optional)
     - parameter fieldsAppClipAdvancedExperienceLocalizations: (query) the fields to include for returned resources of type appClipAdvancedExperienceLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitLocalizations: (query) maximum number of related localizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppClipAdvancedExperiencesResponse> 
     */
    open class func appClipsAppClipAdvancedExperiencesGetToManyRelatedWithRequestBuilder(id: String, filterAction: [FilterAction_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterPlaceStatus: [FilterPlaceStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, filterStatus: [FilterStatus_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, fieldsAppClipAdvancedExperienceLocalizations: [FieldsAppClipAdvancedExperienceLocalizations_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, include: [Include_appClipsAppClipAdvancedExperiencesGetToManyRelated]? = nil) -> RequestBuilder<AppClipAdvancedExperiencesResponse> {
        var localVariablePath = "/v1/appClips/{id}/appClipAdvancedExperiences"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[action]": (wrappedValue: filterAction?.encodeToJSON(), isExplode: false),
            "filter[placeStatus]": (wrappedValue: filterPlaceStatus?.encodeToJSON(), isExplode: false),
            "filter[status]": (wrappedValue: filterStatus?.encodeToJSON(), isExplode: false),
            "fields[appClipAdvancedExperiences]": (wrappedValue: fieldsAppClipAdvancedExperiences?.encodeToJSON(), isExplode: false),
            "fields[appClips]": (wrappedValue: fieldsAppClips?.encodeToJSON(), isExplode: false),
            "fields[appClipAdvancedExperienceImages]": (wrappedValue: fieldsAppClipAdvancedExperienceImages?.encodeToJSON(), isExplode: false),
            "fields[appClipAdvancedExperienceLocalizations]": (wrappedValue: fieldsAppClipAdvancedExperienceLocalizations?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "limit[localizations]": (wrappedValue: limitLocalizations?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipAdvancedExperiencesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppClips
     */
    public enum FieldsAppClips_appClipsAppClipDefaultExperiencesGetToManyRelated: String, CaseIterable {
        case app = "app"
        case appclipadvancedexperiences = "appClipAdvancedExperiences"
        case appclipdefaultexperiences = "appClipDefaultExperiences"
        case bundleid = "bundleId"
    }

    /**
     * enum for parameter fieldsAppClipAppStoreReviewDetails
     */
    public enum FieldsAppClipAppStoreReviewDetails_appClipsAppClipDefaultExperiencesGetToManyRelated: String, CaseIterable {
        case appclipdefaultexperience = "appClipDefaultExperience"
        case invocationurls = "invocationUrls"
    }

    /**
     * enum for parameter fieldsAppStoreVersions
     */
    public enum FieldsAppStoreVersions_appClipsAppClipDefaultExperiencesGetToManyRelated: String, CaseIterable {
        case ageratingdeclaration = "ageRatingDeclaration"
        case alternativedistributionpackage = "alternativeDistributionPackage"
        case app = "app"
        case appclipdefaultexperience = "appClipDefaultExperience"
        case appstorereviewdetail = "appStoreReviewDetail"
        case appstorestate = "appStoreState"
        case appstoreversionexperiments = "appStoreVersionExperiments"
        case appstoreversionexperimentsv2 = "appStoreVersionExperimentsV2"
        case appstoreversionlocalizations = "appStoreVersionLocalizations"
        case appstoreversionphasedrelease = "appStoreVersionPhasedRelease"
        case appstoreversionsubmission = "appStoreVersionSubmission"
        case appversionstate = "appVersionState"
        case build = "build"
        case copyright = "copyright"
        case createddate = "createdDate"
        case customerreviews = "customerReviews"
        case downloadable = "downloadable"
        case earliestreleasedate = "earliestReleaseDate"
        case platform = "platform"
        case releasetype = "releaseType"
        case reviewtype = "reviewType"
        case routingappcoverage = "routingAppCoverage"
        case versionstring = "versionString"
    }

    /**
     * enum for parameter fieldsAppClipDefaultExperiences
     */
    public enum FieldsAppClipDefaultExperiences_appClipsAppClipDefaultExperiencesGetToManyRelated: String, CaseIterable {
        case action = "action"
        case appclip = "appClip"
        case appclipappstorereviewdetail = "appClipAppStoreReviewDetail"
        case appclipdefaultexperiencelocalizations = "appClipDefaultExperienceLocalizations"
        case appclipdefaultexperiencetemplate = "appClipDefaultExperienceTemplate"
        case releasewithappstoreversion = "releaseWithAppStoreVersion"
    }

    /**
     * enum for parameter fieldsAppClipDefaultExperienceLocalizations
     */
    public enum FieldsAppClipDefaultExperienceLocalizations_appClipsAppClipDefaultExperiencesGetToManyRelated: String, CaseIterable {
        case appclipdefaultexperience = "appClipDefaultExperience"
        case appclipheaderimage = "appClipHeaderImage"
        case locale = "locale"
        case subtitle = "subtitle"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipsAppClipDefaultExperiencesGetToManyRelated: String, CaseIterable {
        case appclip = "appClip"
        case appclipappstorereviewdetail = "appClipAppStoreReviewDetail"
        case appclipdefaultexperiencelocalizations = "appClipDefaultExperienceLocalizations"
        case releasewithappstoreversion = "releaseWithAppStoreVersion"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter existsReleaseWithAppStoreVersion: (query) filter by existence or non-existence of related &#39;releaseWithAppStoreVersion&#39; (optional)
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppClipAppStoreReviewDetails: (query) the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
     - parameter fieldsAppStoreVersions: (query) the fields to include for returned resources of type appStoreVersions (optional)
     - parameter fieldsAppClipDefaultExperiences: (query) the fields to include for returned resources of type appClipDefaultExperiences (optional)
     - parameter fieldsAppClipDefaultExperienceLocalizations: (query) the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppClipDefaultExperienceLocalizations: (query) maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appClipsAppClipDefaultExperiencesGetToManyRelated(id: String, existsReleaseWithAppStoreVersion: Bool? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, limit: Int? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, include: [Include_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppClipDefaultExperiencesResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appClipsAppClipDefaultExperiencesGetToManyRelatedWithRequestBuilder(id: id, existsReleaseWithAppStoreVersion: existsReleaseWithAppStoreVersion, fieldsAppClips: fieldsAppClips, fieldsAppClipAppStoreReviewDetails: fieldsAppClipAppStoreReviewDetails, fieldsAppStoreVersions: fieldsAppStoreVersions, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, fieldsAppClipDefaultExperienceLocalizations: fieldsAppClipDefaultExperienceLocalizations, limit: limit, limitAppClipDefaultExperienceLocalizations: limitAppClipDefaultExperienceLocalizations, include: include).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appClips/{id}/appClipDefaultExperiences
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter existsReleaseWithAppStoreVersion: (query) filter by existence or non-existence of related &#39;releaseWithAppStoreVersion&#39; (optional)
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter fieldsAppClipAppStoreReviewDetails: (query) the fields to include for returned resources of type appClipAppStoreReviewDetails (optional)
     - parameter fieldsAppStoreVersions: (query) the fields to include for returned resources of type appStoreVersions (optional)
     - parameter fieldsAppClipDefaultExperiences: (query) the fields to include for returned resources of type appClipDefaultExperiences (optional)
     - parameter fieldsAppClipDefaultExperienceLocalizations: (query) the fields to include for returned resources of type appClipDefaultExperienceLocalizations (optional)
     - parameter limit: (query) maximum resources per page (optional)
     - parameter limitAppClipDefaultExperienceLocalizations: (query) maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - returns: RequestBuilder<AppClipDefaultExperiencesResponse> 
     */
    open class func appClipsAppClipDefaultExperiencesGetToManyRelatedWithRequestBuilder(id: String, existsReleaseWithAppStoreVersion: Bool? = nil, fieldsAppClips: [FieldsAppClips_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil, limit: Int? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, include: [Include_appClipsAppClipDefaultExperiencesGetToManyRelated]? = nil) -> RequestBuilder<AppClipDefaultExperiencesResponse> {
        var localVariablePath = "/v1/appClips/{id}/appClipDefaultExperiences"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "exists[releaseWithAppStoreVersion]": (wrappedValue: existsReleaseWithAppStoreVersion?.encodeToJSON(), isExplode: false),
            "fields[appClips]": (wrappedValue: fieldsAppClips?.encodeToJSON(), isExplode: false),
            "fields[appClipAppStoreReviewDetails]": (wrappedValue: fieldsAppClipAppStoreReviewDetails?.encodeToJSON(), isExplode: false),
            "fields[appStoreVersions]": (wrappedValue: fieldsAppStoreVersions?.encodeToJSON(), isExplode: false),
            "fields[appClipDefaultExperiences]": (wrappedValue: fieldsAppClipDefaultExperiences?.encodeToJSON(), isExplode: false),
            "fields[appClipDefaultExperienceLocalizations]": (wrappedValue: fieldsAppClipDefaultExperienceLocalizations?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "limit[appClipDefaultExperienceLocalizations]": (wrappedValue: limitAppClipDefaultExperienceLocalizations?.encodeToJSON(), isExplode: true),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipDefaultExperiencesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter fieldsAppClips
     */
    public enum FieldsAppClips_appClipsGetInstance: String, CaseIterable {
        case app = "app"
        case appclipadvancedexperiences = "appClipAdvancedExperiences"
        case appclipdefaultexperiences = "appClipDefaultExperiences"
        case bundleid = "bundleId"
    }

    /**
     * enum for parameter include
     */
    public enum Include_appClipsGetInstance: String, CaseIterable {
        case app = "app"
        case appclipdefaultexperiences = "appClipDefaultExperiences"
    }

    /**
     * enum for parameter fieldsAppClipAdvancedExperiences
     */
    public enum FieldsAppClipAdvancedExperiences_appClipsGetInstance: String, CaseIterable {
        case action = "action"
        case appclip = "appClip"
        case businesscategory = "businessCategory"
        case defaultlanguage = "defaultLanguage"
        case headerimage = "headerImage"
        case ispoweredby = "isPoweredBy"
        case link = "link"
        case localizations = "localizations"
        case place = "place"
        case placestatus = "placeStatus"
        case removed = "removed"
        case status = "status"
        case version = "version"
    }

    /**
     * enum for parameter fieldsAppClipDefaultExperiences
     */
    public enum FieldsAppClipDefaultExperiences_appClipsGetInstance: String, CaseIterable {
        case action = "action"
        case appclip = "appClip"
        case appclipappstorereviewdetail = "appClipAppStoreReviewDetail"
        case appclipdefaultexperiencelocalizations = "appClipDefaultExperienceLocalizations"
        case appclipdefaultexperiencetemplate = "appClipDefaultExperienceTemplate"
        case releasewithappstoreversion = "releaseWithAppStoreVersion"
    }

    /**

     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppClipAdvancedExperiences: (query) the fields to include for returned resources of type appClipAdvancedExperiences (optional)
     - parameter fieldsAppClipDefaultExperiences: (query) the fields to include for returned resources of type appClipDefaultExperiences (optional)
     - parameter limitAppClipDefaultExperiences: (query) maximum number of related appClipDefaultExperiences returned (when they are included) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appClipsGetInstance(id: String, fieldsAppClips: [FieldsAppClips_appClipsGetInstance]? = nil, include: [Include_appClipsGetInstance]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipsGetInstance]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsGetInstance]? = nil, limitAppClipDefaultExperiences: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppClipResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appClipsGetInstanceWithRequestBuilder(id: id, fieldsAppClips: fieldsAppClips, include: include, fieldsAppClipAdvancedExperiences: fieldsAppClipAdvancedExperiences, fieldsAppClipDefaultExperiences: fieldsAppClipDefaultExperiences, limitAppClipDefaultExperiences: limitAppClipDefaultExperiences).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/appClips/{id}
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter id: (path) the id of the requested resource 
     - parameter fieldsAppClips: (query) the fields to include for returned resources of type appClips (optional)
     - parameter include: (query) comma-separated list of relationships to include (optional)
     - parameter fieldsAppClipAdvancedExperiences: (query) the fields to include for returned resources of type appClipAdvancedExperiences (optional)
     - parameter fieldsAppClipDefaultExperiences: (query) the fields to include for returned resources of type appClipDefaultExperiences (optional)
     - parameter limitAppClipDefaultExperiences: (query) maximum number of related appClipDefaultExperiences returned (when they are included) (optional)
     - returns: RequestBuilder<AppClipResponse> 
     */
    open class func appClipsGetInstanceWithRequestBuilder(id: String, fieldsAppClips: [FieldsAppClips_appClipsGetInstance]? = nil, include: [Include_appClipsGetInstance]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences_appClipsGetInstance]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences_appClipsGetInstance]? = nil, limitAppClipDefaultExperiences: Int? = nil) -> RequestBuilder<AppClipResponse> {
        var localVariablePath = "/v1/appClips/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fields[appClips]": (wrappedValue: fieldsAppClips?.encodeToJSON(), isExplode: false),
            "include": (wrappedValue: include?.encodeToJSON(), isExplode: false),
            "fields[appClipAdvancedExperiences]": (wrappedValue: fieldsAppClipAdvancedExperiences?.encodeToJSON(), isExplode: false),
            "fields[appClipDefaultExperiences]": (wrappedValue: fieldsAppClipDefaultExperiences?.encodeToJSON(), isExplode: false),
            "limit[appClipDefaultExperiences]": (wrappedValue: limitAppClipDefaultExperiences?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppClipResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}