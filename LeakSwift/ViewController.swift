//
//  ViewController.swift
//  LeakSwift
//
//  Created by yixin on 2019/8/16.
//  Copyright © 2019 IUTeam. All rights reserved.
//

import UIKit

typealias TapBlock = (String) -> Void

class ViewController: UIViewController {
    
    var block: TapBlock?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.block = { (str) in
            print(str)
            self.navigationController!.pushViewController(View2Controller(), animated: true)
        }
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        if (self.block != nil) {
            self.block!("hello")
        }
    }
    
}

