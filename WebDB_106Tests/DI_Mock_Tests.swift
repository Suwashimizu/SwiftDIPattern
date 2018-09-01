//
//  DI_Mock_Tests.swift
//  WebDB_106
//
//  Created by kane kou on 2018/09/01.
//  Copyright © 2018年 suwashimizu. All rights reserved.
//

import XCTest
@testable import WebDB_106

class TestViewController:UIViewController , Injectable {
    static func make(withDependency dependency: APIClient) -> Self {
        fatalError("make has not been implemented")
    }
    
    typealias Dependency = APIClient
    private let apiClient: APIClient
    
    var items:[String] = []
    
    init(with dependency:Dependency){
        self.apiClient = dependency
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func request(){
        let req = MockRequest()
        apiClient
            .response(from:req) { [weak self] response in
                self?.items = response
        }
    }
}

class DI_Mock_Tests: XCTestCase {
    
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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let viewController = TestViewController.init(with: MockAPIClient())
        
        XCTAssertNotNil(viewController)
        XCTAssertTrue(viewController.items.isEmpty)
        viewController.request()
        XCTAssertEqual(viewController.items, ["test","test2"])
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
