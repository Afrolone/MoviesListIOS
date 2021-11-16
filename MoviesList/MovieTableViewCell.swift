//
//  MovieTableViewCell.swift
//  MoviesList
//
//  Created by Ant Colony on 16. 11. 2021..
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
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
    
}
