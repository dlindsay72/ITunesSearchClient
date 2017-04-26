//
//  AlbumListController.swift
//  iTunesSearchClient
//
//  Created by Dan Lindsay on 2017-04-26.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class AlbumListController: UITableViewController {
    
    private struct Constants {
        static let AlbumCellHeight: CGFloat = 80
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - TableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.AlbumCellHeight
    }
    
    

}
