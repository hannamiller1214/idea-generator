//
//  ViewController.swift
//  IdeaGenerator
//
//  Created by Hanna Miller on 1/23/20.
//  Copyright © 2020 Hanna Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label1 = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let label2 = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]
    
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var ideaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func generateAnswer1() {
        let randomIndex1 = Int.random(in: 0..<label1.count)

        firstLabel.text = label1[randomIndex1]
    }
    
    func generateAnswer2() {
        let randomIndex2 = Int.random(in: 0..<label2.count)
        
        secondLabel.text = label2[randomIndex2]
    }
    
    @IBAction func ideaButtonTapped(_ sender: Any) {
        generateAnswer1()
        generateAnswer2()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateAnswer1()
        generateAnswer2()
    }
}

