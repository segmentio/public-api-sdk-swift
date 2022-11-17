//
// WarehousesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WarehousesAPI {

    /**
     Add Connection from Source to Warehouse
     
     - parameter warehouseId: (path)  
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addConnectionFromSourceToWarehouse(warehouseId: String, sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: AddConnectionFromSourceToWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return addConnectionFromSourceToWarehouseWithRequestBuilder(warehouseId: warehouseId, sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add Connection from Source to Warehouse
     - POST /warehouses/{warehouseId}/connected-sources/{sourceId}
     - Connects a Source to a Warehouse.    When called, this endpoint may generate the `Storage Destination Modified` [Audit Trail](/tag/Audit-Trail) event.       
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter sourceId: (path)  
     - returns: RequestBuilder<AddConnectionFromSourceToWarehouse200Response> 
     */
    open class func addConnectionFromSourceToWarehouseWithRequestBuilder(warehouseId: String, sourceId: String) -> RequestBuilder<AddConnectionFromSourceToWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/connected-sources/{sourceId}"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AddConnectionFromSourceToWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Validation in Warehouse
     
     - parameter createValidationInWarehouseV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createValidationInWarehouse(createValidationInWarehouseV1Input: CreateValidationInWarehouseV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateValidationInWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createValidationInWarehouseWithRequestBuilder(createValidationInWarehouseV1Input: createValidationInWarehouseV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Validation in Warehouse
     - POST /warehouses/validation
     - Validates input settings against a Warehouse.    When called, this endpoint may generate the `Storage Destination Settings Validation` [Audit Trail](/tag/Audit-Trail) event.       
     - BASIC:
       - type: http
       - name: token
     - parameter createValidationInWarehouseV1Input: (body)  
     - returns: RequestBuilder<CreateValidationInWarehouse200Response> 
     */
    open class func createValidationInWarehouseWithRequestBuilder(createValidationInWarehouseV1Input: CreateValidationInWarehouseV1Input) -> RequestBuilder<CreateValidationInWarehouse200Response> {
        let localVariablePath = "/warehouses/validation"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createValidationInWarehouseV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateValidationInWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Warehouse
     
     - parameter createWarehouseV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createWarehouse(createWarehouseV1Input: CreateWarehouseV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createWarehouseWithRequestBuilder(createWarehouseV1Input: createWarehouseV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Warehouse
     - POST /warehouses
     - Creates a new Warehouse.    When called, this endpoint may generate the `Storage Destination Created` [Audit Trail](/tag/Audit-Trail) event.       
     - BASIC:
       - type: http
       - name: token
     - parameter createWarehouseV1Input: (body)  
     - returns: RequestBuilder<CreateWarehouse200Response> 
     */
    open class func createWarehouseWithRequestBuilder(createWarehouseV1Input: CreateWarehouseV1Input) -> RequestBuilder<CreateWarehouse200Response> {
        let localVariablePath = "/warehouses"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createWarehouseV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Warehouse
     
     - parameter warehouseId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteWarehouse(warehouseId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DeleteWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteWarehouseWithRequestBuilder(warehouseId: warehouseId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Warehouse
     - DELETE /warehouses/{warehouseId}
     - Deletes an existing Warehouse.    When called, this endpoint may generate the `Storage Destination Deleted` [Audit Trail](/tag/Audit-Trail) event.       
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - returns: RequestBuilder<DeleteWarehouse200Response> 
     */
    open class func deleteWarehouseWithRequestBuilder(warehouseId: String) -> RequestBuilder<DeleteWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}"
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

        let localVariableRequestBuilder: RequestBuilder<DeleteWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Connection State from Warehouse
     
     - parameter warehouseId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getConnectionStateFromWarehouse(warehouseId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetConnectionStateFromWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getConnectionStateFromWarehouseWithRequestBuilder(warehouseId: warehouseId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Connection State from Warehouse
     - GET /warehouses/{warehouseId}/connection-state
     - Verifies the state of Warehouse connection settings.   The rate limit for this endpoint is 20 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - returns: RequestBuilder<GetConnectionStateFromWarehouse200Response> 
     */
    open class func getConnectionStateFromWarehouseWithRequestBuilder(warehouseId: String) -> RequestBuilder<GetConnectionStateFromWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/connection-state"
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

        let localVariableRequestBuilder: RequestBuilder<GetConnectionStateFromWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Warehouse
     
     - parameter warehouseId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getWarehouse(warehouseId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getWarehouseWithRequestBuilder(warehouseId: warehouseId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Warehouse
     - GET /warehouses/{warehouseId}
     - Returns a Warehouse by its id.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - returns: RequestBuilder<GetWarehouse200Response> 
     */
    open class func getWarehouseWithRequestBuilder(warehouseId: String) -> RequestBuilder<GetWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}"
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

        let localVariableRequestBuilder: RequestBuilder<GetWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Connected Sources from Warehouse
     
     - parameter warehouseId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listConnectedSourcesFromWarehouse(warehouseId: String, pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListConnectedSourcesFromWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listConnectedSourcesFromWarehouseWithRequestBuilder(warehouseId: warehouseId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Connected Sources from Warehouse
     - GET /warehouses/{warehouseId}/connected-sources
     - Returns the list of Sources that are connected to a Warehouse.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - returns: RequestBuilder<ListConnectedSourcesFromWarehouse200Response> 
     */
    open class func listConnectedSourcesFromWarehouseWithRequestBuilder(warehouseId: String, pagination: PaginationInput) -> RequestBuilder<ListConnectedSourcesFromWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/connected-sources"
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

        let localVariableRequestBuilder: RequestBuilder<ListConnectedSourcesFromWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Warehouses
     
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listWarehouses(pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListWarehouses200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listWarehousesWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Warehouses
     - GET /warehouses
     - Returns a list of Warehouses.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. 
     - returns: RequestBuilder<ListWarehouses200Response> 
     */
    open class func listWarehousesWithRequestBuilder(pagination: PaginationInput) -> RequestBuilder<ListWarehouses200Response> {
        let localVariablePath = "/warehouses"
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

        let localVariableRequestBuilder: RequestBuilder<ListWarehouses200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Remove Source Connection from Warehouse
     
     - parameter warehouseId: (path)  
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removeSourceConnectionFromWarehouse(warehouseId: String, sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: RemoveSourceConnectionFromWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return removeSourceConnectionFromWarehouseWithRequestBuilder(warehouseId: warehouseId, sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove Source Connection from Warehouse
     - DELETE /warehouses/{warehouseId}/connected-sources/{sourceId}
     - Disconnects a Source from a Warehouse.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter sourceId: (path)  
     - returns: RequestBuilder<RemoveSourceConnectionFromWarehouse200Response> 
     */
    open class func removeSourceConnectionFromWarehouseWithRequestBuilder(warehouseId: String, sourceId: String) -> RequestBuilder<RemoveSourceConnectionFromWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}/connected-sources/{sourceId}"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RemoveSourceConnectionFromWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Warehouse
     
     - parameter warehouseId: (path)  
     - parameter updateWarehouseV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateWarehouse(warehouseId: String, updateWarehouseV1Input: UpdateWarehouseV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateWarehouse200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateWarehouseWithRequestBuilder(warehouseId: warehouseId, updateWarehouseV1Input: updateWarehouseV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Warehouse
     - PATCH /warehouses/{warehouseId}
     - Updates an existing Warehouse.  When called, this endpoint may generate one or more of the following [Audit Trail](/tag/Audit-Trail) events: * Storage Destination Modified * Storage Destination Enabled       
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseId: (path)  
     - parameter updateWarehouseV1Input: (body)  
     - returns: RequestBuilder<UpdateWarehouse200Response> 
     */
    open class func updateWarehouseWithRequestBuilder(warehouseId: String, updateWarehouseV1Input: UpdateWarehouseV1Input) -> RequestBuilder<UpdateWarehouse200Response> {
        var localVariablePath = "/warehouses/{warehouseId}"
        let warehouseIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseId))"
        let warehouseIdPostEscape = warehouseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseId}", with: warehouseIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateWarehouseV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateWarehouse200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
