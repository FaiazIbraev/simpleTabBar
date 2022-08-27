//
//  MainViewController.swift
//  SimpleTappedBar
//
//  Created by Student on 27/8/22.
//

import UIKit

class MainViewController: UIViewController{
    private lazy var button: UIButton = {
        let button = UIButton ()
        
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(button)
        
        let constraints = [
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func tapTap(){
        print("tap")
    }

}
