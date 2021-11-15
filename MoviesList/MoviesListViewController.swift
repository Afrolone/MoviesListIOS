
import UIKit

class MoviesListViewController: UITableViewController {

    @IBSegueAction func ShowMoveDetailSegue(_ coder: NSCoder) -> MovieDetailViewController? {
        guard let indexPath = tableView.indexPathForSelectedRow
        else { fatalError("Nothing selected!") }
        let movie = MoviesCollection.movies[indexPath.row]
        return MovieDetailViewController(coder: coder, movie: movie)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MoviesCollection.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(MovieCell.self)", for: indexPath) as? MovieCell
        else { fatalError("Could not create MovieCell") }
        let movie = MoviesCollection.movies[indexPath.row]
        cell.nameLabel.text = movie.name
        cell.shortDesc.text = movie.shortDesc
        cell.movieThumbnail.image = movie.image
        return cell
    }
}


