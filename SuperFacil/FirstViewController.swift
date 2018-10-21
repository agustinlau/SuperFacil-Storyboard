//
//  FirstViewController.swift
//  SuperFacil
//
//  Created by Agustin Lau on 10/20/18.
//  Copyright © 2018 Agustin A. Lau. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var names: [String] = ["Beverages", "Meat and Seafood", "Pantry"]
    
    @IBOutlet weak var produceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Give the produce button an action
        produceButton.addTarget(self, action: #selector(produceButtonAction), for: .touchUpInside)
        
        // Make produce button round
        produceButton.layer.cornerRadius = produceButton.frame.size.width / 2
        produceButton.clipsToBounds = true
    
    }
    
    @objc func produceButtonAction(sender: UIButton!) {
        print("Button tapped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

