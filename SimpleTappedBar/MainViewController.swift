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
        button.backgroundColor = .yellow
        button.addTarget(self, action: #selector(tapTap), for: .touchUpInside)
        
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(constraints)
        
    }
 
    @objc func tapTap(){
        print("tap tap")
        navigationController?.pushViewController(ViewController(), animated: true)
    }

}
