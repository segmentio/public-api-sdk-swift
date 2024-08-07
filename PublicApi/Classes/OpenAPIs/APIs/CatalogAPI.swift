//
// CatalogAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CatalogAPI {

    /**
     Get Destination Metadata
     
     - parameter destinationMetadataId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getDestinationMetadata(destinationMetadataId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetDestinationMetadata200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getDestinationMetadataWithRequestBuilder(destinationMetadataId: destinationMetadataId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Destination Metadata
     - GET /catalog/destinations/{destinationMetadataId}
     - Returns a Destination catalog item by its id.
     - BASIC:
       - type: http
       - name: token
     - parameter destinationMetadataId: (path)  
     - returns: RequestBuilder<GetDestinationMetadata200Response> 
     */
    open class func getDestinationMetadataWithRequestBuilder(destinationMetadataId: String) -> RequestBuilder<GetDestinationMetadata200Response> {
        var localVariablePath = "/catalog/destinations/{destinationMetadataId}"
        let destinationMetadataIdPreEscape = "\(APIHelper.mapValueToPathItem(destinationMetadataId))"
        let destinationMetadataIdPostEscape = destinationMetadataIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{destinationMetadataId}", with: destinationMetadataIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetDestinationMetadata200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Destinations Catalog
     
     - parameter pagination: (query) Required pagination parameters used to filter the Destinations catalog.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getDestinationsCatalog(pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetDestinationsCatalog200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getDestinationsCatalogWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Destinations Catalog
     - GET /catalog/destinations
     - Returns a list of all available Destinations in the Segment catalog.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Required pagination parameters used to filter the Destinations catalog.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<GetDestinationsCatalog200Response> 
     */
    open class func getDestinationsCatalogWithRequestBuilder(pagination: PaginationInput? = nil) -> RequestBuilder<GetDestinationsCatalog200Response> {
        let localVariablePath = "/catalog/destinations"
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

        let localVariableRequestBuilder: RequestBuilder<GetDestinationsCatalog200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Source Metadata
     
     - parameter sourceMetadataId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getSourceMetadata(sourceMetadataId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetSourceMetadata200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getSourceMetadataWithRequestBuilder(sourceMetadataId: sourceMetadataId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Source Metadata
     - GET /catalog/sources/{sourceMetadataId}
     - Returns a Source catalog item by its id.
     - BASIC:
       - type: http
       - name: token
     - parameter sourceMetadataId: (path)  
     - returns: RequestBuilder<GetSourceMetadata200Response> 
     */
    open class func getSourceMetadataWithRequestBuilder(sourceMetadataId: String) -> RequestBuilder<GetSourceMetadata200Response> {
        var localVariablePath = "/catalog/sources/{sourceMetadataId}"
        let sourceMetadataIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceMetadataId))"
        let sourceMetadataIdPostEscape = sourceMetadataIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceMetadataId}", with: sourceMetadataIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetSourceMetadata200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Sources Catalog
     
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getSourcesCatalog(pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetSourcesCatalog200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getSourcesCatalogWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Sources Catalog
     - GET /catalog/sources
     - Returns a list of all available Sources in the Segment catalog.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<GetSourcesCatalog200Response> 
     */
    open class func getSourcesCatalogWithRequestBuilder(pagination: PaginationInput? = nil) -> RequestBuilder<GetSourcesCatalog200Response> {
        let localVariablePath = "/catalog/sources"
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

        let localVariableRequestBuilder: RequestBuilder<GetSourcesCatalog200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Warehouse Metadata
     
     - parameter warehouseMetadataId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getWarehouseMetadata(warehouseMetadataId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetWarehouseMetadata200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getWarehouseMetadataWithRequestBuilder(warehouseMetadataId: warehouseMetadataId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Warehouse Metadata
     - GET /catalog/warehouses/{warehouseMetadataId}
     - Returns a Warehouse catalog item by its id.
     - BASIC:
       - type: http
       - name: token
     - parameter warehouseMetadataId: (path)  
     - returns: RequestBuilder<GetWarehouseMetadata200Response> 
     */
    open class func getWarehouseMetadataWithRequestBuilder(warehouseMetadataId: String) -> RequestBuilder<GetWarehouseMetadata200Response> {
        var localVariablePath = "/catalog/warehouses/{warehouseMetadataId}"
        let warehouseMetadataIdPreEscape = "\(APIHelper.mapValueToPathItem(warehouseMetadataId))"
        let warehouseMetadataIdPostEscape = warehouseMetadataIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{warehouseMetadataId}", with: warehouseMetadataIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetWarehouseMetadata200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Warehouses Catalog
     
     - parameter pagination: (query) Optional pagination params used to filter the Warehouses catalog.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getWarehousesCatalog(pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetWarehousesCatalog200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getWarehousesCatalogWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Warehouses Catalog
     - GET /catalog/warehouses
     - Returns a list of all available Warehouses in the Segment catalog.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Optional pagination params used to filter the Warehouses catalog.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<GetWarehousesCatalog200Response> 
     */
    open class func getWarehousesCatalogWithRequestBuilder(pagination: PaginationInput? = nil) -> RequestBuilder<GetWarehousesCatalog200Response> {
        let localVariablePath = "/catalog/warehouses"
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

        let localVariableRequestBuilder: RequestBuilder<GetWarehousesCatalog200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
