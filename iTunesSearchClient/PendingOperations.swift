//
//  PendingOperations.swift
//  iTunesSearchClient
//
//  Created by Dan Lindsay on 2017-04-28.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class PendingOperations {
    var downloadsInProgress = [IndexPath: Operation]()
    
    let downloadQueue = OperationQueue()
}
