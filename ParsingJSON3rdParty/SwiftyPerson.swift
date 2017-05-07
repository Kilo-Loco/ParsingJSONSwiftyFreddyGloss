//
//  SwiftyPerson.swift
//  ParsingJSON3rdParty
//
//  Created by Kyle Lee on 5/7/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation
import SwiftyJSON

struct SwiftyPerson {
    let name: String
    let location: String
    let company: String
    
    init?(data: Data) {
        
        let json = JSON(data: data)
        
        guard let name = json[0]["name"].string,
            let lat = json[0]["address"]["geo"]["lat"].string,
            let long = json[0]["address"]["geo"]["lng"].string,
            let company = json[0]["company"]["name"].string
            else { return nil }
        
        self.name = name
        self.location = "Lat: \(lat) Long: \(long)"
        self.company = company
    }
    
}
