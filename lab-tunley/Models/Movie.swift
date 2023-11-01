//
//  Movie.swift
//  Project 3 - Flixster Part 2
//
//  Created by Kyle Moore on 10/31/23.
//

import Foundation

// TODO: Pt 1 - Create a Movie model struct

struct Movie: Decodable {
    let title: String
    let director: String
    let posterURL: URL

    // Detail properties
    //let collectionName: String
    let genre: String
    let releaseDate: Date
    let durationInMinutes: Int
}

struct MoviesResponse: Decodable {
    let results: [Movie]
}

// TODO: Pt 1 - Create an extension with a mock movies static var

extension Movie {

    /// An array of mock tracks
    static var mockMovies: [Movie] = [
            Movie(title: "Inception",
                  director: "Christopher Nolan",
                  posterURL: URL(string: "https://image.tmdb.org/t/p/w500/x6ES7WxY2PoTHKdAIatE3wMBEdu.jpg")!,
                  genre: "Sci-Fi",
                  releaseDate: Date(),
                  durationInMinutes: 148),
            Movie(title: "The Shawshank Redemption",
                  director: "Frank Darabont",
                  posterURL: URL(string: "https://image.tmdb.org/t/p/w500/9O7gLzmreU0nGkIB6K3BsJbzvNv.jpg")!,
                  genre: "Drama",
                  releaseDate: Date(),
                  durationInMinutes: 142),
            Movie(title: "The Dark Knight",
                  director: "Christopher Nolan",
                  posterURL: URL(string: "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg")!,
                  genre: "Action",
                  releaseDate: Date(),
                  durationInMinutes: 152)
        ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts minutes to hh:mm format
/// - Parameter minutes: The duration in minutes
/// - Returns: A string in the format "hh:mm"
func formattedMovieDuration(with minutes: Int) -> String {
    let (hours, minutes) = minutes.quotientAndRemainder(dividingBy: 60)
    if hours >= 10 {
        return "\(hours):\(String(format: "%02d", minutes))"
    } else {
        return "0\(hours):\(String(format: "%02d", minutes))"
    }
}

//func formattedMovieDuration(with minutes: Int) -> String {
    //let (hours, remainingMinutes) = minutes.quotientAndRemainder(dividingBy: 60)
    //if remainingMinutes >= 10 {
        //return "\(hours):\(remainingMinutes)"
    //} else {
        //return "\(hours):0\(remainingMinutes)"
    //}
//}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
//func formattedTrackDuration(with milliseconds: Int) -> String {
    //let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    //let truncatedSeconds = seconds / 1000
    //if truncatedSeconds >= 10 {
        //return "\(minutes):\(truncatedSeconds)"
    //} else {
        //return "\(minutes):0\(truncatedSeconds)"
    //}
//}
