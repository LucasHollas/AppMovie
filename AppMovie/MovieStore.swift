//
//  MovieStore.swift
//  AppMovie
//
//  Created by Lucas Hollas on 20/12/22.
//

import Foundation

class MovieStore: MovieService {
    
    static let shared = MovieStore()
    private init() {}
    
    private let apiKey = "APIKEY"
    private let baseAPIURL = "https://api.themoviedb.org/3"
    private let urlSessioni = URLSession.shared
}
