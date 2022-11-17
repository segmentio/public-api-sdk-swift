//
// DeletionAndSuppressionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DeletionAndSuppressionAPI {

    /**
     Create Cloud Source Regulation
     
     - parameter sourceId: (path)  
     - parameter createCloudSourceRegulationV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createCloudSourceRegulation(sourceId: String, createCloudSourceRegulationV1Input: CreateCloudSourceRegulationV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateCloudSourceRegulation200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createCloudSourceRegulationWithRequestBuilder(sourceId: sourceId, createCloudSourceRegulationV1Input: createCloudSourceRegulationV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Cloud Source Regulation
     - POST /regulations/cloudsources/{sourceId}
     - Creates a Source-scoped regulation.        Config API omitted fields: - `attributes`, - `userAgent`       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter createCloudSourceRegulationV1Input: (body)  
     - returns: RequestBuilder<CreateCloudSourceRegulation200Response> 
     */
    open class func createCloudSourceRegulationWithRequestBuilder(sourceId: String, createCloudSourceRegulationV1Input: CreateCloudSourceRegulationV1Input) -> RequestBuilder<CreateCloudSourceRegulation200Response> {
        var localVariablePath = "/regulations/cloudsources/{sourceId}"
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createCloudSourceRegulationV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateCloudSourceRegulation200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Source Regulation
     
     - parameter sourceId: (path)  
     - parameter createSourceRegulationV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createSourceRegulation(sourceId: String, createSourceRegulationV1Input: CreateSourceRegulationV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateSourceRegulation200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createSourceRegulationWithRequestBuilder(sourceId: sourceId, createSourceRegulationV1Input: createSourceRegulationV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Source Regulation
     - POST /regulations/sources/{sourceId}
     - Creates a Source-scoped regulation.    When called, this endpoint may generate the `Source Regulation Created` [Audit Trail](/tag/Audit-Trail) event.  Config API omitted fields: - `attributes`, - `userAgent`       
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter createSourceRegulationV1Input: (body)  
     - returns: RequestBuilder<CreateSourceRegulation200Response> 
     */
    open class func createSourceRegulationWithRequestBuilder(sourceId: String, createSourceRegulationV1Input: CreateSourceRegulationV1Input) -> RequestBuilder<CreateSourceRegulation200Response> {
        var localVariablePath = "/regulations/sources/{sourceId}"
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createSourceRegulationV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateSourceRegulation200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Workspace Regulation
     
     - parameter createWorkspaceRegulationV1Input: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createWorkspaceRegulation(createWorkspaceRegulationV1Input: CreateWorkspaceRegulationV1Input, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: CreateWorkspaceRegulation200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createWorkspaceRegulationWithRequestBuilder(createWorkspaceRegulationV1Input: createWorkspaceRegulationV1Input).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Workspace Regulation
     - POST /regulations
     - Creates a Workspace-scoped regulation.    When called, this endpoint may generate the `Workspace Regulation Created` [Audit Trail](/tag/Audit-Trail) event.  Config API omitted fields: - `attributes`, - `userAgent`       
     - BASIC:
       - type: http
       - name: token
     - parameter createWorkspaceRegulationV1Input: (body)  
     - returns: RequestBuilder<CreateWorkspaceRegulation200Response> 
     */
    open class func createWorkspaceRegulationWithRequestBuilder(createWorkspaceRegulationV1Input: CreateWorkspaceRegulationV1Input) -> RequestBuilder<CreateWorkspaceRegulation200Response> {
        let localVariablePath = "/regulations"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createWorkspaceRegulationV1Input)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateWorkspaceRegulation200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Regulation
     
     - parameter regulateId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteRegulation(regulateId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: DeleteRegulation200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteRegulationWithRequestBuilder(regulateId: regulateId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Regulation
     - DELETE /regulations/{regulateId}
     - Deletes a regulation from the Workspace. The regulation must be in the initialized state to be deleted.    When called, this endpoint may generate the `Regulation Deleted` [Audit Trail](/tag/Audit-Trail) event.       
     - BASIC:
       - type: http
       - name: token
     - parameter regulateId: (path)  
     - returns: RequestBuilder<DeleteRegulation200Response> 
     */
    open class func deleteRegulationWithRequestBuilder(regulateId: String) -> RequestBuilder<DeleteRegulation200Response> {
        var localVariablePath = "/regulations/{regulateId}"
        let regulateIdPreEscape = "\(APIHelper.mapValueToPathItem(regulateId))"
        let regulateIdPostEscape = regulateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{regulateId}", with: regulateIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeleteRegulation200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Regulation
     
     - parameter regulateId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getRegulation(regulateId: String, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: GetRegulation200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getRegulationWithRequestBuilder(regulateId: regulateId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Regulation
     - GET /regulations/{regulateId}
     - Gets a regulation from the Workspace.        Config API omitted fields: - `parent`       
     - BASIC:
       - type: http
       - name: token
     - parameter regulateId: (path)  
     - returns: RequestBuilder<GetRegulation200Response> 
     */
    open class func getRegulationWithRequestBuilder(regulateId: String) -> RequestBuilder<GetRegulation200Response> {
        var localVariablePath = "/regulations/{regulateId}"
        let regulateIdPreEscape = "\(APIHelper.mapValueToPathItem(regulateId))"
        let regulateIdPostEscape = regulateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{regulateId}", with: regulateIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetRegulation200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter status
     */
    public enum Status_listRegulationsFromSource: String, CaseIterable {
        case failed = "FAILED"
        case finished = "FINISHED"
        case initialized = "INITIALIZED"
        case invalid = "INVALID"
        case notSupported = "NOT_SUPPORTED"
        case partialSuccess = "PARTIAL_SUCCESS"
        case running = "RUNNING"
    }

    /**
     * enum for parameter regulationTypes
     */
    public enum RegulationTypes_listRegulationsFromSource: String, CaseIterable {
        case bulkDeleteOnly = "BULK_DELETE_ONLY"
        case deleteInternal = "DELETE_INTERNAL"
        case deleteOnly = "DELETE_ONLY"
        case suppressOnly = "SUPPRESS_ONLY"
        case suppressWithDelete = "SUPPRESS_WITH_DELETE"
        case unsuppress = "UNSUPPRESS"
    }

    /**
     List Regulations from Source
     
     - parameter sourceId: (path)  
     - parameter pagination: (query) Pagination parameters.  This parameter exists in v1. 
     - parameter status: (query) The status on which to filter returned regulations.  This parameter exists in v1. (optional)
     - parameter regulationTypes: (query) The regulation types on which to filter returned regulations.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listRegulationsFromSource(sourceId: String, pagination: PaginationInput, status: Status_listRegulationsFromSource? = nil, regulationTypes: [RegulationTypes_listRegulationsFromSource]? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListRegulationsFromSource200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listRegulationsFromSourceWithRequestBuilder(sourceId: sourceId, pagination: pagination, status: status, regulationTypes: regulationTypes).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Regulations from Source
     - GET /regulations/sources/{sourceId}
     - Lists all Source-scoped regulations.
     - BASIC:
       - type: http
       - name: token
     - parameter sourceId: (path)  
     - parameter pagination: (query) Pagination parameters.  This parameter exists in v1. 
     - parameter status: (query) The status on which to filter returned regulations.  This parameter exists in v1. (optional)
     - parameter regulationTypes: (query) The regulation types on which to filter returned regulations.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<ListRegulationsFromSource200Response> 
     */
    open class func listRegulationsFromSourceWithRequestBuilder(sourceId: String, pagination: PaginationInput, status: Status_listRegulationsFromSource? = nil, regulationTypes: [RegulationTypes_listRegulationsFromSource]? = nil) -> RequestBuilder<ListRegulationsFromSource200Response> {
        var localVariablePath = "/regulations/sources/{sourceId}"
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "status": status?.encodeToJSON(),
            "regulationTypes": regulationTypes?.encodeToJSON(),
            "pagination": pagination.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListRegulationsFromSource200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Suppressions
     
     - parameter pagination: (query) Pagination parameters.  This parameter exists in v1. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listSuppressions(pagination: PaginationInput, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListSuppressions200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listSuppressionsWithRequestBuilder(pagination: pagination).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Suppressions
     - GET /suppressions
     - Lists all suppressions in a given Workspace.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Pagination parameters.  This parameter exists in v1. 
     - returns: RequestBuilder<ListSuppressions200Response> 
     */
    open class func listSuppressionsWithRequestBuilder(pagination: PaginationInput) -> RequestBuilder<ListSuppressions200Response> {
        let localVariablePath = "/suppressions"
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

        let localVariableRequestBuilder: RequestBuilder<ListSuppressions200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter status
     */
    public enum Status_listWorkspaceRegulations: String, CaseIterable {
        case failed = "FAILED"
        case finished = "FINISHED"
        case initialized = "INITIALIZED"
        case invalid = "INVALID"
        case notSupported = "NOT_SUPPORTED"
        case partialSuccess = "PARTIAL_SUCCESS"
        case running = "RUNNING"
    }

    /**
     * enum for parameter regulationTypes
     */
    public enum RegulationTypes_listWorkspaceRegulations: String, CaseIterable {
        case bulkDeleteOnly = "BULK_DELETE_ONLY"
        case deleteInternal = "DELETE_INTERNAL"
        case deleteOnly = "DELETE_ONLY"
        case suppressOnly = "SUPPRESS_ONLY"
        case suppressWithDelete = "SUPPRESS_WITH_DELETE"
        case unsuppress = "UNSUPPRESS"
    }

    /**
     List Workspace Regulations
     
     - parameter pagination: (query) Pagination parameters.  This parameter exists in v1. 
     - parameter status: (query) The status on which to filter the returned regulations.  This parameter exists in v1. (optional)
     - parameter regulationTypes: (query) The regulation types on which to filter returned regulations.  This parameter exists in v1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listWorkspaceRegulations(pagination: PaginationInput, status: Status_listWorkspaceRegulations? = nil, regulationTypes: [RegulationTypes_listWorkspaceRegulations]? = nil, apiResponseQueue: DispatchQueue = PublicApiAPI.apiResponseQueue, completion: @escaping ((_ data: ListWorkspaceRegulations200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listWorkspaceRegulationsWithRequestBuilder(pagination: pagination, status: status, regulationTypes: regulationTypes).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Workspace Regulations
     - GET /regulations
     - Lists all Workspace-scoped regulations.
     - BASIC:
       - type: http
       - name: token
     - parameter pagination: (query) Pagination parameters.  This parameter exists in v1. 
     - parameter status: (query) The status on which to filter the returned regulations.  This parameter exists in v1. (optional)
     - parameter regulationTypes: (query) The regulation types on which to filter returned regulations.  This parameter exists in v1. (optional)
     - returns: RequestBuilder<ListWorkspaceRegulations200Response> 
     */
    open class func listWorkspaceRegulationsWithRequestBuilder(pagination: PaginationInput, status: Status_listWorkspaceRegulations? = nil, regulationTypes: [RegulationTypes_listWorkspaceRegulations]? = nil) -> RequestBuilder<ListWorkspaceRegulations200Response> {
        let localVariablePath = "/regulations"
        let localVariableURLString = PublicApiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "status": status?.encodeToJSON(),
            "regulationTypes": regulationTypes?.encodeToJSON(),
            "pagination": pagination.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListWorkspaceRegulations200Response>.Type = PublicApiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
