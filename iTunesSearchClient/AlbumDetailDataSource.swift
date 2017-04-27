//
//  AlbumDetailDataSource.swift
//  iTunesSearchClient
//
//  Created by Dan Lindsay on 2017-04-27.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit


class AlbumDetailDataSource: NSObject, UITableViewDataSource {
    
    private let songs: [Song]
    
    init(songs: [Song]) {
        self.songs = songs
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SongCell.reuseIdentifier, for: indexPath) as! SongCell
        let song = songs[indexPath.row]
        let viewModel = SongViewModel(song: song)
        
        cell.songNameLabel.text = viewModel.title
        cell.songRuntimeLabel.text = viewModel.runtime
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    //MARK: Table View DataSource
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Tracks"
        default: return nil
        }
    }
}
