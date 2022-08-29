//
//  Navigator.swift
//  ShopApp
//
//  Created by Yaroslav on 14.08.2022.
//

import UIKit

// MARK: - NavigatorProtocol
protocol NavigatorProtocol {
    func addInstantiateMainScreenVC() -> UINavigationController
    func addInstantiateProductsVC() -> UINavigationController
}

// MARK: - Navigator
class Navigator: NavigatorProtocol {

    // MARK: - Properties
    private let appAssembly = AppAssembly()
    
    // MARK: - Methods
    func addInstantiateMainScreenVC() -> UINavigationController {
        return appAssembly.instantiateMainScreenVC()
    }
    
    func addInstantiateProductsVC() -> UINavigationController {
        return appAssembly.instantiateProductsScreenVC()
    }
}
