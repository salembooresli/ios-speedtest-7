//
//  ViewController.swift
//  speedtest-7
//
//  Created by Safeyah on 6/13/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextPageButton(_ sender: Any) {
        if nameField.text!.count >= 2 {
            performSegue(withIdentifier: "details", sender: nameField.text)
    }
       
    // Hint: `performSegue` is the way
       
   }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let name = sender as! String
        let VC = segue.destination as! ViewController2
        VC.name = name
    }

}

