//
//  MovieDetailViewController.swift
//  MoviesList
//
//  Created by Ant Colony on 14. 11. 2021..
//

import UIKit

class MovieDetailViewController: UIViewController {
    let movie: Movie
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = movie.image
        nameLabel.text = movie.name
        yearLabel.text = String(movie.releaseYear)
        descriptionTextView.text = movie.longDesc
    }
    
    required init?(coder: NSCoder) { fatalError("Some fatal error in MovieDetailViewControler initializer!") }
    
    init?(coder: NSCoder, movie: Movie) {
        self.movie = movie
        super.init(coder: coder)
    }
}
