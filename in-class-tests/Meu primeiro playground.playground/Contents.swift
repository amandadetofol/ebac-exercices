import UIKit
import PlaygroundSupport

class MyViewController : UIViewController{

    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .red
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hi!"
        label.textColor  = .white
        
        view.addSubview(label)
        self.view = view
    }
}

PlaygroundPage.current.liveView = MyViewController()
