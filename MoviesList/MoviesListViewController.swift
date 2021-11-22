
import UIKit

class MoviesListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
//    @IBSegueAction func ShowMovieDetailSegue(_ coder: NSCoder) -> MovieDetailViewController? {
//        guard let indexPath = tableView.indexPathForSelectedRow
//        else { fatalError("Nothing selected!") }
//        let movie = MoviesCollection.movies[indexPath.row]
//        return MovieDetailViewController() //coder: coder, movie: movie
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        let nib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MovieTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
            
        registerTableViewCells()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MoviesCollection.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell
        //if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as? MovieTableViewCell {
          //      return cell
           // }
        else { fatalError("Could not create MovieCell") }
        let movie = MoviesCollection.movies[indexPath.row]
        cell.nameLabel.text = movie.name
        cell.shortDesc.text = movie.shortDesc
        cell.yearLabel.text = String(movie.releaseYear)
        cell.movieThumbnail.image = movie.image
        
        
        
        
        cell.movieThumbnail.layer.masksToBounds = false
        cell.movieThumbnail.layer.cornerRadius = cell.movieThumbnail.frame.width/2
        cell.movieThumbnail.layer.borderWidth = 1
        cell.movieThumbnail.layer.borderColor = UIColor.clear.cgColor
        cell.movieThumbnail.clipsToBounds = true
        
        
        
        print(cell.movieThumbnail.frame.width/2)
        
        return cell
    }
    
    
    private func registerTableViewCells() {
        let textFieldCell = UINib(nibName: "CustomTableViewCell",
                                  bundle: nil)
        tableView.register(textFieldCell,
                                forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //performSegue(withIdentifier: "ShowMovieDetailSegue", sender: nil)
        let movie = MoviesCollection.movies[indexPath.row]
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MovieDetailViewController") as! MovieDetailViewController
        print("MOVIEEE")
        print(movie)
        vc.movie = movie
        print("VCC")
        print(vc.movie)
        navigationController?.pushViewController(vc, animated: true)
    }
}


