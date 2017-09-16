//
//  Movie.swift
//  Entertain Me
//
//  Created by Bob Law on 9/13/17.
//  Copyright © 2017 Bob Law. All rights reserved.
//

import Foundation


class Movie: NSObject {

  let backdropPath: String?
  let budget: String?
  let genres: [String]?
  let homepage: String?
  let id: Int?
  let imdb_id: String?
  let overview: String?
  let posterPath: String?
  let releaseDate: String?
  let revenue: Int?
  let runtime: Int?
  let status: String?
  let title: String?
  let voteAverage: Float?
  let voteCount: Int?
  
  init(withDictionary dictionary: [String: Any]) {
    backdropPath = Movie.jsonNullGuard(object: dictionary["backdrop_path"]) as? String
    budget = Movie.jsonNullGuard(object: dictionary["budget"]) as? String
    genres = Movie.jsonNullGuard(object: dictionary["genres"]) as? [String]
    homepage = Movie.jsonNullGuard(object: dictionary["homepage"]) as? String
    id = Movie.jsonNullGuard(object: dictionary["id"]) as? Int
    imdb_id = Movie.jsonNullGuard(object: dictionary["imdb_id"]) as? String
    overview = Movie.jsonNullGuard(object: dictionary["overview"]) as? String
    posterPath = Movie.jsonNullGuard(object: dictionary["poster_path"]) as? String
    releaseDate = Movie.jsonNullGuard(object: dictionary["release_date"]) as? String
    revenue = Movie.jsonNullGuard(object: dictionary["revenue"]) as? Int
    runtime = Movie.jsonNullGuard(object: dictionary["runtime"]) as? Int
    status = Movie.jsonNullGuard(object: dictionary["status"]) as? String
    title = Movie.jsonNullGuard(object: dictionary["title"]) as? String
    voteAverage = Movie.jsonNullGuard(object: dictionary["vote_average"]) as? Float
    voteCount = Movie.jsonNullGuard(object: dictionary["vote_count"]) as? Int
    
    super.init()
  }
  
  private static func jsonNullGuard(object: Any?) -> Any? {
    if object is NSNull {
      return nil
    } else {
      return object
    }
  }
}


