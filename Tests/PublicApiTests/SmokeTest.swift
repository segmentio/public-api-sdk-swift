import Foundation
import XCTest
import PublicApi
import Swifter

var port: UInt16 = 5050
func getPort() -> UInt16 {
    port += 1
    return port
}

class SmokeTests: XCTestCase {
    func testCreateSource() {
        let server = HttpServer()
        server["/sources"] = { request in
            if request.method == "POST" {
                return HttpResponse.ok(.text("""
                    {
                      "data": {
                        "source": {
                          "id": "qQEHquLrjRDN9j1ByrChyn",
                          "slug": "ios",
                          "name": "",
                          "workspaceId": "9aQ1Lj62S4bomZKLF4DPqW",
                          "enabled": true,
                          "writeKeys": ["3YdEudTwjouyC5WPjpbTik"],
                          "metadata": {
                            "id": "UBrsG9RVzw",
                            "slug": "ios",
                            "name": "iOS",
                            "categories": ["Mobile"],
                            "description": "",
                            "logos": {
                              "default": "https://cdn.filepicker.io/api/file/qWgSP5cpS7eeW2voq13u",
                              "alt": "https://cdn.filepicker.io/api/file/qWgSP5cpS7eeW2voq13u"
                            },
                            "options": [],
                            "partnerOwned": false,
                            "status": "PUBLIC",
                            "isCloudEventSource": false
                          },
                          "settings": {},
                          "labels": []
                        }
                      }
                    }
                """))
            }

            return HttpResponse.notFound
        }
        try! server.start(getPort())

        let port = try! server.port()
        PublicApiAPI.basePath = "http://localhost:" + String(port)


        let expectation = self.expectation(description: "Calling Public API")

        SourcesAPI.createSource(createSourceV1Input: CreateSourceV1Input(slug: "ios", enabled: true, metadataId: "UBrsG9RVzw"), completion: { data, error in
            XCTAssertNil(error)
            XCTAssertEqual(data!.data!.source.id, "qQEHquLrjRDN9j1ByrChyn")
            expectation.fulfill()
        })

        waitForExpectations(timeout: 5, handler: nil)
        server.stop()
    }

    func testGetSource() {
        let server = HttpServer()
        server["/sources/qQEHquLrjRDN9j1ByrChyn"] = { request in
            if request.method == "GET" {
                return HttpResponse.ok(.text("""
                    {
                      "data": {
                        "source": {
                          "id": "qQEHquLrjRDN9j1ByrChyn",
                          "slug": "ios",
                          "name": "",
                          "workspaceId": "9aQ1Lj62S4bomZKLF4DPqW",
                          "enabled": true,
                          "writeKeys": ["3YdEudTwjouyC5WPjpbTik"],
                          "metadata": {
                            "id": "UBrsG9RVzw",
                            "slug": "ios",
                            "name": "iOS",
                            "categories": ["Mobile"],
                            "description": "",
                            "logos": {
                              "default": "https://cdn.filepicker.io/api/file/qWgSP5cpS7eeW2voq13u",
                              "alt": "https://cdn.filepicker.io/api/file/qWgSP5cpS7eeW2voq13u"
                            },
                            "options": [],
                            "partnerOwned": false,
                            "status": "PUBLIC",
                            "isCloudEventSource": false
                          },
                          "settings": {},
                          "labels": []
                        }
                      }
                    }
                """))
            }

            return HttpResponse.notFound
        }
        try! server.start(getPort())

        let port = try! server.port()
        PublicApiAPI.basePath = "http://localhost:" + String(port)


        let expectation = self.expectation(description: "Calling Public API")

        SourcesAPI.getSource(sourceId: "qQEHquLrjRDN9j1ByrChyn", completion: { data, error in
            XCTAssertNil(error)
            XCTAssertEqual(data!.data!.source.id, "qQEHquLrjRDN9j1ByrChyn")
            expectation.fulfill()
        })

        waitForExpectations(timeout: 5, handler: nil)
        server.stop()
    }

    func testListSources() {
        let server = HttpServer()
        server["/sources"] = { request in
            if request.method == "GET" {
                return HttpResponse.ok(.text("""
                    {
                      "data": {
                        "sources": [
                          {
                            "id": "qQEHquLrjRDN9j1ByrChyn",
                            "slug": "ios",
                            "name": "",
                            "workspaceId": "9aQ1Lj62S4bomZKLF4DPqW",
                            "enabled": true,
                            "writeKeys": ["3YdEudTwjouyC5WPjpbTik"],
                            "metadata": {
                              "id": "UBrsG9RVzw",
                              "slug": "ios",
                              "name": "iOS",
                              "categories": ["Mobile"],
                              "description": "",
                              "logos": {
                                "default": "https://cdn.filepicker.io/api/file/qWgSP5cpS7eeW2voq13u",
                                "alt": "https://cdn.filepicker.io/api/file/qWgSP5cpS7eeW2voq13u"
                              },
                              "options": [],
                              "partnerOwned": false,
                              "status": "PUBLIC",
                              "isCloudEventSource": false
                            },
                            "settings": {},
                            "labels": []
                          },
                          {
                            "id": "rh5BDZp6QDHvXFCkibm1pR",
                            "slug": "web",
                            "name": "",
                            "workspaceId": "9aQ1Lj62S4bomZKLF4DPqW",
                            "enabled": true,
                            "writeKeys": ["dfL8upyPumumx23SjgwHjs"],
                            "metadata": {
                              "id": "IqDTy1TpoU",
                              "slug": "javascript",
                              "name": "Javascript",
                              "categories": ["Website"],
                              "description": "This is our most flexible and powerful tracking system, using analytics.js.  Track and analyze information about your visitors and customers, and every action that they take, in any of our 140 integrations, business intelligence tools, or directly with SQL tools.",
                              "logos": {
                                "default": "https://cdn.filepicker.io/api/file/aRgo4XJQZausZxD4gZQq",
                                "alt": "https://cdn.filepicker.io/api/file/aRgo4XJQZausZxD4gZQq",
                                "mark": "https://cdn.filepicker.io/api/file/kBpmEoSSaakidAvoFmzd"
                              },
                              "options": [],
                              "partnerOwned": false,
                              "status": "PUBLIC",
                              "isCloudEventSource": false
                            },
                            "settings": {},
                            "labels": []
                          }
                        ],
                        "pagination": { "current": "MA==", "totalEntries": 2 }
                      }
                    }
                """))
            }

            return HttpResponse.notFound
        }
        try! server.start(getPort())

        let port = try! server.port()
        PublicApiAPI.basePath = "http://localhost:" + String(port)


        let expectation = self.expectation(description: "Calling Public API")

        SourcesAPI.listSources(pagination: PaginationInput(count: 2), completion: { data, error in
            XCTAssertNil(error)
            XCTAssertEqual(data!.data!.sources.count, 2)
            expectation.fulfill()
        })

        waitForExpectations(timeout: 5, handler: nil)
        server.stop()
    }

    func testUpdateSource() {
        let server = HttpServer()
        server["/sources/piTVHEYNrRgBMM1uQGCPbK"] = { request in
            if request.method == "PATCH" {
                return HttpResponse.ok(.text("""
                    {
                      "data": {
                        "source": {
                          "id": "piTVHEYNrRgBMM1uQGCPbK",
                          "slug": "my-new-slug",
                          "name": "My updated source",
                          "workspaceId": "9aQ1Lj62S4bomZKLF4DPqW",
                          "enabled": false,
                          "writeKeys": ["VkV0fu40bXSSNJtqnQEzonkzLOWj2llN"],
                          "metadata": {
                            "id": "IqDTy1TpoU",
                            "slug": "javascript",
                            "name": "Javascript",
                            "categories": ["Website"],
                            "description": "This is our most flexible and powerful tracking system, using analytics.js.  Track and analyze information about your visitors and customers, and every action that they take, in any of our 140 integrations, business intelligence tools, or directly with SQL tools.",
                            "logos": {
                              "default": "https://cdn.filepicker.io/api/file/aRgo4XJQZausZxD4gZQq",
                              "alt": "https://cdn.filepicker.io/api/file/aRgo4XJQZausZxD4gZQq",
                              "mark": "https://cdn.filepicker.io/api/file/kBpmEoSSaakidAvoFmzd"
                            },
                            "options": [],
                            "partnerOwned": false,
                            "status": "PUBLIC",
                            "isCloudEventSource": false
                          },
                          "settings": {},
                          "labels": []
                        }
                      }
                    }
                """))
            }

            return HttpResponse.notFound
        }
        try! server.start(getPort())

        let port = try! server.port()
        PublicApiAPI.basePath = "http://localhost:" + String(port)


        let expectation = self.expectation(description: "Calling Public API")

        SourcesAPI.updateSource(sourceId: "piTVHEYNrRgBMM1uQGCPbK", updateSourceV1Input: UpdateSourceV1Input(name: "My updated source", enabled: false, slug: "my-new-slug"), completion: { data, error in
            XCTAssertNil(error)
            XCTAssertEqual(data!.data!.source.id, "piTVHEYNrRgBMM1uQGCPbK")
            expectation.fulfill()
        })

        waitForExpectations(timeout: 5, handler: nil)
        server.stop()
    }

    func testDeleteSource() {
        let server = HttpServer()
        server["/sources/piTVHEYNrRgBMM1uQGCPbK"] = { request in
            if request.method == "DELETE" {
                return HttpResponse.ok(.text("""
                    { "data": { "status": "SUCCESS" } }
                """))
            }

            return HttpResponse.notFound
        }
        try! server.start(getPort())

        let port = try! server.port()
        PublicApiAPI.basePath = "http://localhost:" + String(port)


        let expectation = self.expectation(description: "Calling Public API")

        SourcesAPI.deleteSource(sourceId: "piTVHEYNrRgBMM1uQGCPbK", completion: { data, error in
            XCTAssertNil(error)
            XCTAssertEqual(data!.data!.status, DeleteSourceV1Output.Status.success)
            expectation.fulfill()
        })

        waitForExpectations(timeout: 5, handler: nil)
        server.stop()
    }
}
