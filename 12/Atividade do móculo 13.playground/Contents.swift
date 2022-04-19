import UIKit
import PlaygroundSupport

struct Hero {
    var name : String
    var superPower : String
}

class MainViewController : UIViewController{
    var tableView : UITableView!
    let myIdentifier = "tableViewCellId"
    let heroes = [
            Hero(name: "Super-Man", superPower: "Flying,Super strength"),
            Hero(name: "Spider-Man", superPower: "Webs"),
            Hero(name: "Black-Widow", superPower: "No super power, but good military training."),
            Hero(name: "Hulk", superPower: "Super strength"),
            Hero(name: "Doctor Strange", superPower: "Magic Resources"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView = UITableView(frame: self.view.frame)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.view.addSubview(self.tableView)
    }
    
    deinit{
        print("Goodbye TableView Intance!")
    }
}

// MARK: UITableViewDelegate
extension MainViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Did select", message: "Row at indexpath \(indexPath.row). The Hero in this indexpath-row is \(heroes[indexPath.row].name)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
}

// MARK: UITableViewDataSource
extension MainViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: self.myIdentifier)
        cell.textLabel?.text = heroes[indexPath.row].name
        cell.detailTextLabel?.text = heroes[indexPath.row].superPower
        return cell
    }
}



var tableView = MainViewController()
PlaygroundPage.current.liveView = tableView.view


