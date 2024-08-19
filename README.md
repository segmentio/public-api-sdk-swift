# Segment Public API Swift SDK

:warning: This SDK is currently released as [Public Beta](https://segment.com/legal/first-access-beta-preview/). Its use in critical systems is discouraged, but [feedback is welcome](#contributing).

## Overview

The Segment Public API helps you manage your Segment Workspaces and its resources. You can use the API to perform CRUD (create, read, update, delete) operations at no extra charge. This includes working with resources such as Sources, Destinations, Warehouses, Tracking Plans, and the Segment Destinations and Sources Catalogs. The full documentation is available at [https://docs.segmentapis.com](https://docs.segmentapis.com).

All endpoints in the API follow REST conventions and use standard HTTP methods. Different URL endpoints represent different resources in a Workspace.

See the next sections for more information on how to use the Segment Public API Swift SDK.

Latest API and SDK version: 53.1.0

## Installation

Add the following entry to your `Package.swift` file:

```swift
.package(name: "PublicApi", url: "git@github.com:segmentio/public-api-sdk-swift.git", branch: "master")
```

You are now ready to start making calls to Public API!

## Example

```swift
import PublicApi

PublicApiAPI.basePath = "https://api.segmentapis.build"
PublicApiAPI.customHeaders = ["Authorization": "Bearer <TOKEN>"]

SourcesAPI.listSources(pagination: PaginationInput(count: 10), completion: { data, error in
    if error != nil {
        print(error!)
    }

    if data != nil {
        print("\n These are the sources:")
        print(data!.data!.sources)
    }
})
```

## Contributing

The contents of this repository are automatically generated, so we can't take contributions from external developers. If you have any issues with this SDK, please raise an issue or reach out to friends@segment.com instead of opening a pull request. Pull requests will not be reviewed.
