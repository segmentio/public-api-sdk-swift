//
// TrackingPlansAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TrackingPlansAPI {

    /**
     Add Source to Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter addSourceToTrackingPlanV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addSourceToTrackingPlan(trackingPlanId: String, addSourceToTrackingPlanV1Input: AddSourceToTrackingPlanV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: AddSourceToTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return addSourceToTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId, addSourceToTrackingPlanV1Input: addSourceToTrackingPlanV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add Source to Tracking Plan
     - POST /tracking-plans/{trackingPlanId}/sources
     - Connects a Source to a Tracking Plan.    • When called, this endpoint may generate the `Source Modified` event in the [audit trail](/tag/Audit-Trail).   • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - parameter addSourceToTrackingPlanV1Input: (body)  
     - returns: RequestBuilder<AddSourceToTrackingPlan200Response> 
     */
    open class func addSourceToTrackingPlanWithRequestBuilder(trackingPlanId: String, addSourceToTrackingPlanV1Input: AddSourceToTrackingPlanV1Input) -> RequestBuilder<AddSourceToTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}/sources"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addSourceToTrackingPlanV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AddSourceToTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Tracking Plan
     
     - parameter createTrackingPlanV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createTrackingPlan(createTrackingPlanV1Input: CreateTrackingPlanV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createTrackingPlanWithRequestBuilder(createTrackingPlanV1Input: createTrackingPlanV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Tracking Plan
     - POST /tracking-plans
     - Creates a Tracking Plan.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter createTrackingPlanV1Input: (body)  
     - returns: RequestBuilder<CreateTrackingPlan200Response> 
     */
    open class func createTrackingPlanWithRequestBuilder(createTrackingPlanV1Input: CreateTrackingPlanV1Input) -> RequestBuilder<CreateTrackingPlan200Response> {
        let localVariablePath = "/tracking-plans"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTrackingPlanV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteTrackingPlan(trackingPlanId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DeleteTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Tracking Plan
     - DELETE /tracking-plans/{trackingPlanId}
     - Deletes a Tracking Plan.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - returns: RequestBuilder<DeleteTrackingPlan200Response> 
     */
    open class func deleteTrackingPlanWithRequestBuilder(trackingPlanId: String) -> RequestBuilder<DeleteTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeleteTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getTrackingPlan(trackingPlanId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Tracking Plan
     - GET /tracking-plans/{trackingPlanId}
     - Returns a Tracking Plan.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - returns: RequestBuilder<GetTrackingPlan200Response> 
     */
    open class func getTrackingPlanWithRequestBuilder(trackingPlanId: String) -> RequestBuilder<GetTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Rules from Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter pagination: (query) Pagination options.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listRulesFromTrackingPlan(trackingPlanId: String, pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListRulesFromTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listRulesFromTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Rules from Tracking Plan
     - GET /tracking-plans/{trackingPlanId}/rules
     - Lists Tracking Plan rules.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.   The rate limit for this endpoint is 200 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - parameter pagination: (query) Pagination options.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<ListRulesFromTrackingPlan200Response> 
     */
    open class func listRulesFromTrackingPlanWithRequestBuilder(trackingPlanId: String, pagination: PaginationInput? = nil) -> RequestBuilder<ListRulesFromTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}/rules"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<ListRulesFromTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Sources from Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter pagination: (query) Pagination options.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSourcesFromTrackingPlan(trackingPlanId: String, pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSourcesFromTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSourcesFromTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Sources from Tracking Plan
     - GET /tracking-plans/{trackingPlanId}/sources
     - Lists Sources connected to a Tracking Plan.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.   This endpoint requires the user to have at least the following permission(s):   * Source Read-only  * Tracking Plan Read-only
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - parameter pagination: (query) Pagination options.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<ListSourcesFromTrackingPlan200Response> 
     */
    open class func listSourcesFromTrackingPlanWithRequestBuilder(trackingPlanId: String, pagination: PaginationInput? = nil) -> RequestBuilder<ListSourcesFromTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}/sources"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<ListSourcesFromTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter type
     */
    public enum ModelType_listTrackingPlans: String, CaseIterable {
        case engage = "ENGAGE"
        case live = "LIVE"
        case propertyLibrary = "PROPERTY_LIBRARY"
        case ruleLibrary = "RULE_LIBRARY"
        case template = "TEMPLATE"
    }

    /**
     List Tracking Plans
     
     - parameter type: (query) Requests Tracking Plans of a certain type. If omitted, lists all types.  This parameter exists in v1. (optional)
     - parameter pagination: (query) Pagination options.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listTrackingPlans(type: ModelType_listTrackingPlans? = nil, pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListTrackingPlans200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listTrackingPlansWithRequestBuilder(type: type, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Tracking Plans
     - GET /tracking-plans
     - Returns a list of Tracking Plans.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter type: (query) Requests Tracking Plans of a certain type. If omitted, lists all types.  This parameter exists in v1. (optional)
     - parameter pagination: (query) Pagination options.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<ListTrackingPlans200Response> 
     */
    open class func listTrackingPlansWithRequestBuilder(type: ModelType_listTrackingPlans? = nil, pagination: PaginationInput? = nil) -> RequestBuilder<ListTrackingPlans200Response> {
        let localVariablePath = "/tracking-plans"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": type?.encodeToJSON(),
            "pagination": pagination?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListTrackingPlans200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Remove Rules from Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter rules: (query) Rules to delete.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removeRulesFromTrackingPlan(trackingPlanId: String, rules: [RemoveRuleV1], apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: RemoveRulesFromTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return removeRulesFromTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId, rules: rules).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove Rules from Tracking Plan
     - DELETE /tracking-plans/{trackingPlanId}/rules
     - Deletes Tracking Plan rules.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - parameter rules: (query) Rules to delete.  This parameter exists in v1. 
     - returns: RequestBuilder<RemoveRulesFromTrackingPlan200Response> 
     */
    open class func removeRulesFromTrackingPlanWithRequestBuilder(trackingPlanId: String, rules: [RemoveRuleV1]) -> RequestBuilder<RemoveRulesFromTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}/rules"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "rules": rules.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RemoveRulesFromTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Remove Source from Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter sourceId: (query) The id of the Source associated with the Tracking Plan.  Config API note: analogous to &#x60;sourceName&#x60;.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removeSourceFromTrackingPlan(trackingPlanId: String, sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: RemoveSourceFromTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return removeSourceFromTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId, sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove Source from Tracking Plan
     - DELETE /tracking-plans/{trackingPlanId}/sources
     - Disconnects a Source from a Tracking Plan.    • When called, this endpoint may generate the `Source Modified` event in the [audit trail](/tag/Audit-Trail).   • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - parameter sourceId: (query) The id of the Source associated with the Tracking Plan.  Config API note: analogous to &#x60;sourceName&#x60;.  This parameter exists in v1. 
     - returns: RequestBuilder<RemoveSourceFromTrackingPlan200Response> 
     */
    open class func removeSourceFromTrackingPlanWithRequestBuilder(trackingPlanId: String, sourceId: String) -> RequestBuilder<RemoveSourceFromTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}/sources"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "sourceId": sourceId.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RemoveSourceFromTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Replace Rules in Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter replaceRulesInTrackingPlanV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func replaceRulesInTrackingPlan(trackingPlanId: String, replaceRulesInTrackingPlanV1Input: ReplaceRulesInTrackingPlanV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ReplaceRulesInTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return replaceRulesInTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId, replaceRulesInTrackingPlanV1Input: replaceRulesInTrackingPlanV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Replace Rules in Tracking Plan
     - PUT /tracking-plans/{trackingPlanId}/rules
     - Replaces Tracking Plan rules.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - parameter replaceRulesInTrackingPlanV1Input: (body)  
     - returns: RequestBuilder<ReplaceRulesInTrackingPlan200Response> 
     */
    open class func replaceRulesInTrackingPlanWithRequestBuilder(trackingPlanId: String, replaceRulesInTrackingPlanV1Input: ReplaceRulesInTrackingPlanV1Input) -> RequestBuilder<ReplaceRulesInTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}/rules"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: replaceRulesInTrackingPlanV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReplaceRulesInTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Rules in Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter updateRulesInTrackingPlanV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateRulesInTrackingPlan(trackingPlanId: String, updateRulesInTrackingPlanV1Input: UpdateRulesInTrackingPlanV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateRulesInTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateRulesInTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId, updateRulesInTrackingPlanV1Input: updateRulesInTrackingPlanV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Rules in Tracking Plan
     - PATCH /tracking-plans/{trackingPlanId}/rules
     - Updates Tracking Plan rules.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - parameter updateRulesInTrackingPlanV1Input: (body)  
     - returns: RequestBuilder<UpdateRulesInTrackingPlan200Response> 
     */
    open class func updateRulesInTrackingPlanWithRequestBuilder(trackingPlanId: String, updateRulesInTrackingPlanV1Input: UpdateRulesInTrackingPlanV1Input) -> RequestBuilder<UpdateRulesInTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}/rules"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateRulesInTrackingPlanV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateRulesInTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Tracking Plan
     
     - parameter trackingPlanId: (path)  
     - parameter updateTrackingPlanV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateTrackingPlan(trackingPlanId: String, updateTrackingPlanV1Input: UpdateTrackingPlanV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateTrackingPlan200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateTrackingPlanWithRequestBuilder(trackingPlanId: trackingPlanId, updateTrackingPlanV1Input: updateTrackingPlanV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Tracking Plan
     - PATCH /tracking-plans/{trackingPlanId}
     - Updates a Tracking Plan.    • In order to successfully call this endpoint, the specified Workspace needs to have the Protocols feature enabled. Please reach out to your customer success manager for more information.  Config API omitted fields: - `updateMask`       
     - BASIC:
       - type: http
       - name: token
     - parameter trackingPlanId: (path)  
     - parameter updateTrackingPlanV1Input: (body)  
     - returns: RequestBuilder<UpdateTrackingPlan200Response> 
     */
    open class func updateTrackingPlanWithRequestBuilder(trackingPlanId: String, updateTrackingPlanV1Input: UpdateTrackingPlanV1Input) -> RequestBuilder<UpdateTrackingPlan200Response> {
        var localVariablePath = "/tracking-plans/{trackingPlanId}"
        let trackingPlanIdPreEscape = "\(APIHelper.mapValueToPathItem(trackingPlanId))"
        let trackingPlanIdPostEscape = trackingPlanIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{trackingPlanId}", with: trackingPlanIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateTrackingPlanV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateTrackingPlan200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
