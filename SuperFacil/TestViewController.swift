//
//  TestViewController.swift
//  SuperFacil
//
//  Created by Agustin Lau on 10/21/18.
//  Copyright © 2018 Agustin A. Lau. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    var category: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("here")
        let label: UILabel = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        label.text = "hello"
        self.view.addSubview(label)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
