import UIKit
import Firebase

class SignInController: UIViewController {
    
    var signIn = SignInView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    private func setup(){
        self.view = signIn
        signIn.delegate = self
    }
    
}

extension SignInController: SignInViewDelegate{
    func handleSignInButtonClick() {
        guard let email = signIn.getEmailText() else { return }
        guard let password = signIn.getPasswordText() else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
            }
            
            print("Sucess userId:", result?.user.uid ?? "This user has no user ID")
            self.navigationController?.pushViewController(LoginController(), animated: true)
        }
        
    }
    
    func handleAlradyAnUserButtonClick() {
        self.dismiss(animated: true, completion: nil)
        self.navigationController?.pushViewController(LoginController(), animated: true)
    }
}

