//
//  TabBarController.swift
//  ShopApp
//
//  Created by Yaroslav on 14.08.2022.
//

import UIKit

// MARK: - TabBarController
class TabBarController: UIViewController {
    
    // MARK: - Properties
    private let tabBarVC = UITabBarController()
    private let navigator = Navigator()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// MARK: - UITabBarControllerDelegate
extension TabBarController: UITabBarControllerDelegate {
    func setupUI() {
        view.backgroundColor = .white
        
        let appearance = tabBarVC.tabBar.standardAppearance
        appearance.shadowColor = .gray
        
        if #available(iOS 15.0, *) {
            tabBarVC.tabBar.scrollEdgeAppearance = appearance
        } else {
            tabBarVC.tabBar.standardAppearance = appearance
        }
        
        let mainScreenVC = navigator.addInstantiateMainScreenVC()
        let productsVC = navigator.addInstantiateProductsVC()
        
        tabBarVC.delegate = self
        tabBarVC.viewControllers = [mainScreenVC, productsVC]
        tabBarVC.tabBar.tintColor = .black
        
        addChild(tabBarVC, toContainer: view)
        
    }
}
