//
// SalesReportsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SalesReportsAPI {

    /**
     * enum for parameter filterFrequency
     */
    public enum FilterFrequency_salesReportsGetCollection: String, CaseIterable {
        case daily = "DAILY"
        case weekly = "WEEKLY"
        case monthly = "MONTHLY"
        case yearly = "YEARLY"
    }

    /**
     * enum for parameter filterReportSubType
     */
    public enum FilterReportSubType_salesReportsGetCollection: String, CaseIterable {
        case summary = "SUMMARY"
        case detailed = "DETAILED"
        case summaryInstallType = "SUMMARY_INSTALL_TYPE"
        case summaryTerritory = "SUMMARY_TERRITORY"
        case summaryChannel = "SUMMARY_CHANNEL"
    }

    /**
     * enum for parameter filterReportType
     */
    public enum FilterReportType_salesReportsGetCollection: String, CaseIterable {
        case sales = "SALES"
        case preOrder = "PRE_ORDER"
        case newsstand = "NEWSSTAND"
        case subscription = "SUBSCRIPTION"
        case subscriptionEvent = "SUBSCRIPTION_EVENT"
        case subscriber = "SUBSCRIBER"
        case subscriptionOfferCodeRedemption = "SUBSCRIPTION_OFFER_CODE_REDEMPTION"
        case installs = "INSTALLS"
        case firstAnnual = "FIRST_ANNUAL"
    }

    /**

     - parameter filterFrequency: (query) filter by attribute &#39;frequency&#39; 
     - parameter filterReportSubType: (query) filter by attribute &#39;reportSubType&#39; 
     - parameter filterReportType: (query) filter by attribute &#39;reportType&#39; 
     - parameter filterVendorNumber: (query) filter by attribute &#39;vendorNumber&#39; 
     - parameter filterReportDate: (query) filter by attribute &#39;reportDate&#39; (optional)
     - parameter filterVersion: (query) filter by attribute &#39;version&#39; (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func salesReportsGetCollection(filterFrequency: [FilterFrequency_salesReportsGetCollection], filterReportSubType: [FilterReportSubType_salesReportsGetCollection], filterReportType: [FilterReportType_salesReportsGetCollection], filterVendorNumber: [String], filterReportDate: [String]? = nil, filterVersion: [String]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: URL?, _ error: Error?) -> Void)) -> RequestTask {
        return salesReportsGetCollectionWithRequestBuilder(filterFrequency: filterFrequency, filterReportSubType: filterReportSubType, filterReportType: filterReportType, filterVendorNumber: filterVendorNumber, filterReportDate: filterReportDate, filterVersion: filterVersion).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /v1/salesReports
     - Bearer Token:
       - type: http
       - name: itc-bearer-token
     - parameter filterFrequency: (query) filter by attribute &#39;frequency&#39; 
     - parameter filterReportSubType: (query) filter by attribute &#39;reportSubType&#39; 
     - parameter filterReportType: (query) filter by attribute &#39;reportType&#39; 
     - parameter filterVendorNumber: (query) filter by attribute &#39;vendorNumber&#39; 
     - parameter filterReportDate: (query) filter by attribute &#39;reportDate&#39; (optional)
     - parameter filterVersion: (query) filter by attribute &#39;version&#39; (optional)
     - returns: RequestBuilder<URL> 
     */
    open class func salesReportsGetCollectionWithRequestBuilder(filterFrequency: [FilterFrequency_salesReportsGetCollection], filterReportSubType: [FilterReportSubType_salesReportsGetCollection], filterReportType: [FilterReportType_salesReportsGetCollection], filterVendorNumber: [String], filterReportDate: [String]? = nil, filterVersion: [String]? = nil) -> RequestBuilder<URL> {
        let localVariablePath = "/v1/salesReports"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter[frequency]": (wrappedValue: filterFrequency.encodeToJSON(), isExplode: false),
            "filter[reportDate]": (wrappedValue: filterReportDate?.encodeToJSON(), isExplode: false),
            "filter[reportSubType]": (wrappedValue: filterReportSubType.encodeToJSON(), isExplode: false),
            "filter[reportType]": (wrappedValue: filterReportType.encodeToJSON(), isExplode: false),
            "filter[vendorNumber]": (wrappedValue: filterVendorNumber.encodeToJSON(), isExplode: false),
            "filter[version]": (wrappedValue: filterVersion?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
