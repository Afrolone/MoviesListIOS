
import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var emailToBeSent: String = ""
    
    @IBAction func logIn (_ sender: Any) {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        if !isValidEmail(email) {
            sendAlert(message: "Please fill out all the fields correctly")
            return
        }
        
        if password.count < 5 {
            sendAlert(message: "The password must be at least 5 characters!")
            return
        }
        
        if !areCredentialsOK(email: email, password: password) {
            sendAlert(message: "Please type in correct username and password")
            return
        }
        
        if areCredentialsOK(email: email, password: password) {
            emailToBeSent = email
            performSegue(withIdentifier: "ShowMovieListSegue", sender: nil)
            //let moviesListViewController = self.storyboard?.instantiateViewController(identifier: //Constants.Storyboard.moviesListViewController) as? MoviesListViewController
            
           // self.view.window?.rootViewController = moviesListViewController
           // self.view.window?.makeKeyAndVisible()
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func sendAlert(message: String) {
        let alert = UIAlertController(title: "Invalid Credentials", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {action
            in
        })
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    func areCredentialsOK(email: String, password: String) -> Bool {
        return email == "test@antcolony.io" && password == "Tutorial"
    }
    
}


