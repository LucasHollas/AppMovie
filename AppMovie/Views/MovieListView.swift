//
//  MovieListView.swift
//  AppMovie
//
//  Created by Lucas Hollas on 04/01/23.
//

import SwiftUI

struct MovieListView: View {
    
    @ObservedObject private var nowPlayingState = MovieListState()
    @ObservedObject private var upcomingState = MovieListState()
    @ObservedObject private var topRatedState = MovieListState()
    @ObservedObject private var popularState = MovieListState()
    
    var body: some View {
        NavigationView {
            List {
                if nowPlayingState.movies != nil {
                    MoviePosterCarouselView(title: "Now Playing", movies: nowPlayingState.movies!)
                } else {
                    LoadingView(isLoading: nowPlayingState.isLoading, error: nowPlayingState.error) {
                        self.nowPlayingState.loadMovies(with: .nowPlaying)
                    }
                }
                
                if upcomingState.movies != nil {
                    MovieBackdropCarouselView(title: "Upcoming", movies: upcomingState.movies!)
                } else {
                    LoadingView(isLoading: upcomingState.isLoading, error: upcomingState.error) {
                        self.upcomingState.loadMovies(with: .nowPlaying)
                    }
                }
            }
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
