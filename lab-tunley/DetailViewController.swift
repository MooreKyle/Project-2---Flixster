//
//  DetailViewController.swift
//  Projects 2 & 3 - Flixster
//
//  Created by Kyle Moore on 10/29/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    
    //@IBOutlet weak var genreLabel: UILabel!
    //@IBOutlet weak var releaseDateLabel: UILabel!
    //@IBOutlet weak var durationLabel: UILabel!

    // TODO: Pt 1 - Add a movie property

    // A property to store the movie object.
    // We can set this property by passing along the movie object associated with the movie the user tapped in the table view.
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `posterImageURL` URL and set it on the image view.
        Nuke.loadImage(with: movie.posterImageURL, into: movieImageView)

        // Set labels with the associated movie values.
        movieTitleLabel.text = movie.title
        movieOverviewLabel.text = movie.overview
        
        //albumLabel.text = track.collectionName
        //genreLabel.text = track.primaryGenreName

        // Create a date formatter to style our date and convert it to a string
        //let dateFormatter = DateFormatter()
        //dateFormatter.dateStyle = .medium
        //movieReleaseDateLabel.text = dateFormatter.string(from: movie.releaseDate)

        // Use helper method to convert milliseconds into `mm:ss` string format
        //durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)

    }



}
