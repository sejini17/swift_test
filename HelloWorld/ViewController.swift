//
//  ViewController.swift
//  HelloWorld
//
//  Created by 그린아카데미 on 2019. 4. 13..
//  Copyright © 2019년 sjk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblInput: UILabel!
    @IBOutlet var txtInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnInput(_ sender: Any) {
        lblInput.text = "efjkafjelkj" + txtInput.text!
    }
    
}

