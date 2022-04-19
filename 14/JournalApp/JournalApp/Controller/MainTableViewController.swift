//
//  ViewController.swift
//  JournalApp
//
//  Created by c94292a on 04/01/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var news : [Result] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getNews()
        
    }
    
    
    func getNews(){
        guard let fileUrl = Bundle.main.url(forResource: "DataMock", withExtension: "json") else {return}
        let jsonData = try! Data(contentsOf: fileUrl)
        
        do{
            let data = try JSONDecoder().decode(Welcome.self, from: jsonData)
            guard let dataRes = data.results else {return}
            self.news = dataRes
        }catch{
            print(error.localizedDescription)
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
           if let url = URL(string: news[indexPath.row].url!){
               UIApplication.shared.openURL(url)
           }
       }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
}

