//
//  NewsFeedRequest.swift
//  DemoApp
//
//  Created by Ravi dwivedi on 30/12/20.
//  Copyright © 2020 Ravi dwivedi. All rights reserved.
//

import Foundation

struct NewsFeedRequest :Encodable {
    let q, from, sortBy, apiKey:String
    
}
