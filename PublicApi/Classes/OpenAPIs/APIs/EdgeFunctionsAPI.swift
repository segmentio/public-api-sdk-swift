//
// EdgeFunctionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class EdgeFunctionsAPI {

    /**
     Create Edge Functions
     
     - parameter sourceId: (path)  
     - parameter createEdgeFunctionsAlphaInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createEdgeFunctions(sourceId: String, createEdgeFunctionsAlphaInput: CreateEdgeFunctionsAlphaInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateEdgeFunctions200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createEdgeFunctionsWithRequestBuilder(sourceId: sourceId, createEdgeFunctionsAlphaInput: createEdgeFunctionsAlphaInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Edge Functions
     - POST /sources/{sourceId}/edge-functions
     - Create EdgeFunctions for your Source, given a valid upload URL for an Edge Functions bundle.  **Note**: In order to successfully call this endpoint, the specified Workspace needs to have the Edge Functions feature enabled. Please reach out to your customer success manager for more information.       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter createEdgeFunctionsAlphaInput: (body)  
     - returns: RequestBuilder<CreateEdgeFunctions200Response> 
     */
    open class func createEdgeFunctionsWithRequestBuilder(sourceId: String, createEdgeFunctionsAlphaInput: CreateEdgeFunctionsAlphaInput) -> RequestBuilder<CreateEdgeFunctions200Response> {
        var localVariablePath = "/sources/{sourceId}/edge-functions"
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createEdgeFunctionsAlphaInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateEdgeFunctions200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Disable Edge Functions
     
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func disableEdgeFunctions(sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DisableEdgeFunctions200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return disableEdgeFunctionsWithRequestBuilder(sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Disable Edge Functions
     - PATCH /sources/{sourceId}/edge-functions/disable
     - Disable Edge Functions for your Source.  **Note**: In order to successfully call this endpoint, the specified Workspace needs to have the Edge Functions feature enabled. Please reach out to your customer success manager for more information.       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - returns: RequestBuilder<DisableEdgeFunctions200Response> 
     */
    open class func disableEdgeFunctionsWithRequestBuilder(sourceId: String) -> RequestBuilder<DisableEdgeFunctions200Response> {
        var localVariablePath = "/sources/{sourceId}/edge-functions/disable"
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

        let localVariableRequestBuilder: RequestBuilder<DisableEdgeFunctions200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Generate Upload URL for Edge Functions
     
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func generateUploadURLForEdgeFunctions(sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GenerateUploadURLForEdgeFunctions200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return generateUploadURLForEdgeFunctionsWithRequestBuilder(sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Generate Upload URL for Edge Functions
     - POST /sources/{sourceId}/edge-functions/upload-url
     - Generate a temporary upload URL, that can be used to upload an Edge Functions bundle.  **Note**: In order to successfully call this endpoint, the specified Workspace needs to have the Edge Functions feature enabled. Please reach out to your customer success manager for more information.       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - returns: RequestBuilder<GenerateUploadURLForEdgeFunctions200Response> 
     */
    open class func generateUploadURLForEdgeFunctionsWithRequestBuilder(sourceId: String) -> RequestBuilder<GenerateUploadURLForEdgeFunctions200Response> {
        var localVariablePath = "/sources/{sourceId}/edge-functions/upload-url"
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

        let localVariableRequestBuilder: RequestBuilder<GenerateUploadURLForEdgeFunctions200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Latest from Edge Functions
     
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getLatestFromEdgeFunctions(sourceId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetLatestFromEdgeFunctions200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getLatestFromEdgeFunctionsWithRequestBuilder(sourceId: sourceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Latest from Edge Functions
     - GET /sources/{sourceId}/edge-functions/latest
     - Get the latest Edge Functions for your Source.  **Note**: In order to successfully call this endpoint, the specified Workspace needs to have the Edge Functions feature enabled. Please reach out to your customer success manager for more information.       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - returns: RequestBuilder<GetLatestFromEdgeFunctions200Response> 
     */
    open class func getLatestFromEdgeFunctionsWithRequestBuilder(sourceId: String) -> RequestBuilder<GetLatestFromEdgeFunctions200Response> {
        var localVariablePath = "/sources/{sourceId}/edge-functions/latest"
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

        let localVariableRequestBuilder: RequestBuilder<GetLatestFromEdgeFunctions200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
