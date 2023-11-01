//
//  MovieCell.swift
//  Project 3 - Flixster Part 2
//
//  Created by Kyle Moore on 10/31/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    /// Configures the cell's UI for the given movie.
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.title
        directorLabel.text = movie.director

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.posterURL, into: movieImageView)
    }

}
