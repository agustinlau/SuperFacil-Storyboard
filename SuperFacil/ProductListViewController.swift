//
//  ProductListViewController.swift
//  SuperFacil
//
//  Created by Agustin Lau on 10/21/18.
//  Copyright © 2018 Agustin A. Lau. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    
    var products = ["Banana", "Apples", "Vegetables"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        let lblNew = UILabel.init()
//        lblNew.frame = CGRect(x: 50, y: 150, width: 100, height: 21)
//        lblNew.text = "Test"
//        lblNew.textColor = UIColor.black
//        lblNew.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(lblNew)
        var yDist: CGFloat = 100
        for product in products {
            let button = UIButton(frame: CGRect(x: 100, y: yDist, width: 250, height: 30))
            yDist = yDist + 50
            button.layer.cornerRadius = 10  // get some fancy pantsy rounding
            button.backgroundColor = UIColor.black
            button.setTitle("\(product)", for: UIControlState.normal) // We are going to use the item name as the Button Title here.
            button.titleLabel?.text = "\(product)"
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            
            self.view.addSubview(button)
        }
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
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
