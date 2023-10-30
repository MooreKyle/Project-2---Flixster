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

// TODO: Pt 1 - Create an extension with a mock movies static var
extension Movie {
    
    // An array of mock movies
    static var mockMovies: [Movie]  = [
        Movie(title: "Expend4bles",
              overview: "Armed with every weapon they can get their hands on...",
              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w500/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg")!,
              backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w500/wl4NWiZwpzZH67HiDgpDImLyds9.jpg")!,
              voteAverage: 6.416,
              voteCount: 468,
              popularity: 3009.658,
              releaseDate: Date()),
        Movie(title: "Five Nights at Freddy's",
              overview: "Recently fired and desperate for work, a troubled young man named Mike agrees to take a position as a night security guard at an abandoned theme restaurant: Freddy Fazbear's Pizzeria. But he soon discovers that nothing at Freddy's is what it seems.",
              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w500/A4j8S6moJS2zNtRR8oWF08gRnL5.jpg")!,
              backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w500/t5zCBSB5xMDKcDqe91qahCOUYVV.jpg")!,
              voteAverage: 8.748,
              voteCount: 423,
              popularity: 2596.506,
              releaseDate: Date()),
        Movie(title: "The Equalizer 3",
              overview: "Robert McCall finds himself at home in Southern Italy but he discovers his friends are under the control of local crime bosses. As events turn deadly, McCall knows what he has to do: become his friends' protector by taking on the mafia.",
              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w500/b0Ej6fnXAP8fK75hlyi2jKqdhHz.jpg")!,
              backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w500/tC78Pck2YCsUAtEdZwuHYUFYtOj.jpg")!,
              voteAverage: 7.306,
              voteCount: 1132,
              popularity: 1851.057,
              releaseDate: Date()),
        Movie(title: "The Exorcist: Believer",
              overview: "When his daughter and her friend show signs of demonic possession, it unleashes a chain of events that forces single father, Victor Fielding, to confront the nadir of evil. Terrified and desperate, he seeks out the only person alive who's witnessed anything like it before.",
              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w500/qVKirUdmoex8SdfUk8WDDWwrcCh.jpg")!,
              backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w500/azD31DjpV3PJfjF3h72LVw2WCSD.jpg")!,
              voteAverage: 5.948,
              voteCount: 258,
              popularity: 1845.651,
              releaseDate: Date()),
        Movie(title: "Saw X",
              overview: "Between the events of 'Saw' and 'Saw II', a sick and desperate John Kramer travels to Mexico for a risky and experimental medical procedure in hopes of a miracle cure for his cancer, only to discover the entire operation is a scam to defraud the most vulnerable. Armed with a newfound purpose, the infamous serial killer returns to his work, turning the tables on the con artists in his signature visceral way through devious, deranged, and ingenious traps.",
              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w500/aQPeznSu7XDTrrdCtT5eLiu52Yu.jpg")!,
              backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w500/dZbLqRjjiiNCpTYzhzL2NMvz4J0.jpg")!,
              voteAverage: 7.301,
              voteCount: 470,
              popularity: 1784.193,
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
