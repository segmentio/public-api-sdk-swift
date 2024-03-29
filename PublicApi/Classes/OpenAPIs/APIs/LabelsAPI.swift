//
// LabelsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class LabelsAPI {

    /**
     Create Label
     
     - parameter createLabelV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createLabel(createLabelV1Input: CreateLabelV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateLabel201Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createLabelWithRequestBuilder(createLabelV1Input: createLabelV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Label
     - POST /labels
     - Creates a new label.    • When called, this endpoint may generate the `Label Created` event in the [audit trail](/tag/Audit-Trail).          The rate limit for this endpoint is 60 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter createLabelV1Input: (body)  
     - returns: RequestBuilder<CreateLabel201Response> 
     */
    open class func createLabelWithRequestBuilder(createLabelV1Input: CreateLabelV1Input) -> RequestBuilder<CreateLabel201Response> {
        let localVariablePath = "/labels"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createLabelV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateLabel201Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Label
     
     - parameter key: (path)  
     - parameter value: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteLabel(key: String, value: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DeleteLabel200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteLabelWithRequestBuilder(key: key, value: value).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Label
     - DELETE /labels/{key}/{value}
     - Deletes a label.    • When called, this endpoint may generate the `Label Deleted` event in the [audit trail](/tag/Audit-Trail).          The rate limit for this endpoint is 60 requests per minute, which is lower than the default due to access pattern restrictions. Once reached, this endpoint will respond with the 429 HTTP status code with headers indicating the limit parameters. See [Rate Limiting](/#tag/Rate-Limits) for more information.
     - BASIC:
       - type: http
       - name: token
     - parameter key: (path)  
     - parameter value: (path)  
     - returns: RequestBuilder<DeleteLabel200Response> 
     */
    open class func deleteLabelWithRequestBuilder(key: String, value: String) -> RequestBuilder<DeleteLabel200Response> {
        var localVariablePath = "/labels/{key}/{value}"
        let keyPreEscape = "\(APIHelper.mapValueToPathItem(key))"
        let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
        let valuePreEscape = "\(APIHelper.mapValueToPathItem(value))"
        let valuePostEscape = valuePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{value}", with: valuePostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeleteLabel200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Labels
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listLabels(apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListLabels200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listLabelsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Labels
     - GET /labels
     - Returns a list of all available labels.
     - BASIC:
       - type: http
       - name: token
     - returns: RequestBuilder<ListLabels200Response> 
     */
    open class func listLabelsWithRequestBuilder() -> RequestBuilder<ListLabels200Response> {
        let localVariablePath = "/labels"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListLabels200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
