//
//  MovieService.swift
//  NeflixCloneCoding
//
//  Created by 정지혁 on 2022/07/16.
//

import Foundation

enum NetworkError: Error {
    case noData
    case decodingError
    case badURL
}

class MovieService {
    static let sharedMovieManager = MovieService()
    
    func loadData(completion: @escaping (Result<Respond, NetworkError>) -> Void) {
        guard let url = URL(string: "http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&detail=N&director=%EB%B0%95%EC%B0%AC%EC%9A%B1&ServiceKey=Q3FIXTTR0G1C0Y9FF0OM") else {
            return completion(.failure(.badURL))
        }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let respond = try? JSONDecoder().decode(Respond.self, from: data) else {
                return completion(.failure(.decodingError))
            }
            
            print("MovieManager : \(respond)")
            completion(.success(respond))
        }.resume()
    }
}
