//
//  GOT.swift
//  AC3.2-GameOfThrones
//
//  Created by Erica Y Stevens on 10/15/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

class GOT {
    let premiere: String
    let language: String
    let type: String
    let status: String
    let showSummary: String
    //let rating: Double
    let runtime: Int
    
    init(premiere: String, language: String, type: String, status: String, showSummary: String, runtime: Int) {
        self.premiere = premiere
        self.language = language
        self.type = type
        self.status = status
        self.showSummary = showSummary
        //self.rating = rating
        self.runtime = runtime
    }
    
    convenience init?(withDict dict: [String:Any]) {
        if let premiere = dict["premiered"] as? String,
        let language = dict["language"] as? String,
        let type = dict["type"] as? String,
        let status = dict["status"] as? String,
        let showSummary = dict["summary"] as? String,
        //let rating = dict["rating"] as? String,
            let runtime = dict["runtime"] as? Int {
            self.init(premiere: premiere, language: language, type: type, status: status, showSummary: showSummary, runtime: runtime)
        } else {
            return nil
        }
    }
}

