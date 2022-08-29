//
//  ProductsPresenter.swift
//  ShopApp
//
//  Created by Yaroslav on 29.08.2022.
//

import UIKit

// MARK: - ProductsPresenterProtocol
protocol ProductsPresenterProtocol {
    
}

// MARK: - ProductsPresenter
class ProductsPresenter: ProductsPresenterProtocol {
    
    // MARK: - Properties
    private var delegate: ProductsViewControllerProtocol!
    
    // MARK: - Methods
    func set(delegate: ProductsViewControllerProtocol) {
        self.delegate = delegate
    }
}
