//
//  MovieModel.swift
//  Todo2You
//
//  Created by Gabriel Custódio on 09/01/22.
//

import Foundation


struct MovieResponse: Decodable {
    let posterPath: String
    let adult: Bool
    let overview, releaseDate: String
    let genreIDS: [Int]
    let id: Int
    let originalTitle: String
    let originalLanguage: String
    let title: String
    let backdropPath: String
    let popularity: Double
    let voteCount: Int
    let video: Bool
    let voteAverage: Double
}
