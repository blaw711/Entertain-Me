//
//  BaseAPIClient.swift
//  Entertain Me
//
//  Created by Bob Law on 9/14/17.
//  Copyright © 2017 Bob Law. All rights reserved.
//

import AFNetworking

class BaseAPIClient: AFHTTPSessionManager {
  
  static private let baseURLString: String = "https://api.themoviedb.org/3/"

  convenience init() {
    let url: URL? = URL.init(string: BaseAPIClient.baseURLString)
    
    self.init(baseURL: url)
  }
}
