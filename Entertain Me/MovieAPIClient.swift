//
//  MovieAPIClient.swift
//  Entertain Me
//
//  Created by Bob Law on 9/14/17.
//  Copyright © 2017 Bob Law. All rights reserved.
//

import UIKit

class MovieAPIClient: BaseAPIClient {
  
  private let MovieAPIBaseString: String = "movie"
  
  
  func getMovieDetail(forMovieWithID id: String?, completion: ((Movie?, Error?) -> Void)?) -> Void {
    
    if id == nil {
      if completion != nil {
        completion!(nil, nil)
      }
      return
    }
    
    self.get("movie/".appending(id!), parameters: ["api_key": "apikey"], progress: nil, success: { (dataTask, result) in
      if let movieDictionary = result as? [String: Any] {
        let movie = Movie.init(withDictionary: movieDictionary)
        if completion != nil {
          completion!(movie, nil)
        }
      }
    }) { (dataTask, error) in
      if completion != nil {
        completion!(nil, error)
      }
    }
  }
}
