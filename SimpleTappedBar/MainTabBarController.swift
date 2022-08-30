//
//  MainTabBarController.swift
//  SimpleTappedBar
//
//  Created by Student on 27/8/22.
//

import UIKit
class MainTabBarController: UITabBarController, UITabBarControllerDelegate{
    
    let mainViewController = UINavigationController(rootViewController: MainViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        self.delegate = self
        setupTabBarItem()
        setupTabBarAppereance()
        
    }
    
    private func setupTabBarItem(){
        setViewControllers([
            setupMainViewController(),
            setupSecondViewController()], animated: false)

    selectedIndex = 0
    }

    private func setupTabBarAppereance(){
        self.tabBar.isTranslucent = true
        self.tabBar.backgroundColor = .white    }

    private func setupMainViewController() -> UIViewController{
        let vc = mainViewController
        mainViewController.navigationBar.backgroundColor = .white
//        mainViewController.navigationBar.isHidden = true
        vc.tabBarItem.title = "Main"

        return vc
    }

    private func setupSecondViewController() -> UIViewController{
        let vc = SecondViewController()
        vc.tabBarItem.title = "Second"
        vc.tabBarItem.image = UIImage(named: "LinkedIn")

        return vc
    }
}
