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

    func initialize(with news : Result){
        self.byLine.text = news.byline
        self.newsImageView.image = UIImage(named: "images")
        self.titleLabel.text = news.title
        self.sectionLabel.text = news.section
    }
    
}
