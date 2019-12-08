//
//  ViewController.swift
//  MyFirstApp
//
//  Created by user160284 on 12/8/19.
//  Copyright © 2019 user160284. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   @IBAction func showMessage(sender:UIButton){
    let selectedButton = sender
    var meaning = "test"
    
    if let selection = selectedButton.titleLabel?.text{

        if selection == "Leaf"{
            meaning = "Leaf"
        }
        if selection == "Tree"{
            meaning = "Tree"
        }
    }
    
    let alertController = UIAlertController(title: "you chose:", message: meaning, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title:"OK",style: UIAlertAction.Style.default, handler:nil))
        
        
        
        present(alertController,animated:true,completion: nil)
    }

}

