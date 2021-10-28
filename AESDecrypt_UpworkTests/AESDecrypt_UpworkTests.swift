//
//  AESDecrypt_UpworkTests.swift
//  AESDecrypt_UpworkTests
//
//  Created by twizzyindy on 18/05/2021.
//

import XCTest
@testable import AESDecrypt_Upwork


class AESDecrypt_UpworkTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let string = EncryptionUtil.decrypt(b64_text: "BwCmmTBfWfL1r90qGLVBqICENh13QyI7Mks1ToNMGoY=")
        XCTAssertEqual(string, "myLife")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
