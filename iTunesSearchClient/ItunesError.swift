//
//  ItunesError.swift
//  iTunesSearchClient
//
//  Created by Dan Lindsay on 2017-04-28.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailure(message: String)
}
