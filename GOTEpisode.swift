//
//  GOTEpisode.swift
//  AC3.2-GameOfThrones
//
//  Created by Erica Y Stevens on 10/13/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

//Each instance of this class holds one episode

class GOTEpisode {
    let name: String
    let number: Int
    let airdate: String
    let summary: String
    let season: Int
    let episodeLink: String
    let episodeImageURL: [String:String]
    
    init(name: String, number: Int, airdate: String, summary: String, season: Int, episodeLink: String, episodeImageURL: [String:String]) {
        self.name = name
        self.number = number
        self.airdate = airdate
        self.summary = summary
        self.season = season
        self.episodeLink = episodeLink
        self.episodeImageURL = episodeImageURL
    }
    
    convenience init?(withDict dict: [String:Any]) {
        if let name = dict["name"] as? String,
            let number = dict["number"] as? Int,
            let airdate = dict["airdate"] as? String,
            let summary = dict["summary"] as? String,
            let season = dict["season"] as? Int,
            let episodeLink = dict["url"] as? String,
            let episodeImageURL = dict["image"] as? [String:String]{
            self.init(name: name, number: number, airdate: airdate, summary: summary, season: season, episodeLink: episodeLink, episodeImageURL: episodeImageURL)
        }
        else {
            return nil
        }
    }
}
