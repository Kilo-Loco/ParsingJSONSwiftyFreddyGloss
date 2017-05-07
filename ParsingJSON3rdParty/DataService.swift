//
//  DataService.swift
//  ParsingJSON3rdParty
//
//  Created by Kyle Lee on 5/7/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation

class DataService {
    
    static let shared = DataService()
    private init() {}
    
    func getUsers(completion: (Data) -> Void) {
        guard let path = Bundle.main.path(forResource: "someJson", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        let data = try! Data(contentsOf: url)
        completion(data)
    }
    
    
}
