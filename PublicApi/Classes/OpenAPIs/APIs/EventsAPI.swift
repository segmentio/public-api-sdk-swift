//
// EventsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class EventsAPI {

    /**
     * enum for parameter granularity
     */
    public enum Granularity_getEventsVolumeFromWorkspace: String, CaseIterable {
        case day = "DAY"
        case hour = "HOUR"
        case minute = "MINUTE"
    }

    /**
     Get Events Volume from Workspace
     
     - parameter granularity: (query) The size of each bucket in the requested window.  This parameter exists in v1. 
     - parameter startTime: (query) The ISO8601 formatted timestamp that corresponds to the beginning of the requested time frame, inclusive.  This parameter exists in v1. 
     - parameter endTime: (query) The ISO8601 formatted timestamp that corresponds to the end of the requested time frame, noninclusive. Segment recommends that you lag queries 1 minute behind clock time to reduce the risk for latency to impact the counts.  This parameter exists in v1. 
     - parameter groupBy: (query) A comma-delimited list of strings that represents the dimensions to group the result by. The options are: &#x60;eventName&#x60;, &#x60;eventType&#x60; and &#x60;source&#x60;.  This parameter exists in v1. (optional)
     - parameter sourceId: (query) A list of strings which filters the results to the given SourceIds.  This parameter exists in v1. (optional)
     - parameter eventName: (query) A list of strings which filters the results to the given EventNames.  This parameter exists in v1. (optional)
     - parameter eventType: (query) A list of strings which filters the results to the given EventTypes.  This parameter exists in v1. (optional)
     - parameter appVersion: (query) A list of strings which filters the results to the given AppVersions.  This parameter exists in v1. (optional)
     - parameter pagination: (query) Pagination input for event volume by Workspace.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getEventsVolumeFromWorkspace(granularity: Granularity_getEventsVolumeFromWorkspace, startTime: String, endTime: String, groupBy: [String]? = nil, sourceId: [String]? = nil, eventName: [String]? = nil, eventType: [String]? = nil, appVersion: [String]? = nil, pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetEventsVolumeFromWorkspace200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getEventsVolumeFromWorkspaceWithRequestBuilder(granularity: granularity, startTime: startTime, endTime: endTime, groupBy: groupBy, sourceId: sourceId, eventName: eventName, eventType: eventType, appVersion: appVersion, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Events Volume from Workspace
     - GET /events/volume
     - Enumerates the Workspace event volumes over time in minute increments.   The rate limit for this endpoint is 60 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter granularity: (query) The size of each bucket in the requested window.  This parameter exists in v1. 
     - parameter startTime: (query) The ISO8601 formatted timestamp that corresponds to the beginning of the requested time frame, inclusive.  This parameter exists in v1. 
     - parameter endTime: (query) The ISO8601 formatted timestamp that corresponds to the end of the requested time frame, noninclusive. Segment recommends that you lag queries 1 minute behind clock time to reduce the risk for latency to impact the counts.  This parameter exists in v1. 
     - parameter groupBy: (query) A comma-delimited list of strings that represents the dimensions to group the result by. The options are: &#x60;eventName&#x60;, &#x60;eventType&#x60; and &#x60;source&#x60;.  This parameter exists in v1. (optional)
     - parameter sourceId: (query) A list of strings which filters the results to the given SourceIds.  This parameter exists in v1. (optional)
     - parameter eventName: (query) A list of strings which filters the results to the given EventNames.  This parameter exists in v1. (optional)
     - parameter eventType: (query) A list of strings which filters the results to the given EventTypes.  This parameter exists in v1. (optional)
     - parameter appVersion: (query) A list of strings which filters the results to the given AppVersions.  This parameter exists in v1. (optional)
     - parameter pagination: (query) Pagination input for event volume by Workspace.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<GetEventsVolumeFromWorkspace200Response> 
     */
    open class func getEventsVolumeFromWorkspaceWithRequestBuilder(granularity: Granularity_getEventsVolumeFromWorkspace, startTime: String, endTime: String, groupBy: [String]? = nil, sourceId: [String]? = nil, eventName: [String]? = nil, eventType: [String]? = nil, appVersion: [String]? = nil, pagination: PaginationInput? = nil) -> RequestBuilder<GetEventsVolumeFromWorkspace200Response> {
        let localVariablePath = "/events/volume"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "granularity": granularity.encodeToJSON(),
            "startTime": startTime.encodeToJSON(),
            "endTime": endTime.encodeToJSON(),
            "groupBy": groupBy?.encodeToJSON(),
            "sourceId": sourceId?.encodeToJSON(),
            "eventName": eventName?.encodeToJSON(),
            "eventType": eventType?.encodeToJSON(),
            "appVersion": appVersion?.encodeToJSON(),
            "pagination": pagination?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetEventsVolumeFromWorkspace200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
