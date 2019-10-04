//
//  HelloSnapshotTests.swift
//  HelloSnapshotTests
//
//  Created by Tashiro Tomohiro on 2019/10/04.
//  Copyright © 2019 weathernews. All rights reserved.
//

import FBSnapshotTestCase
@testable import HelloSnapshot

class HelloSnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        folderName = "StartUp"
        fileNameOptions = [ .device, .OS, .screenSize, .screenScale ]
        //recordMode = true
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testStartupScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateInitialViewController() else { fatalError() }
        vc.loadViewIfNeeded()
        vc.view.layoutIfNeeded()
        FBSnapshotVerifyView(vc.view)

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
