//
//  NewsData.swift
//  JournalApp
//
//  Created by c94292a on 18/01/22.
//

import Foundation

struct NewsData {
    let title : String
    let byLine: String
    let image : String
    let url : String
    let session : String
    
    init(title:String, byLine:String, image:String, url:String, session:String){
        self.title = title
        self.byLine = byLine
        self.image = image
        self.url = url
        self.session = session
    }
}
