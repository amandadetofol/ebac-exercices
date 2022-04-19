import UIKit
import Firebase

class HomeController: UIViewController {
    
    var homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    private func setup(){
        self.view = homeView
        homeView.delegate = self
    }
}

extension HomeController: HomeViewDelegate {
    func handleLogoutButtonTap() {
        do {
            try Auth.auth().signOut()
            navigationController?.pushViewController(LoginController(), animated: true)
        } catch let error{
            print(error.localizedDescription)
        }
    }
}
