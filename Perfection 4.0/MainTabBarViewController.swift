//
//  ViewController.swift
//  Perfection 4.0
//
//  Created by Sidney Okine on 11/08/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let HomeTab = UINavigationController(rootViewController: HomeViewController())
        let NextTab = UINavigationController(rootViewController: NextViewController())
        
        
        HomeTab.tabBarItem = UITabBarItem(title: "Countries", image: UIImage(systemName: "circle.fill"), tag: 1)
        NextTab.tabBarItem = UITabBarItem(title: "Click Me", image: UIImage(systemName: "square.fill"), tag: 2)
        
        
        
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = UIColor.white
        UITabBar.appearance().standardAppearance = tabBarAppearance
        
        setViewControllers([HomeTab,NextTab], animated: true)
        
//        tabBar.tintColor = .label
        
    }


}

