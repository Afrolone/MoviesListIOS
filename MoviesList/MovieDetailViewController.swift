//
//  MovieDetailViewController.swift
//  MoviesList
//
//  Created by Ant Colony on 14. 11. 2021..
//

import UIKit

class MovieDetailViewController: UITableViewController {
    let movie: Movie
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    //@IBOutlet var yearLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITableView.appearance().tableHeaderView = .init(frame: .init(x: 0, y: 0, width: 0, height: CGFloat.leastNonzeroMagnitude))
        imageView.image = movie.image
        nameLabel.text = movie.name
        //yearLabel.text = String(movie.releaseYear)
        descriptionTextView.text = movie.longDesc
    }
    
    required init?(coder: NSCoder) { fatalError("Some fatal error in MovieDetailViewControler initializer!") }
    
    init?(coder: NSCoder, movie: Movie) {
        self.movie = movie
        super.init(coder: coder)
    }
}
