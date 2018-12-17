//
//  UserView.swift
//  MVCTeset
//
//  Created by Daniel Peach on 10/22/18.
//  Copyright © 2018 Daniel Peach. All rights reserved.
//

import UIKit

class UserView: UIView {
    
    var delegate: UserDelegate?
    
    let nameButton: UIButton = {
       let btn = UIButton(type: UIButton.ButtonType.system)
        btn.backgroundColor = .white
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 10
        btn.setTitle("Print your name", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(printNameWasClicked), for: .touchUpInside)
        return btn
    }()
    
    @objc private func printNameWasClicked() {
        self.delegate?.sayName()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .green
        
        // Lots of other view stuff
        
        // Add our button
        self.addSubview(nameButton)
        nameButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        nameButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        nameButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        nameButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
