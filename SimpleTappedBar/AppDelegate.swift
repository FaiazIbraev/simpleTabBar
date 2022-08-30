//
//  AppDelegate.swift
//  SimpleTappedBar
//
//  Created by Student on 27/8/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?
   
    let navController = UINavigationController(rootViewController: MainTabBarController())

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        window.rootViewController = navController
        window.makeKeyAndVisible()
        
        navController.navigationBar.isHidden = true
        
        return true
    }


}

