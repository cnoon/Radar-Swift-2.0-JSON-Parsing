//
//  JSONParserTests.swift
//  JSONParserTests
//
//  Created by Christian Noon on 6/11/15.
//  Copyright © 2015 Noondev. All rights reserved.
//

import XCTest

class JSONParserTests: XCTestCase {

    func testExample() {
        let args = ["args": ["foo": "bar"]]
        var json: AnyObject?

        do {
            let data = try NSJSONSerialization.dataWithJSONObject(args, options: NSJSONWritingOptions())
            json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
        } catch {
            print("Not good b/c this should work")
        }

        print(json)
        
        if let args = json?["args"] as? [String: String] { // This is the problem!
//        if let args = json?["args" as NSString] as? [String: String] { // This is the solution
            print(args)
        }
    }
}
