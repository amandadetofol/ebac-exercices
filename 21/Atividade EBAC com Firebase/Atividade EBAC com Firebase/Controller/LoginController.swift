import UIKit
import Firebase

class LoginController: UIViewController {
    
    var loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    func completeLogin(){
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(HomeController(), animated: true)
        }
       
    }
    
    private func setup(){
        self.view = loginView
        loginView.delegate = self
    }
    
}

extension LoginController: LoginViewDelegate  {
    func handleNotAnUserButtonClick() {
        self.dismiss(animated: true, completion: nil)
        self.navigationController?.pushViewController(SignInController(), animated: true)
    }
    
    func handleLoginButtonClick() {
        guard let email = loginView.getEmailText() else { return }
        guard let password = loginView.getPasswordText() else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { [self] result, error in
            
            if let error = error  {
                print(error)
            }
            
            if result != nil {
                completeLogin()
            }
            
        }
        
    }
}
