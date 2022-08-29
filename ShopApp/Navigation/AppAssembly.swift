//
//  AppAssembly.swift
//  ShopApp
//
//  Created by Yaroslav on 14.08.2022.
//

import UIKit

class AppAssembly {
    
    func instantiateMainScreenVC() -> UINavigationController {
        let presenter = MainScreenPresenter()
        let mainScreenVC = MainScreenViewController(presenter: presenter)
        presenter.set(delegate: mainScreenVC)
        
        let navigationVC = UINavigationController(rootViewController: mainScreenVC)
        mainScreenVC.tabBarItem = UITabBarItem(title: "Головна", image: UIImage(systemName: "house.circle"), selectedImage: UIImage(systemName: "house.circle"))
        
        let appearance = UINavigationBarAppearance()
        
        if #available(iOS 15.0, *) {
            navigationVC.navigationBar.scrollEdgeAppearance = appearance
        } else {
            navigationVC.navigationBar.standardAppearance = appearance
        }
        
        return navigationVC
    }
    
    func instantiateProductsScreenVC() -> UINavigationController {
        let presenter = ProductsPresenter()
        let productsVC = ProductsViewController(presenter: presenter)
        presenter.set(delegate: productsVC)
        
        let navigationVC = UINavigationController(rootViewController: productsVC)
        productsVC.tabBarItem = UITabBarItem(title: "Товари", image: UIImage(systemName: "list.bullet.circle"), selectedImage: UIImage(systemName: "list.bullet.circle"))
        
        let appearance = UINavigationBarAppearance()
        
        if #available(iOS 15.0, *) {
            navigationVC.navigationBar.scrollEdgeAppearance = appearance
        } else {
            navigationVC.navigationBar.standardAppearance = appearance
        }
        
        return navigationVC
    }
}
