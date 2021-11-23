//
//  MovieTableViewCell.swift
//  MoviesList
//
//  Created by Ant Colony on 16. 11. 2021..
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie?
    
    @IBOutlet var movieThumbnail: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var shortDesc: UILabel!
    @IBOutlet var yearLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setTheCell(_movie: Movie) {
        self.movie = _movie
        
        nameLabel.text = movie?.name
        shortDesc.text = movie?.shortDesc
        if let year = movie?.releaseYear {
            yearLabel.text = String(year)
        } else {
            return
        }
        
        movieThumbnail.image = movie?.image
        movieThumbnail.layer.masksToBounds = false
        movieThumbnail.layer.cornerRadius = movieThumbnail.frame.width/2
        movieThumbnail.layer.borderWidth = 1
        movieThumbnail.layer.borderColor = UIColor.clear.cgColor
        movieThumbnail.clipsToBounds = true

    }
}
