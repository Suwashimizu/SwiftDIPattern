//
//  APIMock.swift
//  WebDB_106
//
//  Created by kane kou on 2018/09/01.
//  Copyright © 2018年 suwashimizu. All rights reserved.
//

import Foundation

struct MockRequest:APIRequest {
    typealias Response = [String]
}

class MockAPIClient:APIClient {
    func response<R:APIRequest>(
        from request:R,
        completion: ((R.Response) -> ())?) {
        completion?(["test","test2"] as! R.Response)
    }
}
