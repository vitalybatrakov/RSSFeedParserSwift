//
//  FeedSourceStorageMock.swift
//  RSSReaderSwiftTests
//
//  Created by Vitaly Batrakov on 31.07.2018.
//  Copyright © 2018 vbat. All rights reserved.
//

import Foundation
@testable import RSSReaderSwift

class FeedSourceStorageMock: FeedSourceStorage {
    var expectedFeedSources: [FeedSource]!
    var getSourcesCalled = false
    var saveSourceCalled = false
    var addSourceCalled = false
    
    func getSources() -> [FeedSource] {
        getSourcesCalled = true
        return expectedFeedSources
    }
    
    func save(sources: [FeedSource]) {
        saveSourceCalled = true
    }
    
    func add(source: FeedSource) {
        addSourceCalled = true
    }
    
}