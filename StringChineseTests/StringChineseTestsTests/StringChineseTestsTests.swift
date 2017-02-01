//
//  StringChineseTestsTests.swift
//  StringChineseTestsTests
//
//  Created by Niklas Berglund on 2017-02-01.
//  Copyright © 2017 Klurig. All rights reserved.
//

import XCTest
@testable import StringChineseTests

class StringChineseTestsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSimplifiedChineseText() {
        // Excerpt from http://www.gutenberg.org/cache/epub/25328/pg25328.html
        let text = "第六則 大和尚假意超昇 是日也，天朗氣清，涼風洊至。只見棚上豆花開遍，中間卻有幾枝，結成蓓蓓蕾蕾相 似許多豆莢。那些孩子看見嚷道：『好了，上邊結成豆了。』棚下就有人伸頭縮頸將 要彩他。眾人道：『新生豆莢是難得的。』主人道：『待我彩他下來，先煮熟了。今 日有人說得好故事的，就請他吃。』眾人道：『有理，有理。』棚下襬著一張椅子， 中間走出一個少年道：『今日待我坐在椅上，說個世情中有最不服人的一段話頭，叫 列位聽了猛然想著也要痛恨起來。"
        
        XCTAssert(text.isChinese(), "Chinese text identified as Chinese")
        XCTAssert(text.chinesePercentage() > 90.0, "Chinese text identified as >90% Chinese")
    }
}
