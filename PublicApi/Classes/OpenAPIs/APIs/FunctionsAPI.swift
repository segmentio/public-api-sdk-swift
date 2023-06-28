//
// FunctionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FunctionsAPI {

    /**
     Create Function
     
     - parameter createFunctionV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createFunction(createFunctionV1Input: CreateFunctionV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateFunction200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createFunctionWithRequestBuilder(createFunctionV1Input: createFunctionV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Function
     - POST /functions
     - Creates a Function.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter createFunctionV1Input: (body)  
     - returns: RequestBuilder<CreateFunction200Response> 
     */
    open class func createFunctionWithRequestBuilder(createFunctionV1Input: CreateFunctionV1Input) -> RequestBuilder<CreateFunction200Response> {
        let localVariablePath = "/functions"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createFunctionV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateFunction200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Function Deployment
     
     - parameter functionId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createFunctionDeployment(functionId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateFunctionDeployment200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createFunctionDeploymentWithRequestBuilder(functionId: functionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Function Deployment
     - POST /functions/{functionId}/deploy
     - Deploys a Function. Only applicable to Source Function instances.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter functionId: (path)  
     - returns: RequestBuilder<CreateFunctionDeployment200Response> 
     */
    open class func createFunctionDeploymentWithRequestBuilder(functionId: String) -> RequestBuilder<CreateFunctionDeployment200Response> {
        var localVariablePath = "/functions/{functionId}/deploy"
        let functionIdPreEscape = "\(APIHelper.mapValueToPathItem(functionId))"
        let functionIdPostEscape = functionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{functionId}", with: functionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateFunctionDeployment200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Function
     
     - parameter functionId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteFunction(functionId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DeleteFunction200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteFunctionWithRequestBuilder(functionId: functionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Function
     - DELETE /functions/{functionId}
     - Deletes a Function.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter functionId: (path)  
     - returns: RequestBuilder<DeleteFunction200Response> 
     */
    open class func deleteFunctionWithRequestBuilder(functionId: String) -> RequestBuilder<DeleteFunction200Response> {
        var localVariablePath = "/functions/{functionId}"
        let functionIdPreEscape = "\(APIHelper.mapValueToPathItem(functionId))"
        let functionIdPostEscape = functionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{functionId}", with: functionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeleteFunction200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Function
     
     - parameter functionId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getFunction(functionId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetFunction200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getFunctionWithRequestBuilder(functionId: functionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Function
     - GET /functions/{functionId}
     - Gets a Function.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter functionId: (path)  
     - returns: RequestBuilder<GetFunction200Response> 
     */
    open class func getFunctionWithRequestBuilder(functionId: String) -> RequestBuilder<GetFunction200Response> {
        var localVariablePath = "/functions/{functionId}"
        let functionIdPreEscape = "\(APIHelper.mapValueToPathItem(functionId))"
        let functionIdPostEscape = functionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{functionId}", with: functionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetFunction200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Function Version
     
     - parameter functionId: (path)  
     - parameter versionId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getFunctionVersion(functionId: String, versionId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetFunctionVersion200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getFunctionVersionWithRequestBuilder(functionId: functionId, versionId: versionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Function Version
     - GET /functions/{functionId}/versions/{versionId}
     - Gets a Function version.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter functionId: (path)  
     - parameter versionId: (path)  
     - returns: RequestBuilder<GetFunctionVersion200Response> 
     */
    open class func getFunctionVersionWithRequestBuilder(functionId: String, versionId: String) -> RequestBuilder<GetFunctionVersion200Response> {
        var localVariablePath = "/functions/{functionId}/versions/{versionId}"
        let functionIdPreEscape = "\(APIHelper.mapValueToPathItem(functionId))"
        let functionIdPostEscape = functionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{functionId}", with: functionIdPostEscape, options: .literal, range: nil)
        let versionIdPreEscape = "\(APIHelper.mapValueToPathItem(versionId))"
        let versionIdPostEscape = versionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{versionId}", with: versionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetFunctionVersion200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Function Versions
     
     - parameter functionId: (path)  
     - parameter pagination: (query) Pagination parameters.  This parameter exists in alpha. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listFunctionVersions(functionId: String, pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListFunctionVersions200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listFunctionVersionsWithRequestBuilder(functionId: functionId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Function Versions
     - GET /functions/{functionId}/versions
     - Lists versions for a Function in a Workspace.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter functionId: (path)  
     - parameter pagination: (query) Pagination parameters.  This parameter exists in alpha. 
     - returns: RequestBuilder<ListFunctionVersions200Response> 
     */
    open class func listFunctionVersionsWithRequestBuilder(functionId: String, pagination: PaginationInput) -> RequestBuilder<ListFunctionVersions200Response> {
        var localVariablePath = "/functions/{functionId}/versions"
        let functionIdPreEscape = "\(APIHelper.mapValueToPathItem(functionId))"
        let functionIdPostEscape = functionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{functionId}", with: functionIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<ListFunctionVersions200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter resourceType
     */
    public enum ResourceType_listFunctions: String, CaseIterable {
        case destination = "DESTINATION"
        case insertDestination = "INSERT_DESTINATION"
        case source = "SOURCE"
    }

    /**
     List Functions
     
     - parameter pagination: (query) Pagination parameters.  This parameter exists in v1. 
     - parameter resourceType: (query) The Function type.  Config API note: equal to &#x60;type&#x60;.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listFunctions(pagination: PaginationInput, resourceType: ResourceType_listFunctions, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListFunctions200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listFunctionsWithRequestBuilder(pagination: pagination, resourceType: resourceType).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Functions
     - GET /functions
     - Lists all Functions in a Workspace.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Pagination parameters.  This parameter exists in v1. 
     - parameter resourceType: (query) The Function type.  Config API note: equal to &#x60;type&#x60;.  This parameter exists in v1. 
     - returns: RequestBuilder<ListFunctions200Response> 
     */
    open class func listFunctionsWithRequestBuilder(pagination: PaginationInput, resourceType: ResourceType_listFunctions) -> RequestBuilder<ListFunctions200Response> {
        let localVariablePath = "/functions"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pagination": pagination.encodeToJSON(),
            "resourceType": resourceType.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListFunctions200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Restore Function Version
     
     - parameter functionId: (path)  
     - parameter restoreFunctionVersionAlphaInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func restoreFunctionVersion(functionId: String, restoreFunctionVersionAlphaInput: RestoreFunctionVersionAlphaInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: RestoreFunctionVersion200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return restoreFunctionVersionWithRequestBuilder(functionId: functionId, restoreFunctionVersionAlphaInput: restoreFunctionVersionAlphaInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Restore Function Version
     - POST /functions/{functionId}/versions
     - Restore an old Function version as the latest version.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter functionId: (path)  
     - parameter restoreFunctionVersionAlphaInput: (body)  
     - returns: RequestBuilder<RestoreFunctionVersion200Response> 
     */
    open class func restoreFunctionVersionWithRequestBuilder(functionId: String, restoreFunctionVersionAlphaInput: RestoreFunctionVersionAlphaInput) -> RequestBuilder<RestoreFunctionVersion200Response> {
        var localVariablePath = "/functions/{functionId}/versions"
        let functionIdPreEscape = "\(APIHelper.mapValueToPathItem(functionId))"
        let functionIdPostEscape = functionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{functionId}", with: functionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: restoreFunctionVersionAlphaInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RestoreFunctionVersion200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Function
     
     - parameter functionId: (path)  
     - parameter updateFunctionV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateFunction(functionId: String, updateFunctionV1Input: UpdateFunctionV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateFunction200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateFunctionWithRequestBuilder(functionId: functionId, updateFunctionV1Input: updateFunctionV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Function
     - PATCH /functions/{functionId}
     - Updates a Function.    • In order to successfully call this endpoint, the specified Workspace needs to have the Functions feature enabled. Please reach out to your customer success manager for more information.  Config API omitted fields: - `updateMask` 
     - BASIC:
       - type: http
       - name: token
     - parameter functionId: (path)  
     - parameter updateFunctionV1Input: (body)  
     - returns: RequestBuilder<UpdateFunction200Response> 
     */
    open class func updateFunctionWithRequestBuilder(functionId: String, updateFunctionV1Input: UpdateFunctionV1Input) -> RequestBuilder<UpdateFunction200Response> {
        var localVariablePath = "/functions/{functionId}"
        let functionIdPreEscape = "\(APIHelper.mapValueToPathItem(functionId))"
        let functionIdPostEscape = functionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{functionId}", with: functionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateFunctionV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateFunction200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
