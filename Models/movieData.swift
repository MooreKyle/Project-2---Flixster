//
//  movieData.swift
//  Projects 2 & 3 - Flixster
//
//  Created by student on 10/25/23.
//

import Foundation

//Struct: Movie
struct Movie {
    var title: String
    var posterImageName: String
    var description: String
}

let movieData = [
    Movie(title: "Movie 1", posterImageName: "poster1", description: "Description 1"),
    Movie(title: "Movie 2", posterImageName: "poster2", description: "Description 2"),
    Movie(title: "Movie 3", posterImageName: "poster3", description: "Description 3"),
    Movie(title: "Movie 4", posterImageName: "poster4", description: "Description 4"),
    Movie(title: "Movie 5", posterImageName: "poster5", description: "Description 5")
]
