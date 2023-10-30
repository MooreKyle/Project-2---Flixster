//
//  Movie.swift
//  Projects 2 & 3 - Flixster
//
//  Created by Kyle Moore on 10/29/23.
//

import Foundation

// TODO: Pt 1 - Create a Movie model struct
struct Movie {
    let title: String
    let overview: String
    let posterImageURL: URL
    let backdropImageURL: URL
    let voteAverage: Float
    let voteCount: Int
    let popularity: Float
    let releaseDate: Date
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Movie {
    
    // An array of mock movies
    static var mockMovies: [Movie]  = [
        Movie(title: "Five Nights at Freddy's",
              overview: "Recently fired and desperate for work, a troubled young man named Mike agrees to take a position as a night security guard at an abandoned theme restaurant: Freddy Fazbear's Pizzeria. But he soon discovers that nothing at Freddy's is what it seems.",
              posterImageURL: URL(string: "https://example.com/five_nights_poster.jpg")!,
              backdropImageURL: URL(string: "https://example.com/five_nights_backdrop.jpg")!,
              voteAverage: 8.485,
              voteCount: 746,
              popularity: 3635.108,
              releaseDate: Date()),
        Movie(title: "The Matrix Resurrections",
              overview: "Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.",
              posterImageURL: URL(string: "https://example.com/matrix_resurrections_poster.jpg")!,
              backdropImageURL: URL(string: "https://example.com/matrix_resurrections_backdrop.jpg")!,
              voteAverage: 7.589,
              voteCount: 982,
              popularity: 2395.312,
              releaseDate: Date()),
        Movie(title: "Dune",
              overview: "Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and people.",
              posterImageURL: URL(string: "https://example.com/dune_poster.jpg")!,
              backdropImageURL: URL(string: "https://example.com/dune_backdrop.jpg")!,
              voteAverage: 8.134,
              voteCount: 5276,
              popularity: 2348.421,
              releaseDate: Date()),
        Movie(title: "No Time to Die",
              overview: "James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.",
              posterImageURL: URL(string: "https://example.com/no_time_to_die_poster.jpg")!,
              backdropImageURL: URL(string: "https://example.com/no_time_to_die_backdrop.jpg")!,
              voteAverage: 7.438,
              voteCount: 3482,
              popularity: 1987.732,
              releaseDate: Date()),
        Movie(title: "Shang-Chi and the Legend of the Ten Rings",
              overview: "Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.",
              posterImageURL: URL(string: "https://example.com/shang_chi_poster.jpg")!,
              backdropImageURL: URL(string: "https://example.com/shang_chi_backdrop.jpg")!,
              voteAverage: 7.648,
              voteCount: 2750,
              popularity: 2105.972,
              releaseDate: Date())
    ]
}

    // We can now access this array of mock movies anywhere like this:
    // let movies = Movie.mockMovies
    


// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
/*func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
*/
