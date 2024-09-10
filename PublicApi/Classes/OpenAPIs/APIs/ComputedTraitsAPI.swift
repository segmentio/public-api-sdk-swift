//
// ComputedTraitsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ComputedTraitsAPI {

    /**
     Create Computed Trait
     
     - parameter spaceId: (path)  
     - parameter createComputedTraitAlphaInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createComputedTrait(spaceId: String, createComputedTraitAlphaInput: CreateComputedTraitAlphaInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateComputedTrait200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createComputedTraitWithRequestBuilder(spaceId: spaceId, createComputedTraitAlphaInput: createComputedTraitAlphaInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Computed Trait
     - POST /spaces/{spaceId}/computed-traits
     - Creates a Computed Trait  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Computed Trait feature enabled. Please reach out to your customer success manager for more information.  • When called, this endpoint may generate the `Computed Trait Created` event in the [audit trail](/tag/Audit-Trail).  Note: The definition for a Computed Trait created using the API is not editable through the Segment App.   The rate limit for this endpoint is 10 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter createComputedTraitAlphaInput: (body)  
     - returns: RequestBuilder<CreateComputedTrait200Response> 
     */
    open class func createComputedTraitWithRequestBuilder(spaceId: String, createComputedTraitAlphaInput: CreateComputedTraitAlphaInput) -> RequestBuilder<CreateComputedTrait200Response> {
        var localVariablePath = "/spaces/{spaceId}/computed-traits"
        let spaceIdPreEscape = "\(APIHelper.mapValueToPathItem(spaceId))"
        let spaceIdPostEscape = spaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{spaceId}", with: spaceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createComputedTraitAlphaInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateComputedTrait200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Computed Trait
     
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getComputedTrait(spaceId: String, id: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetComputedTrait200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getComputedTraitWithRequestBuilder(spaceId: spaceId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Computed Trait
     - GET /spaces/{spaceId}/computed-traits/{id}
     - Returns the Computed Trait by id and spaceId  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Computed Trait feature enabled. Please reach out to your customer success manager for more information.   The rate limit for this endpoint is 100 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - returns: RequestBuilder<GetComputedTrait200Response> 
     */
    open class func getComputedTraitWithRequestBuilder(spaceId: String, id: String) -> RequestBuilder<GetComputedTrait200Response> {
        var localVariablePath = "/spaces/{spaceId}/computed-traits/{id}"
        let spaceIdPreEscape = "\(APIHelper.mapValueToPathItem(spaceId))"
        let spaceIdPostEscape = spaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{spaceId}", with: spaceIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<GetComputedTrait200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Computed Traits
     
     - parameter spaceId: (path)  
     - parameter pagination: (query) Information about the pagination of this response.  [See pagination](https://docs.segmentapis.com/tag/Pagination/#section/Pagination-parameters) for more info.  This parameter exists in alpha. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listComputedTraits(spaceId: String, pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListComputedTraits200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listComputedTraitsWithRequestBuilder(spaceId: spaceId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Computed Traits
     - GET /spaces/{spaceId}/computed-traits
     - Returns Computed Traits by spaceId.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Computed Trait feature enabled. Please reach out to your customer success manager for more information.   The rate limit for this endpoint is 25 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter pagination: (query) Information about the pagination of this response.  [See pagination](https://docs.segmentapis.com/tag/Pagination/#section/Pagination-parameters) for more info.  This parameter exists in alpha. (optional)
     - returns: RequestBuilder<ListComputedTraits200Response> 
     */
    open class func listComputedTraitsWithRequestBuilder(spaceId: String, pagination: PaginationInput? = nil) -> RequestBuilder<ListComputedTraits200Response> {
        var localVariablePath = "/spaces/{spaceId}/computed-traits"
        let spaceIdPreEscape = "\(APIHelper.mapValueToPathItem(spaceId))"
        let spaceIdPostEscape = spaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{spaceId}", with: spaceIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<ListComputedTraits200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Remove Computed Trait from Space
     
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removeComputedTraitFromSpace(spaceId: String, id: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: RemoveComputedTraitFromSpace200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return removeComputedTraitFromSpaceWithRequestBuilder(spaceId: spaceId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove Computed Trait from Space
     - DELETE /spaces/{spaceId}/computed-traits/{id}
     - Deletes a Computed Trait by id and spaceId.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Computed Trait feature enabled. Please reach out to your customer success manager for more information.  • When called, this endpoint may generate the `Computed Trait Deleted` event in the [audit trail](/tag/Audit-Trail).   The rate limit for this endpoint is 20 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - returns: RequestBuilder<RemoveComputedTraitFromSpace200Response> 
     */
    open class func removeComputedTraitFromSpaceWithRequestBuilder(spaceId: String, id: String) -> RequestBuilder<RemoveComputedTraitFromSpace200Response> {
        var localVariablePath = "/spaces/{spaceId}/computed-traits/{id}"
        let spaceIdPreEscape = "\(APIHelper.mapValueToPathItem(spaceId))"
        let spaceIdPostEscape = spaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{spaceId}", with: spaceIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<RemoveComputedTraitFromSpace200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Computed Trait for Space
     
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - parameter updateComputedTraitForSpaceAlphaInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateComputedTraitForSpace(spaceId: String, id: String, updateComputedTraitForSpaceAlphaInput: UpdateComputedTraitForSpaceAlphaInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateComputedTraitForSpace200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateComputedTraitForSpaceWithRequestBuilder(spaceId: spaceId, id: id, updateComputedTraitForSpaceAlphaInput: updateComputedTraitForSpaceAlphaInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Computed Trait for Space
     - PATCH /spaces/{spaceId}/computed-traits/{id}
     - Updates the enabled status for a computed trait.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Computed Trait feature enabled. Please reach out to your customer success manager for more information.  • When called, this endpoint may generate the `Computed Trait Modified` event in the [audit trail](/tag/Audit-Trail).  • Note that when a Computed Trait is updated, the Computed Trait will be locked from future edits until the changes have been incorporated. You can find more information [in the Segment docs](https://segment-docs.netlify.app/docs/unify/traits/computed-traits/#editing-realtime-traits).  Note: The definition for a Computed Trait updated using the API is not editable through the Segment App.   The rate limit for this endpoint is 10 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - parameter updateComputedTraitForSpaceAlphaInput: (body)  
     - returns: RequestBuilder<UpdateComputedTraitForSpace200Response> 
     */
    open class func updateComputedTraitForSpaceWithRequestBuilder(spaceId: String, id: String, updateComputedTraitForSpaceAlphaInput: UpdateComputedTraitForSpaceAlphaInput) -> RequestBuilder<UpdateComputedTraitForSpace200Response> {
        var localVariablePath = "/spaces/{spaceId}/computed-traits/{id}"
        let spaceIdPreEscape = "\(APIHelper.mapValueToPathItem(spaceId))"
        let spaceIdPostEscape = spaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{spaceId}", with: spaceIdPostEscape, options: .literal, range: nil)
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateComputedTraitForSpaceAlphaInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateComputedTraitForSpace200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
