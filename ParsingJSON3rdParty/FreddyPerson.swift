//
//  FreddyPerson.swift
//  ParsingJSON3rdParty
//
//  Created by Kyle Lee on 5/7/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation
import Freddy

struct FreddyPerson {
    let name: String
    let location: String
    let company: String
    
    init?(data: Data) {
        
        do {
            let json = try JSON(data: data)
            let name = try json.getString(at: 1, "name")
            let lat = try json.getString(at: 1, "address", "geo", "lat")
            let long = try json.getString(at: 1, "address", "geo", "lng")
            let company = try json.getString(at: 1, "company", "name")
            
            self.name = name
            self.location = "Lat: \(lat) Long: \(long)"
            self.company = company
        } catch {
            print(error)
            return nil
        }
    }
}
