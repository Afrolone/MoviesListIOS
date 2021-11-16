
import UIKit

class MoviesListViewController: UITableViewController {
    
    @IBSegueAction func ShowMovieDetailSegue(_ coder: NSCoder) -> MovieDetailViewController? {
        guard let indexPath = tableView.indexPathForSelectedRow
        else { fatalError("Nothing selected!") }
        let movie = MoviesCollection.movies[indexPath.row]
        return MovieDetailViewController(coder: coder, movie: movie)
    }
    //@IBSegueAction func ShowMovieDetailSegue(_ coder: NSCoder) -> UIViewController? {
        
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        let nib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "MovieTableViewCell")
        self.tableView.dataSource = self
        self.tableView.delegate = self
            
        self.registerTableViewCells()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MoviesCollection.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
        self.tableView.register(textFieldCell,
                                forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowMovieDetailSegue", sender: nil)
    }
}


