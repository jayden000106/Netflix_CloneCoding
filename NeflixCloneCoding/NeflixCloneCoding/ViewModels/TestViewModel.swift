//
//  TestViewModel.swift
//  NeflixCloneCoding
//
//  Created by 정지혁 on 2022/07/16.
//

import SwiftUI
import Combine

class TestViewModel: ObservableObject {
    @Published var movieData: MovieData
    private let movieService = MovieService.sharedMovieManager
    
    init() {
        self.movieData = MovieData(Query: "nil", KMAQuery: "nil", TotalCount: 0)
    }
    
    func fetchMovies() {
        
    }
}
