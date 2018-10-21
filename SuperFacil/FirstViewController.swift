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
    
    @IBOutlet weak var meatSeafoodButton: UIButton!
    
    @IBOutlet weak var dairyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Give the all buttons an action
        produceButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        meatSeafoodButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        dairyButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        // Make all buttons round
        produceButton.layer.cornerRadius = produceButton.frame.size.width / 2
        produceButton.clipsToBounds = true
        
        meatSeafoodButton.layer.cornerRadius = meatSeafoodButton.frame.size.width / 2
        meatSeafoodButton.clipsToBounds = true
        
        dairyButton.layer.cornerRadius = produceButton.frame.size.width / 2
        dairyButton.clipsToBounds = true
    
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

