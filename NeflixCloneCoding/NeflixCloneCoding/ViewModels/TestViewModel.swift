//
//  TestViewModel.swift
//  NeflixCloneCoding
//
//  Created by 정지혁 on 2022/07/16.
//

import SwiftUI
import Combine

class TestViewModel: ObservableObject {
    @Published var responds: Respond?
    private let movieService = MovieService.sharedMovieManager
    
    init(responds: Respond? = nil) {
        self.responds = responds
        print("init")
    }
    
    func fetchMovies() {
        movieService.loadData() { result in
            switch result {
            case .success(let responds):
                DispatchQueue.main.async {
                    self.responds = responds
                    print("TestViewModel - Success")
                }
            case .failure(let error):
                switch error {
                case .decodingError:
                    print("TestViewModel : Decoding Error")
                case .badURL:
                    print("TestViewModel : Bad URL")
                case .noData:
                    print("TestViewModel : No Data")
                }
                print("TestViewModel - Failed")
                print(error.localizedDescription)
            }
        }
    }
}
