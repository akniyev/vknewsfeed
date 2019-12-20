//
//  API.swift
//  VKNewsFeed
//
//  Created by Hasan Akniyev on 18.12.2019.
//  Copyright © 2019 Hasan Akniyev. All rights reserved.
//

import Foundation

struct API {
    static let scheme = "https"
    static let host = "api.vk.com"
    static let version = "5.103"
    
    static let newsFeed = "/method/newsfeed.get"
    static let userWall = "/method/wall.get"
}
