//
//  MovieDetailViewController.swift
//  MoviesList
//
//  Created by Ant Colony on 14. 11. 2021..
//

import UIKit

class MovieDetailViewController: UIViewController {
    var movie: Movie?
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        print("VIEWDIDLOAD")
        print(movie)
        descriptionTextView.text = self.movie?.longDesc
        self.title = self.movie?.name
        imageView.image = self.movie?.image
        super.viewDidLoad()
        
    }
    
    
    
//    required init?(coder: NSCoder) { fatalError("Some fatal error in MovieDetailViewControler initializer!") }
//
//    init?(coder: NSCoder, movie: Movie) {
//        self.movie = movie
//        super.init(coder: coder)
//    }
    
}
