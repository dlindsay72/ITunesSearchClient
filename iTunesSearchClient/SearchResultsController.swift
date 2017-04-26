//
//  SearchResultsController.swift
//  iTunesSearchClient
//
//  Created by Dan Lindsay on 2017-04-26.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class SearchResultsController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    let dataSource = SearchResultsDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(SearchResultsController.dismissSearchResultsController))
        tableView.tableHeaderView = searchController.searchBar
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = self
        
        tableView.dataSource = dataSource
    }

    
    func dismissSearchResultsController() {
        dismiss(animated: true, completion: nil) // he has self.dismiss
    }

    

}

// MARK: - Extensions

extension SearchResultsController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        //print(searchController.searchBar.text!) // TODO: Remove test
        dataSource.update(with: [Stub.artist])
        tableView.reloadData()
    }
}
