//
//  MainTableTableViewCell.swift
//  JournalApp
//
//  Created by c94292a on 04/01/22.
//

import UIKit

class MainTableTableViewCell: UITableViewCell {

    @IBOutlet weak var byLine: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sectionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func initialize(with news : NewsData){
        self.byLine.text = news.byLine
        self.titleLabel.text = news.title
        self.sectionLabel.text = news.session

        guard let url = URL (string: news.image) else {return}
        
        URLSession.shared.dataTask(with: url){data, _, error in
            guard let data = data, error==nil else {return}
            
            var image : String = data.description
            
            DispatchQueue.main.async {
                self.newsImageView.image = UIImage(named: image)
            }
        }.resume()
        
    }
    
}
