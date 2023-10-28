//
//  MoviesTableViewController.swift
//  Projects 2 & 3 - Flixster
//
//  Created by student on 10/26/23.
//

import UIKit

class MoviesTableViewController: UITableViewController/*, UITableViewDataSource*/ {

    var movies: [Movie] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Register your custom cell
        tableView.register(UINib(nibName: "MovieCell", bundle: nil), forCellReuseIdentifier: "MovieCell")
        
        //Assigns the mock movie data to the movies property
        movies = movieData
        
        //Sample movie data
        movies = [
            Movie(title: "Movie 1", posterImageName: "poster1", description: "Description 1"),
            Movie(title: "Movie 2", posterImageName: "poster2", description: "Description 2"),
            Movie(title: "Movie 3", posterImageName: "poster3", description: "Description 3"),
            Movie(title: "Movie 4", posterImageName: "poster4", description: "Description 4"),
            Movie(title: "Movie 5", posterImageName: "poster5", description: "Description 5")
        ]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell else {
            fatalError("Unable to dequeue MovieCell")
        }

        // Configure the cell...
        let movie = movies[indexPath.row]
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        cell.posterImageView.image = UIImage(named: movie.posterImageName)
     
        //Set the image (Will need to load it from URL in part 2)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
