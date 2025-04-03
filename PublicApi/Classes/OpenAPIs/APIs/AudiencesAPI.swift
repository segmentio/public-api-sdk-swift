//
// AudiencesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AudiencesAPI {

    /**
     Create Audience
     
     - parameter spaceId: (path)  
     - parameter createAudienceAlphaInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createAudience(spaceId: String, createAudienceAlphaInput: CreateAudienceAlphaInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateAudience200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createAudienceWithRequestBuilder(spaceId: spaceId, createAudienceAlphaInput: createAudienceAlphaInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Audience
     - POST /spaces/{spaceId}/audiences
     - Creates Audience.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Audience feature enabled. Please reach out to your customer success manager for more information.  • When called, this endpoint may generate the `Audience Created` event in the [audit trail](/tag/Audit-Trail).  Note: The definition for an Audience created using the API is not editable through the Segment App.   The rate limit for this endpoint is 10 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter createAudienceAlphaInput: (body)  
     - returns: RequestBuilder<CreateAudience200Response> 
     */
    open class func createAudienceWithRequestBuilder(spaceId: String, createAudienceAlphaInput: CreateAudienceAlphaInput) -> RequestBuilder<CreateAudience200Response> {
        var localVariablePath = "/spaces/{spaceId}/audiences"
        let spaceIdPreEscape = "\(APIHelper.mapValueToPathItem(spaceId))"
        let spaceIdPostEscape = spaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{spaceId}", with: spaceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAudienceAlphaInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateAudience200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Audience
     
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAudience(spaceId: String, id: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetAudience200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getAudienceWithRequestBuilder(spaceId: spaceId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Audience
     - GET /spaces/{spaceId}/audiences/{id}
     - Returns the Audience by id and spaceId.  • This endpoint is in **Beta** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Audience feature enabled. Please reach out to your customer success manager for more information.   The rate limit for this endpoint is 100 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - returns: RequestBuilder<GetAudience200Response> 
     */
    open class func getAudienceWithRequestBuilder(spaceId: String, id: String) -> RequestBuilder<GetAudience200Response> {
        var localVariablePath = "/spaces/{spaceId}/audiences/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<GetAudience200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Audiences
     
     - parameter spaceId: (path)  
     - parameter pagination: (query) Information about the pagination of this response.  [See pagination](https://docs.segmentapis.com/tag/Pagination/#section/Pagination-parameters) for more info.  This parameter exists in alpha. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listAudiences(spaceId: String, pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListAudiences200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listAudiencesWithRequestBuilder(spaceId: spaceId, pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Audiences
     - GET /spaces/{spaceId}/audiences
     - Returns Audiences by spaceId.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Audience feature enabled. Please reach out to your customer success manager for more information.   The rate limit for this endpoint is 25 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter pagination: (query) Information about the pagination of this response.  [See pagination](https://docs.segmentapis.com/tag/Pagination/#section/Pagination-parameters) for more info.  This parameter exists in alpha. (optional)
     - returns: RequestBuilder<ListAudiences200Response> 
     */
    open class func listAudiencesWithRequestBuilder(spaceId: String, pagination: PaginationInput? = nil) -> RequestBuilder<ListAudiences200Response> {
        var localVariablePath = "/spaces/{spaceId}/audiences"
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

        let localVariableRequestBuilder: RequestBuilder<ListAudiences200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Remove Audience from Space
     
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removeAudienceFromSpace(spaceId: String, id: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: RemoveAudienceFromSpace200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return removeAudienceFromSpaceWithRequestBuilder(spaceId: spaceId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove Audience from Space
     - DELETE /spaces/{spaceId}/audiences/{id}
     - Deletes an Audience by id and spaceId.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Audience feature enabled. Please reach out to your customer success manager for more information.  • When called, this endpoint may generate the `Audience Deleted` event in the [audit trail](/tag/Audit-Trail).   The rate limit for this endpoint is 20 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - returns: RequestBuilder<RemoveAudienceFromSpace200Response> 
     */
    open class func removeAudienceFromSpaceWithRequestBuilder(spaceId: String, id: String) -> RequestBuilder<RemoveAudienceFromSpace200Response> {
        var localVariablePath = "/spaces/{spaceId}/audiences/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<RemoveAudienceFromSpace200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Audience for Space
     
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - parameter updateAudienceForSpaceInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateAudienceForSpace(spaceId: String, id: String, updateAudienceForSpaceInput: UpdateAudienceForSpaceInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateAudienceForSpace200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateAudienceForSpaceWithRequestBuilder(spaceId: spaceId, id: id, updateAudienceForSpaceInput: updateAudienceForSpaceInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Audience for Space
     - PATCH /spaces/{spaceId}/audiences/{id}
     - Updates the Audience.  • This endpoint is in **Alpha** testing.  Please submit any feedback by sending an email to friends@segment.com.   • In order to successfully call this endpoint, the specified Workspace needs to have the Audience feature enabled. Please reach out to your customer success manager for more information.  • When called, this endpoint may generate the `Audience Modified` event in the [audit trail](/tag/Audit-Trail).  • Note that when an Audience is updated, the Audience will be locked from future edits until the changes have been incorporated. You can find more information [in the Segment docs](https://segment-docs.netlify.app/docs/engage/audiences/#editing-realtime-audiences-and-traits).  Note: The definition for an Audience updated using the API is not editable through the Segment App.   The rate limit for this endpoint is 10 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter spaceId: (path)  
     - parameter id: (path)  
     - parameter updateAudienceForSpaceInput: (body)  
     - returns: RequestBuilder<UpdateAudienceForSpace200Response> 
     */
    open class func updateAudienceForSpaceWithRequestBuilder(spaceId: String, id: String, updateAudienceForSpaceInput: UpdateAudienceForSpaceInput) -> RequestBuilder<UpdateAudienceForSpace200Response> {
        var localVariablePath = "/spaces/{spaceId}/audiences/{id}"
        let spaceIdPreEscape = "\(APIHelper.mapValueToPathItem(spaceId))"
        let spaceIdPostEscape = spaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{spaceId}", with: spaceIdPostEscape, options: .literal, range: nil)
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateAudienceForSpaceInput)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateAudienceForSpace200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
