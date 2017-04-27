//
//  SongViewModel.swift
//  iTunesSearchClient
//
//  Created by Dan Lindsay on 2017-04-27.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

struct SongViewModel {
    let title: String
    let runtime: String
}

extension SongViewModel {
    init(song: Song) {
        self.title = song.censoredName
        
        // Track in Milliseconds
        let timeInSeconds = song.trackTime/1000
        let minutes = timeInSeconds/60 % 60
        let seconds = timeInSeconds % 60
        
        self.runtime = "\(minutes): \(seconds)"
    }
}
