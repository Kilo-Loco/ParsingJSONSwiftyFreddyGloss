//
//  ViewController.swift
//  ParsingJSON3rdParty
//
//  Created by Kyle Lee on 5/7/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var company: UILabel!
    
    func updateUI(name: String, location: String, company: String) {
        self.name.text = name
        self.location.text = location
        self.company.text = company
    }
    
    
    @IBAction func getSwiftyPerson(_ sender: Any) {
        print("SWIFTY")
        DataService.shared.getUsers() { data in
            guard let swifty = SwiftyPerson(data: data) else { return }
            self.updateUI(name: swifty.name, location: swifty.location, company: swifty.company)
        }
    }
    
    @IBAction func getFredyPerson(_ sender: Any) {
         print("FREDDY")
        DataService.shared.getUsers() { data in
            guard let freddy = FreddyPerson(data: data) else { return }
            self.updateUI(name: freddy.name, location: freddy.location, company: freddy.company)
        }
    }
    
    @IBAction func getGlossPerson(_ sender: Any) {
         print("GLOSS")
        DataService.shared.getUsers() { data in
            guard let gloss = GlossPerson(data: data) else { return }
            self.updateUI(name: gloss.name, location: gloss.location, company: gloss.company)
        }
    }
    
    @IBAction func clear(_ sender: Any) {
         print("CLEAR")
        updateUI(name: "", location: "", company: "")
        
    }
}

