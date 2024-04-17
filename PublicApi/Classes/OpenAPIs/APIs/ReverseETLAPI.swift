//
// ReverseETLAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ReverseETLAPI {

    /**
     Create Reverse ETL Manual Sync
     
     - parameter createReverseETLManualSyncInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createReverseETLManualSync(createReverseETLManualSyncInput: CreateReverseETLManualSyncInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateReverseETLManualSync200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createReverseETLManualSyncWithRequestBuilder(createReverseETLManualSyncInput: createReverseETLManualSyncInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Reverse ETL Manual Sync
     - POST /reverse-etl-syncs
     - Triggers a manual sync for a Reverse ETL Connection.   The rate limit for this endpoint is 20 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter createReverseETLManualSyncInput: (body)  
     - returns: RequestBuilder<CreateReverseETLManualSync200Response> 
     */
    open class func createReverseETLManualSyncWithRequestBuilder(createReverseETLManualSyncInput: CreateReverseETLManualSyncInput) -> RequestBuilder<CreateReverseETLManualSync200Response> {
        let localVariablePath = "/reverse-etl-syncs"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createReverseETLManualSyncInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateReverseETLManualSync200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Reverse Etl Model
     
     - parameter createReverseEtlModelInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createReverseEtlModel(createReverseEtlModelInput: CreateReverseEtlModelInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateReverseEtlModel201Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createReverseEtlModelWithRequestBuilder(createReverseEtlModelInput: createReverseEtlModelInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Reverse Etl Model
     - POST /reverse-etl-models
     - Creates a new Reverse ETL Model.          • When called, this endpoint may generate the `Model Created` event in the [audit trail](/tag/Audit-Trail).       
     - BASIC:
       - type: http
       - name: token
     - parameter createReverseEtlModelInput: (body)  
     - returns: RequestBuilder<CreateReverseEtlModel201Response> 
     */
    open class func createReverseEtlModelWithRequestBuilder(createReverseEtlModelInput: CreateReverseEtlModelInput) -> RequestBuilder<CreateReverseEtlModel201Response> {
        let localVariablePath = "/reverse-etl-models"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createReverseEtlModelInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateReverseEtlModel201Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Reverse Etl Model
     
     - parameter modelId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteReverseEtlModel(modelId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DeleteReverseEtlModel200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteReverseEtlModelWithRequestBuilder(modelId: modelId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Reverse Etl Model
     - DELETE /reverse-etl-models/{modelId}
     - Deletes an existing Model.          • When called, this endpoint may generate the `Model Deleted` event in the [audit trail](/tag/Audit-Trail).       
     - BASIC:
       - type: http
       - name: token
     - parameter modelId: (path)  
     - returns: RequestBuilder<DeleteReverseEtlModel200Response> 
     */
    open class func deleteReverseEtlModelWithRequestBuilder(modelId: String) -> RequestBuilder<DeleteReverseEtlModel200Response> {
        var localVariablePath = "/reverse-etl-models/{modelId}"
        let modelIdPreEscape = "\(APIHelper.mapValueToPathItem(modelId))"
        let modelIdPostEscape = modelIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{modelId}", with: modelIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeleteReverseEtlModel200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Reverse ETL Sync Status
     
     - parameter modelId: (path)  
     - parameter syncId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getReverseETLSyncStatus(modelId: String, syncId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetReverseETLSyncStatus200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getReverseETLSyncStatusWithRequestBuilder(modelId: modelId, syncId: syncId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Reverse ETL Sync Status
     - GET /reverse-etl-models/{modelId}/syncs/{syncId}
     - Get the sync status for a Reverse ETL sync. The sync status includes all detailed information about the sync, like sync status, duration, details about the extract and load phase if applicable, etc...   The rate limit for this endpoint is 250 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter modelId: (path)  
     - parameter syncId: (path)  
     - returns: RequestBuilder<GetReverseETLSyncStatus200Response> 
     */
    open class func getReverseETLSyncStatusWithRequestBuilder(modelId: String, syncId: String) -> RequestBuilder<GetReverseETLSyncStatus200Response> {
        var localVariablePath = "/reverse-etl-models/{modelId}/syncs/{syncId}"
        let modelIdPreEscape = "\(APIHelper.mapValueToPathItem(modelId))"
        let modelIdPostEscape = modelIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{modelId}", with: modelIdPostEscape, options: .literal, range: nil)
        let syncIdPreEscape = "\(APIHelper.mapValueToPathItem(syncId))"
        let syncIdPostEscape = syncIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{syncId}", with: syncIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetReverseETLSyncStatus200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Reverse Etl Model
     
     - parameter modelId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getReverseEtlModel(modelId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetReverseEtlModel200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getReverseEtlModelWithRequestBuilder(modelId: modelId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Reverse Etl Model
     - GET /reverse-etl-models/{modelId}
     - Returns a Reverse ETL Model by its id.
     - BASIC:
       - type: http
       - name: token
     - parameter modelId: (path)  
     - returns: RequestBuilder<GetReverseEtlModel200Response> 
     */
    open class func getReverseEtlModelWithRequestBuilder(modelId: String) -> RequestBuilder<GetReverseEtlModel200Response> {
        var localVariablePath = "/reverse-etl-models/{modelId}"
        let modelIdPreEscape = "\(APIHelper.mapValueToPathItem(modelId))"
        let modelIdPostEscape = modelIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{modelId}", with: modelIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetReverseEtlModel200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Reverse Etl Models
     
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in alpha. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listReverseEtlModels(pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListReverseEtlModels200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listReverseEtlModelsWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Reverse Etl Models
     - GET /reverse-etl-models
     - Returns a list of Reverse ETL Models.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in alpha. 
     - returns: RequestBuilder<ListReverseEtlModels200Response> 
     */
    open class func listReverseEtlModelsWithRequestBuilder(pagination: PaginationInput) -> RequestBuilder<ListReverseEtlModels200Response> {
        let localVariablePath = "/reverse-etl-models"
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

        let localVariableRequestBuilder: RequestBuilder<ListReverseEtlModels200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Reverse Etl Model
     
     - parameter modelId: (path)  
     - parameter updateReverseEtlModelInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateReverseEtlModel(modelId: String, updateReverseEtlModelInput: UpdateReverseEtlModelInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateReverseEtlModel200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateReverseEtlModelWithRequestBuilder(modelId: modelId, updateReverseEtlModelInput: updateReverseEtlModelInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Reverse Etl Model
     - PATCH /reverse-etl-models/{modelId}
     - Updates an existing Reverse ETL Model.          • When called, this endpoint may generate one or more of the following [audit trail](/tag/Audit-Trail) events:* Model Settings Saved * Model State Change Toggled       
     - BASIC:
       - type: http
       - name: token
     - parameter modelId: (path)  
     - parameter updateReverseEtlModelInput: (body)  
     - returns: RequestBuilder<UpdateReverseEtlModel200Response> 
     */
    open class func updateReverseEtlModelWithRequestBuilder(modelId: String, updateReverseEtlModelInput: UpdateReverseEtlModelInput) -> RequestBuilder<UpdateReverseEtlModel200Response> {
        var localVariablePath = "/reverse-etl-models/{modelId}"
        let modelIdPreEscape = "\(APIHelper.mapValueToPathItem(modelId))"
        let modelIdPostEscape = modelIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{modelId}", with: modelIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateReverseEtlModelInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateReverseEtlModel200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
