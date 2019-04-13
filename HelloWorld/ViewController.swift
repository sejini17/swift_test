//
//  ViewController.swift
//  HelloWorld
//
//  Created by 그린아카데미 on 2019. 4. 13..
//  Copyright © 2019년 sjk. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var lblInput: UILabel!
    @IBOutlet var txtInput: UITextField!
    
    @IBOutlet var webMain: WKWebView!
    @IBOutlet var aiWeb: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("콘솔에 메세지 표시2222")
        
        webMain.load(
            URLRequest(
                url: URL(string:"http://daum.net")!
            )
        )
        
        webMain.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
        
        
        var str = "HelloWorld"
        print(str)
        
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading"{
            if webMain.isLoading {
                aiWeb.startAnimating()
            }
            else {
                aiWeb.stopAnimating()
            }
            aiWeb.isHidden = !webMain.isLoading
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnInput(_ sender: Any) {
        lblInput.text = "efjkafjelkj" + txtInput.text!
        
        let alertTest = UIAlertController(
            title: "test title",
            message: lblInput.text,
            preferredStyle: UIAlertControllerStyle.alert
            )
        alertTest.addAction(UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.default,
                handler: nil
            ))
        
        present(alertTest, animated: true, completion: nil)
    }
    
}

