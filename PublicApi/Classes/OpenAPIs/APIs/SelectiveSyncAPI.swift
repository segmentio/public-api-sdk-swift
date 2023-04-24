//
// SelectiveSyncAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SelectiveSyncAPI {

    /**
     Get Advanced Sync Schedule from Warehouse
     
     - parameter warehouseId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAdvancedSyncScheduleFromWarehouse(warehouseId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetAdvancedSyncScheduleFromWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getAdvancedSyncScheduleFromWarehouseWithRequestBuilder(warehouseId: warehouseId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Advanced Sync Schedule from Warehouse
     - GET /warehouses/{warehouseId}/advanced-sync-schedule
     - Returns the advanced sync schedule for a Warehouse.   The rate limit for this endpoint is 2 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - returns: RequestBuilder<GetAdvancedSyncScheduleFromWarehouse200Response> 
     */
    open class func getAdvancedSyncScheduleFromWarehouseWithRequestBuilder(warehouseId: String) -> RequestBuilder<GetAdvancedSyncScheduleFromWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/advanced-sync-schedule"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetAdvancedSyncScheduleFromWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Selective Syncs from Warehouse And Source
     
     - parameter warehouseId: (path)  
     - parameter sourceId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSelectiveSyncsFromWarehouseAndSource(warehouseId: String, sourceId: String, pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSelectiveSyncsFromWarehouseAndSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSelectiveSyncsFromWarehouseAndSourceWithRequestBuilder(warehouseId: warehouseId, sourceId: sourceId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Selective Syncs from Warehouse And Source
     - GET /warehouses/{warehouseId}/connected-sources/{sourceId}/selective-syncs
     - Returns the schema for a Warehouse, including Sources, Collections, and Properties.   The rate limit for this endpoint is 2 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter sourceId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - returns: RequestBuilder<ListSelectiveSyncsFromWarehouseAndSource200Response> 
     */
    open class func listSelectiveSyncsFromWarehouseAndSourceWithRequestBuilder(warehouseId: String, sourceId: String, pagination: PaginationInput) -> RequestBuilder<ListSelectiveSyncsFromWarehouseAndSource200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/connected-sources/{sourceId}/selective-syncs"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pagination": pagination.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListSelectiveSyncsFromWarehouseAndSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Selective Syncs from Warehouse And Space
     
     - parameter spaceId: (path)  
     - parameter warehouseId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in alpha. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSelectiveSyncsFromWarehouseAndSpace(spaceId: String, warehouseId: String, pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSelectiveSyncsFromWarehouseAndSpace200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSelectiveSyncsFromWarehouseAndSpaceWithRequestBuilder(spaceId: spaceId, warehouseId: warehouseId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Selective Syncs from Warehouse And Space
     - GET /spaces/{spaceId}/profiles-warehouses/{warehouseId}/selective-syncs
     - Returns the schema for a Space Warehouse connection, including Sources, Collections, and Properties.  • When called, this endpoint may generate the `Profiles Sync Warehouse Schema Retrieved` event in the [audit trail](/tag/Audit-Trail).          The rate limit for this endpoint is 2 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter warehouseId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in alpha. 
     - returns: RequestBuilder<ListSelectiveSyncsFromWarehouseAndSpace200Response> 
     */
    open class func listSelectiveSyncsFromWarehouseAndSpaceWithRequestBuilder(spaceId: String, warehouseId: String, pagination: PaginationInput) -> RequestBuilder<ListSelectiveSyncsFromWarehouseAndSpace200Response> {
        var localVariablePath = "/spaces/{spaceId}/profiles-warehouses/{warehouseId}/selective-syncs"
        let spaceIdPreEscape = "\(APIHelper.mapValueToPathItem(spaceId))"
        let spaceIdPostEscape = spaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{spaceId}", with: spaceIdPostEscape, options: .literal, range: nil)
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pagination": pagination.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListSelectiveSyncsFromWarehouseAndSpace200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Syncs from Warehouse
     
     - parameter warehouseId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSyncsFromWarehouse(warehouseId: String, pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSyncsFromWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSyncsFromWarehouseWithRequestBuilder(warehouseId: warehouseId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Syncs from Warehouse
     - GET /warehouses/{warehouseId}/syncs
     - Returns the overview of syncs for every Source connected to a Warehouse.   The rate limit for this endpoint is 2 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - returns: RequestBuilder<ListSyncsFromWarehouse200Response> 
     */
    open class func listSyncsFromWarehouseWithRequestBuilder(warehouseId: String, pagination: PaginationInput) -> RequestBuilder<ListSyncsFromWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/syncs"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pagination": pagination.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListSyncsFromWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Syncs from Warehouse And Source
     
     - parameter warehouseId: (path)  
     - parameter sourceId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSyncsFromWarehouseAndSource(warehouseId: String, sourceId: String, pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSyncsFromWarehouseAndSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSyncsFromWarehouseAndSourceWithRequestBuilder(warehouseId: warehouseId, sourceId: sourceId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Syncs from Warehouse And Source
     - GET /warehouses/{warehouseId}/connected-sources/{sourceId}/syncs
     - Returns the overview of syncs for a Source connected to a Warehouse.   The rate limit for this endpoint is 2 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter sourceId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - returns: RequestBuilder<ListSyncsFromWarehouseAndSource200Response> 
     */
    open class func listSyncsFromWarehouseAndSourceWithRequestBuilder(warehouseId: String, sourceId: String, pagination: PaginationInput) -> RequestBuilder<ListSyncsFromWarehouseAndSource200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/connected-sources/{sourceId}/syncs"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pagination": pagination.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListSyncsFromWarehouseAndSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Replace Advanced Sync Schedule for Warehouse
     
     - parameter warehouseId: (path)  
     - parameter replaceAdvancedSyncScheduleForWarehouseV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func replaceAdvancedSyncScheduleForWarehouse(warehouseId: String, replaceAdvancedSyncScheduleForWarehouseV1Input: ReplaceAdvancedSyncScheduleForWarehouseV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ReplaceAdvancedSyncScheduleForWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return replaceAdvancedSyncScheduleForWarehouseWithRequestBuilder(warehouseId: warehouseId, replaceAdvancedSyncScheduleForWarehouseV1Input: replaceAdvancedSyncScheduleForWarehouseV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Replace Advanced Sync Schedule for Warehouse
     - PUT /warehouses/{warehouseId}/advanced-sync-schedule
     - Updates the advanced sync schedule for a Warehouse, replacing the sync schedule with a new schedule.   The rate limit for this endpoint is 2 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter replaceAdvancedSyncScheduleForWarehouseV1Input: (body)  
     - returns: RequestBuilder<ReplaceAdvancedSyncScheduleForWarehouse200Response> 
     */
    open class func replaceAdvancedSyncScheduleForWarehouseWithRequestBuilder(warehouseId: String, replaceAdvancedSyncScheduleForWarehouseV1Input: ReplaceAdvancedSyncScheduleForWarehouseV1Input) -> RequestBuilder<ReplaceAdvancedSyncScheduleForWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/advanced-sync-schedule"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: replaceAdvancedSyncScheduleForWarehouseV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReplaceAdvancedSyncScheduleForWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Selective Sync for Warehouse
     
     - parameter warehouseId: (path)  
     - parameter updateSelectiveSyncForWarehouseV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateSelectiveSyncForWarehouse(warehouseId: String, updateSelectiveSyncForWarehouseV1Input: UpdateSelectiveSyncForWarehouseV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateSelectiveSyncForWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateSelectiveSyncForWarehouseWithRequestBuilder(warehouseId: warehouseId, updateSelectiveSyncForWarehouseV1Input: updateSelectiveSyncForWarehouseV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Selective Sync for Warehouse
     - PATCH /warehouses/{warehouseId}/selective-sync
     - Configures the schema for a Warehouse, including Sources, Collections, and Properties.  • When called, this endpoint may generate the `Storage Destination Modified` event in the [audit trail](/tag/Audit-Trail).          The rate limit for this endpoint is 2 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter updateSelectiveSyncForWarehouseV1Input: (body)  
     - returns: RequestBuilder<UpdateSelectiveSyncForWarehouse200Response> 
     */
    open class func updateSelectiveSyncForWarehouseWithRequestBuilder(warehouseId: String, updateSelectiveSyncForWarehouseV1Input: UpdateSelectiveSyncForWarehouseV1Input) -> RequestBuilder<UpdateSelectiveSyncForWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/selective-sync"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateSelectiveSyncForWarehouseV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateSelectiveSyncForWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
