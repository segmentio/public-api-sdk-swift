//
// SourcesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SourcesAPI {

    /**
     Add Labels to Source
     
     - parameter sourceId: (path)  
     - parameter addLabelsToSourceV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addLabelsToSource(sourceId: String, addLabelsToSourceV1Input: AddLabelsToSourceV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: AddLabelsToSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return addLabelsToSourceWithRequestBuilder(sourceId: sourceId, addLabelsToSourceV1Input: addLabelsToSourceV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add Labels to Source
     - POST /sources/{sourceId}/labels
     - Adds an existing label to a Source.    • When called, this endpoint may generate the `Source Modified` event in the [audit trail](/tag/Audit-Trail).       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter addLabelsToSourceV1Input: (body)  
     - returns: RequestBuilder<AddLabelsToSource200Response> 
     */
    open class func addLabelsToSourceWithRequestBuilder(sourceId: String, addLabelsToSourceV1Input: AddLabelsToSourceV1Input) -> RequestBuilder<AddLabelsToSource200Response> {
        var localVariablePath = "/sources/{sourceId}/labels"
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addLabelsToSourceV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AddLabelsToSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Source
     
     - parameter createSourceV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createSource(createSourceV1Input: CreateSourceV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createSourceWithRequestBuilder(createSourceV1Input: createSourceV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Source
     - POST /sources
     - Creates a new Source.    • When called, this endpoint may generate the `Source Created` event in the [audit trail](/tag/Audit-Trail).       
     - BASIC:
       - type: http
       - name: token
     - parameter createSourceV1Input: (body)  
     - returns: RequestBuilder<CreateSource200Response> 
     */
    open class func createSourceWithRequestBuilder(createSourceV1Input: CreateSourceV1Input) -> RequestBuilder<CreateSource200Response> {
        let localVariablePath = "/sources"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createSourceV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Source
     
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteSource(sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DeleteSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteSourceWithRequestBuilder(sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Source
     - DELETE /sources/{sourceId}
     - Deletes an existing Source.    • When called, this endpoint may generate the `Source Deleted` event in the [audit trail](/tag/Audit-Trail).       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - returns: RequestBuilder<DeleteSource200Response> 
     */
    open class func deleteSourceWithRequestBuilder(sourceId: String) -> RequestBuilder<DeleteSource200Response> {
        var localVariablePath = "/sources/{sourceId}"
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

        let localVariableRequestBuilder: RequestBuilder<DeleteSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Source
     
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getSource(sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getSourceWithRequestBuilder(sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Source
     - GET /sources/{sourceId}
     - Returns a Source by its id.
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - returns: RequestBuilder<GetSource200Response> 
     */
    open class func getSourceWithRequestBuilder(sourceId: String) -> RequestBuilder<GetSource200Response> {
        var localVariablePath = "/sources/{sourceId}"
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

        let localVariableRequestBuilder: RequestBuilder<GetSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Connected Destinations from Source
     
     - parameter sourceId: (path)  
     - parameter pagination: (query) Required pagination params for the request.  This parameter exists in alpha. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listConnectedDestinationsFromSource(sourceId: String, pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListConnectedDestinationsFromSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listConnectedDestinationsFromSourceWithRequestBuilder(sourceId: sourceId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Connected Destinations from Source
     - GET /sources/{sourceId}/connected-destinations
     - Returns a list of Destinations connected to a Source.
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter pagination: (query) Required pagination params for the request.  This parameter exists in alpha. 
     - returns: RequestBuilder<ListConnectedDestinationsFromSource200Response> 
     */
    open class func listConnectedDestinationsFromSourceWithRequestBuilder(sourceId: String, pagination: PaginationInput) -> RequestBuilder<ListConnectedDestinationsFromSource200Response> {
        var localVariablePath = "/sources/{sourceId}/connected-destinations"
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

        let localVariableRequestBuilder: RequestBuilder<ListConnectedDestinationsFromSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Connected Warehouses from Source
     
     - parameter sourceId: (path)  
     - parameter pagination: (query) Required pagination params for the request.  This parameter exists in alpha. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listConnectedWarehousesFromSource(sourceId: String, pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListConnectedWarehousesFromSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listConnectedWarehousesFromSourceWithRequestBuilder(sourceId: sourceId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Connected Warehouses from Source
     - GET /sources/{sourceId}/connected-warehouses
     - Returns a list of Warehouses connected to a Source.
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter pagination: (query) Required pagination params for the request.  This parameter exists in alpha. 
     - returns: RequestBuilder<ListConnectedWarehousesFromSource200Response> 
     */
    open class func listConnectedWarehousesFromSourceWithRequestBuilder(sourceId: String, pagination: PaginationInput) -> RequestBuilder<ListConnectedWarehousesFromSource200Response> {
        var localVariablePath = "/sources/{sourceId}/connected-warehouses"
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

        let localVariableRequestBuilder: RequestBuilder<ListConnectedWarehousesFromSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Schema Settings in Source
     
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSchemaSettingsInSource(sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSchemaSettingsInSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSchemaSettingsInSourceWithRequestBuilder(sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Schema Settings in Source
     - GET /sources/{sourceId}/settings
     - Retrieves the schema configuration settings for a Source. If Protocols is not enabled for the Source, the configurations specific to Protocols will have default values.
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - returns: RequestBuilder<ListSchemaSettingsInSource200Response> 
     */
    open class func listSchemaSettingsInSourceWithRequestBuilder(sourceId: String) -> RequestBuilder<ListSchemaSettingsInSource200Response> {
        var localVariablePath = "/sources/{sourceId}/settings"
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

        let localVariableRequestBuilder: RequestBuilder<ListSchemaSettingsInSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Sources
     
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in alpha. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSources(pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSources200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSourcesWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Sources
     - GET /sources
     - Returns a list of Sources.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Defines the pagination parameters.  This parameter exists in alpha. 
     - returns: RequestBuilder<ListSources200Response> 
     */
    open class func listSourcesWithRequestBuilder(pagination: PaginationInput) -> RequestBuilder<ListSources200Response> {
        let localVariablePath = "/sources"
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

        let localVariableRequestBuilder: RequestBuilder<ListSources200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Replace Labels in Source
     
     - parameter sourceId: (path)  
     - parameter replaceLabelsInSourceV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func replaceLabelsInSource(sourceId: String, replaceLabelsInSourceV1Input: ReplaceLabelsInSourceV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ReplaceLabelsInSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return replaceLabelsInSourceWithRequestBuilder(sourceId: sourceId, replaceLabelsInSourceV1Input: replaceLabelsInSourceV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Replace Labels in Source
     - PUT /sources/{sourceId}/labels
     - Replaces all labels in a Source.
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter replaceLabelsInSourceV1Input: (body)  
     - returns: RequestBuilder<ReplaceLabelsInSource200Response> 
     */
    open class func replaceLabelsInSourceWithRequestBuilder(sourceId: String, replaceLabelsInSourceV1Input: ReplaceLabelsInSourceV1Input) -> RequestBuilder<ReplaceLabelsInSource200Response> {
        var localVariablePath = "/sources/{sourceId}/labels"
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: replaceLabelsInSourceV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReplaceLabelsInSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Schema Settings in Source
     
     - parameter sourceId: (path)  
     - parameter updateSchemaSettingsInSourceV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateSchemaSettingsInSource(sourceId: String, updateSchemaSettingsInSourceV1Input: UpdateSchemaSettingsInSourceV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateSchemaSettingsInSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateSchemaSettingsInSourceWithRequestBuilder(sourceId: sourceId, updateSchemaSettingsInSourceV1Input: updateSchemaSettingsInSourceV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Schema Settings in Source
     - PATCH /sources/{sourceId}/settings
     - Updates the schema configuration for a Source. If Protocols is not enabled for the Source, any updates to Protocols-specific configurations will not be applied.        Config API omitted fields: - `updateMask`       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter updateSchemaSettingsInSourceV1Input: (body)  
     - returns: RequestBuilder<UpdateSchemaSettingsInSource200Response> 
     */
    open class func updateSchemaSettingsInSourceWithRequestBuilder(sourceId: String, updateSchemaSettingsInSourceV1Input: UpdateSchemaSettingsInSourceV1Input) -> RequestBuilder<UpdateSchemaSettingsInSource200Response> {
        var localVariablePath = "/sources/{sourceId}/settings"
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateSchemaSettingsInSourceV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateSchemaSettingsInSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Source
     
     - parameter sourceId: (path)  
     - parameter updateSourceV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateSource(sourceId: String, updateSourceV1Input: UpdateSourceV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateSourceWithRequestBuilder(sourceId: sourceId, updateSourceV1Input: updateSourceV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Source
     - PATCH /sources/{sourceId}
     - Updates an existing Source.    • When called, this endpoint may generate one or more of the following [audit trail](/tag/Audit-Trail) events:* Source Modified * Source Enabled * Source Settings Modified * Source Disabled  Config API omitted fields: - `updateMask` 
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter updateSourceV1Input: (body)  
     - returns: RequestBuilder<UpdateSource200Response> 
     */
    open class func updateSourceWithRequestBuilder(sourceId: String, updateSourceV1Input: UpdateSourceV1Input) -> RequestBuilder<UpdateSource200Response> {
        var localVariablePath = "/sources/{sourceId}"
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateSourceV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
