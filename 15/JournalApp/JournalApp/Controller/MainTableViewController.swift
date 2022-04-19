//
//  ViewController.swift
//  JournalApp
//
//  Created by c94292a on 04/01/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var news : [NewsData] = []
    var acitvityView : UIActivityIndicatorView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showActivityInIndicator()
        NetworkManager.shared.getNews { result, error in
            if error == .noError{
                for item in result {
                    if let imageURL = item.media?.first?.mediaMetadata?.last?.url  {
                        guard let title = item.title else {return}
                        guard let url = item.url else {return}
                        guard let byline = item.byline else {return}
                        guard let section = item.section else {return}
                                
                        let data = NewsData(title: title,
                                            byLine: byline,
                                            image: imageURL,
                                            url: url,
                                            session: section)
                        
                        self.news.append(data)
                    }
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                    self.hideActivityInIndicator()
                }
            } else {
                print(error)
                self.hideActivityInIndicator()
            }
            
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainTableTableViewCell
        let data =  self.news[indexPath.row]
        cell.initialize(with: data)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           if let url = URL(string: news[indexPath.row].url){
               UIApplication.shared.openURL(url)
           }
       }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    func showActivityInIndicator(){
        acitvityView = UIActivityIndicatorView(style: .large)
        guard let acitvityView = acitvityView else {return}
        self.view.addSubview(acitvityView)
        acitvityView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            acitvityView.widthAnchor.constraint(equalToConstant: 70),
            acitvityView.heightAnchor.constraint(equalToConstant: 70),
            acitvityView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            acitvityView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)

        ])
        acitvityView.startAnimating()
    }
    
    func hideActivityInIndicator(){
        self.acitvityView?.stopAnimating()
    }
}

