//
//  GlossPerson.swift
//  ParsingJSON3rdParty
//
//  Created by Kyle Lee on 5/7/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation
import Gloss

struct GlossPerson {
    let name: String
    let location: String
    let company: String
    
    init?(data: Data) {
        
        let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [[String: Any]]
        let user = json[2]
        
        self.name = "name" <~~ user ?? "NAME ERROR"
        let lat = "address.geo.lat" <~~ user ?? "LAT ERROR"
        let long = "address.geo.lng" <~~ user ?? "LONG ERROR"
        self.location = "Lat: \(lat) Long: \(long)"
        let company = "company.name" <~~ user ?? "COMPANY ERROR"
        self.company = company
    }
}
