//
//  Respond.swift
//  NeflixCloneCoding
//
//  Created by 정지혁 on 2022/07/16.
//

import Foundation

struct Respond: Codable {
    var Query: String
    var KMAQuery: String
    var TotalCount: String
    var Data: [Movies]
}

struct Movies: Codable {
    var CollName: String
    var TotalCount: String
    var Count: String
    var Result: [Movie]
}

struct Movie: Codable {
    var title: String
    var prodYear: String
    var directors: [Director]
    var actors: [Actor]
    var nation: String
    var plots: [Plot]
    var runtime: String
    var ratings: [Rating]
    var genre: String
    var keywords: String
    var posters: String
    var stlls: String
}

struct Director: Codable {
    var directorNm: String
}

struct Actor: Codable {
    var actorNm: String
}

struct Plot: Codable {
    var plotText: String
}

struct Rating: Codable {
    var ratingMain: String
    var ratingDate: String
    var ratingNo: String
    var ratingGrade: String
}

