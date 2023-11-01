//
//  MoviePoster.swift
//  Project 3 - Flixster Part 2
//
//  Created by Kyle Moore on 10/31/23.
//

import Foundation

struct MoviePosterSearchResponse: Decodable {
    let results: [MoviePoster]
}

struct MoviePoster: Decodable {
    let posterURL: URL
}
