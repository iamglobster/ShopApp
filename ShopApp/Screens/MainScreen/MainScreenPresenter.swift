//
//  MainScreenPresenter.swift
//  ShopApp
//
//  Created by Yaroslav on 14.08.2022.
//

import UIKit

// MARK: - MainScreenPresenterProtocol
protocol MainScreenPresenterProtocol {
    
}

// MARK: - MainScreenPresenter
class MainScreenPresenter: MainScreenPresenterProtocol {
    
    // MARK: - Properties
    private var delegate: MainScreenViewControllerProtocol!
    
    // MARK: - Init
    init() {}
    
    // MARK: - Methods
    func set(delegate: MainScreenViewControllerProtocol) {
        self.delegate = delegate
    }
}
