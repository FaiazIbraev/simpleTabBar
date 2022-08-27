//
//  MainTabBarController.swift
//  SimpleTappedBar
//
//  Created by Student on 27/8/22.
//

import UIKit
class MainTabBarController: UITabBarController, UITabBarControllerDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupTabBarItem()
        setupTabBarAppereance()
        setupMainViewController()
        setupSecondViewController()
    }
    
    private func setupTabBarItem(){
        setViewControllers([
        MainViewController(), SecondViewController()], animated: false)
        
    selectedIndex = 0
    }
    
    private func setupTabBarAppereance(){
        self.tabBar.isTranslucent = true
        self.tabBar.backgroundColor = .gray
    }
    
    private func setupMainViewController() -> UIViewController{
        let vc = MainViewController()
        vc.tabBarItem.title = "Main"
        
        return vc
    }
    
    private func setupSecondViewController() -> UIViewController{
        let vc = setupSecondViewController()
        vc.tabBarItem.title = "Second"
        
        return vc
    }
}
