//
// DestinationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DestinationsAPI {

    /**
     Create Destination
     
     - parameter createDestinationV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createDestination(createDestinationV1Input: CreateDestinationV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createDestinationWithRequestBuilder(createDestinationV1Input: createDestinationV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Destination
     - POST /destinations
     - Creates a new Destination.    • When called, this endpoint may generate the `Integration Created` event in the [audit trail](/tag/Audit-Trail).       
     - BASIC:
       - type: http
       - name: token
     - parameter createDestinationV1Input: (body)  
     - returns: RequestBuilder<CreateDestination200Response> 
     */
    open class func createDestinationWithRequestBuilder(createDestinationV1Input: CreateDestinationV1Input) -> RequestBuilder<CreateDestination200Response> {
        let localVariablePath = "/destinations"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createDestinationV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Destination Subscription
     
     - parameter destinationId: (path)  
     - parameter createDestinationSubscriptionAlphaInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createDestinationSubscription(destinationId: String, createDestinationSubscriptionAlphaInput: CreateDestinationSubscriptionAlphaInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateDestinationSubscription200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createDestinationSubscriptionWithRequestBuilder(destinationId: destinationId, createDestinationSubscriptionAlphaInput: createDestinationSubscriptionAlphaInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Destination Subscription
     - POST /destinations/{destinationId}/subscriptions
     - Creates a new Destination subscription.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Destination Subscriptions feature enabled. Please reach out to your customer success manager for more information.   The rate limit for this endpoint is 5 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - parameter createDestinationSubscriptionAlphaInput: (body)  
     - returns: RequestBuilder<CreateDestinationSubscription200Response> 
     */
    open class func createDestinationSubscriptionWithRequestBuilder(destinationId: String, createDestinationSubscriptionAlphaInput: CreateDestinationSubscriptionAlphaInput) -> RequestBuilder<CreateDestinationSubscription200Response> {
        var localVariablePath = "/destinations/{destinationId}/subscriptions"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createDestinationSubscriptionAlphaInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateDestinationSubscription200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Destination
     
     - parameter destinationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteDestination(destinationId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DeleteDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteDestinationWithRequestBuilder(destinationId: destinationId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Destination
     - DELETE /destinations/{destinationId}
     - Deletes an existing Destination.    • When called, this endpoint may generate the `Integration Deleted` event in the [audit trail](/tag/Audit-Trail).  Config API omitted fields: - `catalogId`       
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - returns: RequestBuilder<DeleteDestination200Response> 
     */
    open class func deleteDestinationWithRequestBuilder(destinationId: String) -> RequestBuilder<DeleteDestination200Response> {
        var localVariablePath = "/destinations/{destinationId}"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeleteDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Destination
     
     - parameter destinationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getDestination(destinationId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getDestinationWithRequestBuilder(destinationId: destinationId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Destination
     - GET /destinations/{destinationId}
     - Returns a Destination by its id.        Config API omitted fields: - `catalogId` 
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - returns: RequestBuilder<GetDestination200Response> 
     */
    open class func getDestinationWithRequestBuilder(destinationId: String) -> RequestBuilder<GetDestination200Response> {
        var localVariablePath = "/destinations/{destinationId}"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Subscription from Destination
     
     - parameter destinationId: (path)  
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getSubscriptionFromDestination(destinationId: String, id: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetSubscriptionFromDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getSubscriptionFromDestinationWithRequestBuilder(destinationId: destinationId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Subscription from Destination
     - GET /destinations/{destinationId}/subscriptions/{id}
     - Gets a Destination subscription by id.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Destination Subscriptions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - parameter id: (path)  
     - returns: RequestBuilder<GetSubscriptionFromDestination200Response> 
     */
    open class func getSubscriptionFromDestinationWithRequestBuilder(destinationId: String, id: String) -> RequestBuilder<GetSubscriptionFromDestination200Response> {
        var localVariablePath = "/destinations/{destinationId}/subscriptions/{id}"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetSubscriptionFromDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter granularity
     */
    public enum Granularity_listDeliveryMetricsSummaryFromDestination: String, CaseIterable {
        case day = "DAY"
        case hour = "HOUR"
        case minute = "MINUTE"
    }

    /**
     List Delivery Metrics Summary from Destination
     
     - parameter destinationId: (path)  
     - parameter sourceId: (query) The id of the Source linked to the Destination.  Config API note: analogous to &#x60;parent&#x60;.  This parameter exists in beta. 
     - parameter startTime: (query) Filter events that happened after this time.  Defaults to: - 1 hour ago if granularity is &#x60;MINUTE&#x60;. - 7 days ago if granularity is &#x60;HOUR&#x60;. - 30 days ago if granularity is &#x60;DAY&#x60;.  This parameter exists in beta. (optional)
     - parameter endTime: (query) Filter events that happened before this time. Defaults to now if not set.  This parameter exists in beta. (optional)
     - parameter granularity: (query) The granularity to filter metrics to. Either &#x60;MINUTE&#x60;, &#x60;HOUR&#x60; or &#x60;DAY&#x60;.  Defaults to &#x60;MINUTE&#x60; if not set.  This parameter exists in beta. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listDeliveryMetricsSummaryFromDestination(destinationId: String, sourceId: String, startTime: String? = nil, endTime: String? = nil, granularity: Granularity_listDeliveryMetricsSummaryFromDestination? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListDeliveryMetricsSummaryFromDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listDeliveryMetricsSummaryFromDestinationWithRequestBuilder(destinationId: destinationId, sourceId: sourceId, startTime: startTime, endTime: endTime, granularity: granularity).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Delivery Metrics Summary from Destination
     - GET /destinations/{destinationId}/delivery-metrics
     - Get an event delivery metrics summary from a Destination.  Based on the granularity chosen, there are restrictions on the time range you can query:  **Minute**: - Max time range: 4 hours - Oldest possible start time: 48 hours in the past  **Hour**: - Max Time range: 7 days - Oldest possible start time: 7 days in the past  **Day**: - Max time range: 14 days - Oldest possible start time: 14 days in the past
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - parameter sourceId: (query) The id of the Source linked to the Destination.  Config API note: analogous to &#x60;parent&#x60;.  This parameter exists in beta. 
     - parameter startTime: (query) Filter events that happened after this time.  Defaults to: - 1 hour ago if granularity is &#x60;MINUTE&#x60;. - 7 days ago if granularity is &#x60;HOUR&#x60;. - 30 days ago if granularity is &#x60;DAY&#x60;.  This parameter exists in beta. (optional)
     - parameter endTime: (query) Filter events that happened before this time. Defaults to now if not set.  This parameter exists in beta. (optional)
     - parameter granularity: (query) The granularity to filter metrics to. Either &#x60;MINUTE&#x60;, &#x60;HOUR&#x60; or &#x60;DAY&#x60;.  Defaults to &#x60;MINUTE&#x60; if not set.  This parameter exists in beta. (optional)
     - returns: RequestBuilder<ListDeliveryMetricsSummaryFromDestination200Response> 
     */
    open class func listDeliveryMetricsSummaryFromDestinationWithRequestBuilder(destinationId: String, sourceId: String, startTime: String? = nil, endTime: String? = nil, granularity: Granularity_listDeliveryMetricsSummaryFromDestination? = nil) -> RequestBuilder<ListDeliveryMetricsSummaryFromDestination200Response> {
        var localVariablePath = "/destinations/{destinationId}/delivery-metrics"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "sourceId": sourceId.encodeToJSON(),
            "startTime": startTime?.encodeToJSON(),
            "endTime": endTime?.encodeToJSON(),
            "granularity": granularity?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListDeliveryMetricsSummaryFromDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Destinations
     
     - parameter pagination: (query) Required pagination params for the request.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listDestinations(pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListDestinations200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listDestinationsWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Destinations
     - GET /destinations
     - Returns a list of Destinations.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Required pagination params for the request.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<ListDestinations200Response> 
     */
    open class func listDestinationsWithRequestBuilder(pagination: PaginationInput? = nil) -> RequestBuilder<ListDestinations200Response> {
        let localVariablePath = "/destinations"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pagination": pagination?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListDestinations200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Subscriptions from Destination
     
     - parameter destinationId: (path)  
     - parameter pagination: (query) Pagination options.  This parameter exists in alpha. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSubscriptionsFromDestination(destinationId: String, pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSubscriptionsFromDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSubscriptionsFromDestinationWithRequestBuilder(destinationId: destinationId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Subscriptions from Destination
     - GET /destinations/{destinationId}/subscriptions
     - Lists subscriptions for a Destination.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Destination Subscriptions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - parameter pagination: (query) Pagination options.  This parameter exists in alpha. (optional)
     - returns: RequestBuilder<ListSubscriptionsFromDestination200Response> 
     */
    open class func listSubscriptionsFromDestinationWithRequestBuilder(destinationId: String, pagination: PaginationInput? = nil) -> RequestBuilder<ListSubscriptionsFromDestination200Response> {
        var localVariablePath = "/destinations/{destinationId}/subscriptions"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pagination": pagination?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListSubscriptionsFromDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Remove Subscription from Destination
     
     - parameter destinationId: (path)  
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removeSubscriptionFromDestination(destinationId: String, id: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: RemoveSubscriptionFromDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return removeSubscriptionFromDestinationWithRequestBuilder(destinationId: destinationId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove Subscription from Destination
     - DELETE /destinations/{destinationId}/subscriptions/{id}
     - Deletes an existing Destination subscription.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Destination Subscriptions feature enabled. Please reach out to your customer success manager for more information.   The rate limit for this endpoint is 5 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - parameter id: (path)  
     - returns: RequestBuilder<RemoveSubscriptionFromDestination200Response> 
     */
    open class func removeSubscriptionFromDestinationWithRequestBuilder(destinationId: String, id: String) -> RequestBuilder<RemoveSubscriptionFromDestination200Response> {
        var localVariablePath = "/destinations/{destinationId}/subscriptions/{id}"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RemoveSubscriptionFromDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Destination
     
     - parameter destinationId: (path)  
     - parameter updateDestinationV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateDestination(destinationId: String, updateDestinationV1Input: UpdateDestinationV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateDestinationWithRequestBuilder(destinationId: destinationId, updateDestinationV1Input: updateDestinationV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Destination
     - PATCH /destinations/{destinationId}
     - Updates an existing Destination.  **Note**: if you attempt to update read-only settings for your destination you'll encounter the following behavior:    * If only read-only properties are being updated, the endpoint will return an HTTP 400 error.   * If there's a mix of writable and read-only properties in the payload, the request will be accepted, the writable properties will be updated and the read-only properties ignored.     • When called, this endpoint may generate the `Integration Disabled` event in the [audit trail](/tag/Audit-Trail).  Config API omitted fields: - `updateMask`          
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - parameter updateDestinationV1Input: (body)  
     - returns: RequestBuilder<UpdateDestination200Response> 
     */
    open class func updateDestinationWithRequestBuilder(destinationId: String, updateDestinationV1Input: UpdateDestinationV1Input) -> RequestBuilder<UpdateDestination200Response> {
        var localVariablePath = "/destinations/{destinationId}"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateDestinationV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Subscription for Destination
     
     - parameter destinationId: (path)  
     - parameter id: (path)  
     - parameter updateSubscriptionForDestinationAlphaInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateSubscriptionForDestination(destinationId: String, id: String, updateSubscriptionForDestinationAlphaInput: UpdateSubscriptionForDestinationAlphaInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateSubscriptionForDestination200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateSubscriptionForDestinationWithRequestBuilder(destinationId: destinationId, id: id, updateSubscriptionForDestinationAlphaInput: updateSubscriptionForDestinationAlphaInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Subscription for Destination
     - PATCH /destinations/{destinationId}/subscriptions/{id}
     - Updates an existing Destination subscription.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Destination Subscriptions feature enabled. Please reach out to your customer success manager for more information.   The rate limit for this endpoint is 5 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter destinationId: (path)  
     - parameter id: (path)  
     - parameter updateSubscriptionForDestinationAlphaInput: (body)  
     - returns: RequestBuilder<UpdateSubscriptionForDestination200Response> 
     */
    open class func updateSubscriptionForDestinationWithRequestBuilder(destinationId: String, id: String, updateSubscriptionForDestinationAlphaInput: UpdateSubscriptionForDestinationAlphaInput) -> RequestBuilder<UpdateSubscriptionForDestination200Response> {
        var localVariablePath = "/destinations/{destinationId}/subscriptions/{id}"
        let destinationIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationId))"
        let destinationIdPostEscape = destinationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationId}", with: destinationIdPostEscape, options: .literal, range: nil)
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateSubscriptionForDestinationAlphaInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateSubscriptionForDestination200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
