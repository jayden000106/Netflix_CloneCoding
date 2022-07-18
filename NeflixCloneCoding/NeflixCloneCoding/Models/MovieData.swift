//
//  Respond.swift
//  NeflixCloneCoding
//
//  Created by 정지혁 on 2022/07/16.
//

import Foundation

struct MovieData: Codable {
    var Query: String
    var KMAQuery: String
    var TotalCount: Int
    var Data: [Data]? = []
}

struct Data: Codable {
    var CollName: String?
    var TotalCount: Int?
    var Count: Int?
    var Result: [Result]?
}

struct Result: Codable {
    var DOCID: String? = nil
    var movieId: String? = nil
    var movieSeq: String? = nil
    var title: String? = nil
    var titleEng: String? = nil
    var titleOrg: String? = nil
    var titleEtc: String? = nil
    var prodYear: String? = nil
//    var directors: [Director]
    var nation: String? = nil
    var company: String? = nil
//    var actors: [Actor]?
//    var plots: [Plot]?
    var runtime: String? = nil
//    var ratings: [Rating]?
    var genre: String? = nil
    var keywords: String? = nil
    var posters: String? = nil
    var stlls: String? = nil
}

struct Director: Codable {
    var directorNm: String? = nil
}

struct Actor: Codable {
    var actorNm: String? = nil
}

struct Plot: Codable {
    var plotText: String? = nil
}

struct Rating: Codable {
    var ratingMain: String? = nil
    var ratingDate: String? = nil
    var ratingNo: String? = nil
    var ratingGrade: String? = nil
}

