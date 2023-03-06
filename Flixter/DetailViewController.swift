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
    var movie: Movie!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with: movie.backgroundURL, into: backgroundImageView)

        // Set labels with the associated track values.
        titleLabel.text = movie.title
        voteAverageLabel.text = "Vote average: " + String(movie.voteAverage)
        voteLabel.text = "Vote count: " + String(movie.voteCount)
        overviewLabel.text = movie.overview
        popularityLabel.text = "Popularity: " + String(movie.popularity)
        // Do any additional setup after loading the view.
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
