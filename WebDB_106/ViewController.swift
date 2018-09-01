//
//  ViewController.swift
//  WebDB_106
//
//  Created by kane kou on 2018/09/01.
//  Copyright © 2018年 suwashimizu. All rights reserved.
//

import UIKit

class ViewController: UIViewController , Injectable{
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.label.text = "lauch!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

