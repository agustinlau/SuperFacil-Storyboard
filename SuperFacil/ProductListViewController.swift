//
//  ProductListViewController.swift
//  SuperFacil
//
//  Created by Agustin Lau on 10/21/18.
//  Copyright © 2018 Agustin A. Lau. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    
    var category: String = ""
    var products = ["Banana", "Apples", "Vegetables", "Strawberries", "Pineapple", "Watermelon", "Pears"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print(category)
        
//        let lblNew = UILabel.init()
//        lblNew.frame = CGRect(x: 50, y: 150, width: 100, height: 21)
//        lblNew.text = "Test"
//        lblNew.textColor = UIColor.black
//        lblNew.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(lblNew)
        var xImage: CGFloat = 30
        var yImage: CGFloat = 100
        var image: UIImage? = nil
        
        var xLabel: CGFloat = 30
        var yLabel: CGFloat = 210
        var count: Int = 0
        for product in products {
            let button = UIButton(frame: CGRect(x: xImage, y: yImage, width: 103, height: 103))
            let label = UILabel(frame: CGRect(x: xLabel, y: yLabel, width: 103, height: 20))
            if count < 2 {
                xImage = xImage + 130
                xLabel = xLabel + 130
                count = count + 1
            } else {
                xImage = 30
                xLabel = 30
                yImage = yImage + 140
                yLabel = yLabel + 140
                count = 0
            }
            image = UIImage(named: "produce")
            button.setImage(image, for: .normal)
            button.layer.cornerRadius = 10  // get some fancy pantsy rounding
//            button.backgroundColor = UIColor.black
//            button.setTitle("\(product)", for: UIControlState.normal) // We are going to use the item name as the Button Title here.
//            button.titleLabel?.text = "\(product)"
            label.text = "\(product)"
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            
            self.view.addSubview(button)
            self.view.addSubview(label)
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
