//
//  DetailViewController.swift
//  Project 3 - Flixster Part 2
//
//  Created by Kyle Moore on 10/31/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!

    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!

    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        Nuke.loadImage(with: movie.posterURL, into: movieImageView)
        movieTitleLabel.text = movie.title
        directorLabel.text = movie.director
        //albumLabel.text = track.collectionName
        genreLabel.text = movie.genre

        // Create a date formatter to style our date and convert it to a string
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        releaseDateLabel.text = dateFormatter.string(from: movie.releaseDate)

        // Use helper method to convert minutes into `hh:mm` string format
        durationLabel.text = formattedMovieDuration(with: movie.durationInMinutes)

    }


}
