
import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var emailToBeSent: String = ""
    
    @IBAction func logIn (_ sender: Any) {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        if !Utils.isValidEmail(email) {
            sendAlert(message: "Please fill out all the fields correctly")
            return
        }
        
        if password.count < 5 {
            sendAlert(message: "The password must be at least 5 characters!")
            return
        }
        
        if !Utils.areCredentialsOK(email: email, password: password) {
            sendAlert(message: "Please type in correct username and password")
            return
        }
        
        if Utils.areCredentialsOK(email: email, password: password) {
            //emailToBeSent = email
            let moviesListViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.moviesListViewController) as! MoviesListViewController
            navigationController?.pushViewController(moviesListViewController, animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func sendAlert(message: String) {
        let alert = UIAlertController(title: "Invalid Credentials", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {action
            in
        })
        alert.addAction(action)
        present(alert, animated: true)
    }
}


