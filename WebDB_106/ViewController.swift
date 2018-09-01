//
//  ViewController.swift
//  WebDB_106
//
//  Created by kane kou on 2018/09/01.
//  Copyright © 2018年 suwashimizu. All rights reserved.
//

import UIKit

final class ViewController: UIViewController{
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    private var apiClient : APIClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setup()
    }
    
    private func setup(){
        
        apiClient.response(from: MockRequest()) { (result) in
            self.label.text = result.first
            self.label2.text = result[1]
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController: Injectable {
    
    typealias Dependency = APIClient
    static func make(withDependency dependency: APIClient) -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        viewController.apiClient = dependency
        
        return viewController
    }
}
