//
//  MovieCell.swift
//  Flixter
//
//  Created by Dinh Viet Kien on 05/03/2023.
//
import Nuke
import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var OverviewLabel: UILabel!
    @IBOutlet weak var MovieNameLabel: UILabel!
    @IBOutlet weak var MovieImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(with movie: Movie) {
        MovieNameLabel.text = movie.original_title
        OverviewLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w200" + movie.poster_path)!, into: MovieImageView)
    }
}
