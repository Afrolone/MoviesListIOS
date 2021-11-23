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
        setTheView()
        super.viewDidLoad()
    }
    
    fileprivate func setTheView() {
        descriptionTextView.text = self.movie?.longDesc
        self.title = self.movie?.name
        imageView.image = self.movie?.image
    }

}
