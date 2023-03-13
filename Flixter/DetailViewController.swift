//
//  DetailViewController.swift
//  Flixter
//
//  Created by Dinh Viet Kien on 05/03/2023.
//
import Nuke
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var voteAverageLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    var movie: Movie?
    var poster: Poster?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        if let movie = movie {
            Nuke.loadImage(with:  URL(string: "https://image.tmdb.org/t/p/original" + movie.backdrop_path)!, into: backgroundImageView)

            // Set labels with the associated track values.
            titleLabel.text = movie.original_title
            voteAverageLabel.text = "Vote average: " + String(movie.vote_average)
            voteLabel.text = "Vote count: " + String(movie.vote_count)
            overviewLabel.text = movie.overview
            popularityLabel.text = "Popularity: " + String(movie.popularity)
            // Do any additional setup after loading the view.
        } else {
            Nuke.loadImage(with:  URL(string: "https://image.tmdb.org/t/p/original" + poster!.backdrop_path)!, into: backgroundImageView)

            // Set labels with the associated track values.
            titleLabel.text = poster?.original_title
            voteAverageLabel.text = "Vote average: " + String(poster!.vote_average)
            voteLabel.text = "Vote count: " + String(poster!.vote_count)
            overviewLabel.text = poster!.overview
            popularityLabel.text = "Popularity: " + String(poster!.popularity)
            // Do any additional setup after loading the view.
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
