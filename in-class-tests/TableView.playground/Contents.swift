import UIKit
import PlaygroundSupport

class MainViewController : UIViewController{
    var tableView : UITableView!
    let myIdentifier = "tableViewCellId"
    let items = ["EBAC" , "Curso", "iOS", "Develop", "Mobile"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView = UITableView(frame: self.view.frame)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.view.addSubview(self.tableView)
    }
}

// MARK: UITableViewDelegate
extension MainViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Did select", message: "Row at indexpath \(indexPath.row)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
}

// MARK: UITableViewDataSource
extension MainViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: self.myIdentifier)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}


var tableView = MainViewController()
PlaygroundPage.current.liveView = tableView.view
