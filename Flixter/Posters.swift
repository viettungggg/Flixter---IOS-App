//
//  Posters.swift
//  Flixter
//
//  Created by Dinh Viet Kien on 13/03/2023.
//

import Foundation
struct PostersSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let original_title: String
    let overview: String
    let poster_path: String
    let backdrop_path: String
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}
