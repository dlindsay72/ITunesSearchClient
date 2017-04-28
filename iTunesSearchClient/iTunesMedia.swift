//
//  iTunesMedia.swift
//  iTunesSearchClient
//
//  Created by Dan Lindsay on 2017-04-27.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

enum ItunesMedia {
    case movie
    case podcast
    case music(entity: MusicEntity?)
    case musicVideo
    case audiobook
    case shortFilm
    case tvShow
    case software
    case ebook
    case all
}

extension ItunesMedia: CustomStringConvertible {
    var description: String {
        switch self {
        case .movie: return "movie"
        case .podcast: return "podcast"
        case .music: return "music"
        case .musicVideo: return "musicVideo"
        case .audiobook: return "audiobook"
        case .shortFilm: return "shortFilm"
        case .tvShow: return "tvShow"
        case .software: return "software"
        case .ebook: return "ebook"
        case .all: return "all"
        }
    }
}

extension ItunesMedia {
    var entityQueryItem: URLQueryItem? {
        switch self {
        case .music(let entity): return entity?.queryItem
        default: return nil
        }
    }
}















