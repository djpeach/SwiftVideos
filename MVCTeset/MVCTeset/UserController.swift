//
//  UserController.swift
//  MVCTeset
//
//  Created by Daniel Peach on 10/22/18.
//  Copyright © 2018 Daniel Peach. All rights reserved.
//

import UIKit

class UserController: UIViewController, UserDelegate {
    func sayName() {
        print("Daniel")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userView = UserView()
        // set view's delegate to self
        userView.delegate = self
        self.view = userView
    }
}
