//
//  ProductsViewController.swift
//  ShopApp
//
//  Created by Yaroslav on 29.08.2022.
//

import UIKit

// MARK: - ProductsViewControllerProtocol
protocol ProductsViewControllerProtocol {
    
}

// MARK: - ProductsViewController
class ProductsViewController: UITableViewController, ProductsViewControllerProtocol {
        
    // MARK: - Properties
    private let presenter: ProductsPresenterProtocol!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Init
    init(presenter: ProductsPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Table view data source
extension ProductsViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
}
