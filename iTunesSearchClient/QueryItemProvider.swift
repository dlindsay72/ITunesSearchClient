//
//  QueryItemProvider.swift
//  iTunesSearchClient
//
//  Created by Dan Lindsay on 2017-04-28.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

protocol QueryItemProvider {
    var queryItem: URLQueryItem { get }
}
