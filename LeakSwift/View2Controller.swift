//
//  View2Controller.swift
//  LeakSwift
//
//  Created by yixin on 2019/8/16.
//  Copyright © 2019 IUTeam. All rights reserved.
//

import UIKit

typealias StrBlock = (String) -> Void

class View2Controller: UIViewController {
    
    var block: StrBlock?
    var str:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor .blue
        
        weak var weakSelf = self
        self.block = { (string) in
            weakSelf?.str = string
        }

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("View2Controller deinit")
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
