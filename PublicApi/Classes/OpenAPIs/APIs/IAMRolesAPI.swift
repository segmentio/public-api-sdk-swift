//
// IAMRolesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class IAMRolesAPI {

    /**
     List Roles
     
     - parameter pagination: (query) Pagination for roles.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listRoles(pagination: PaginationInput? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListRoles200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listRolesWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Roles
     - GET /roles
     - Returns a list of Roles available to apply to permissions for users and/or groups.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Pagination for roles.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<ListRoles200Response> 
     */
    open class func listRolesWithRequestBuilder(pagination: PaginationInput? = nil) -> RequestBuilder<ListRoles200Response> {
        let localVariablePath = "/roles"
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

        let localVariableRequestBuilder: RequestBuilder<ListRoles200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
