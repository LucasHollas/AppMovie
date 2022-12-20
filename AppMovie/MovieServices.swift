//
//  MovieServices.swift
//  AppMovie
//
//  Created by Lucas Hollas on 19/12/22.
//

import Foundation

protocol MovieService {
    
}

enum MovieListEndpoint: String {
    case nowPlaying = "now_playing"
    case upcoming
    case topRated = "top_rated"
    case popular
    
    var description: String {
        switch self {
        case .nowPlaying: return "Now Playing"
        case .upcoming: return "Upcoming"
        case .topRated: return "Top Rated"
        case .popular: return "Popular"
        }
    }
}

enum MovieError: Error, CustomNSError {
    
    case apiError
    case invalidEndpoint
    case invalidResonse
    case noData
    case serializationError
    
    var localizedDescription: String {
        switch self {
        case .apiError: return "Failed to fetch data"
        case .invalidEndpoint: return "Invalid endpoint"
        case .invalidResonse: return "Invalid response"
        case .noData: return "No data"
        case .serializationError: return "Failed to decode data"
        
        }
    }
    
    
}
