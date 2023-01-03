//
//  Movie.swift
//  AppMovie
//
//  Created by Lucas Hollas on 19/12/22.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable, Identifiable {
    
    let id: Int
    let title: String?
    let backdropPath: String?
    let overview: String
    let voteAverage: Double
    let voteCount: Int
    let runtime: Int?
 
    var backdropURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500\(backdropPath ?? "")")!
    }
    
}
