//
//  NetworkManager.swift
//  JournalApp
//
//  Created by c94292a on 18/01/22.
//

import Foundation

enum ResultError {
    case badUrl, noData, invalidJson, noError
}

class NetworkManager {
    
    //singleton
    static let shared = NetworkManager()
    
    struct Constants {
        static let newsApi = URL(string: "http://web-ebac-ios.herokuapp.com/home")
    }
    
    private init(){
        
    }
    
    func getNews(completion: @escaping([Result], ResultError)->Void) {
        
        //url setup
        guard let url = Constants.newsApi else {
            completion([], .badUrl)
            return
        }
        
        // create a configuration
        let configuration = URLSessionConfiguration.default
        configuration.allowsCellularAccess = false
        configuration.allowsConstrainedNetworkAccess = true
        configuration.allowsExpensiveNetworkAccess = true
        
        //create a session
        let session = URLSession(configuration: configuration)
        
        //create a task
        let task = session.dataTask(with: url) { data, response, erro in
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
                completion([], .invalidJson)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let result = try? decoder.decode(Welcome.self, from: data)
                guard let result = result?.home?.results else {return}
                
                completion(result,.noError)
            } catch {
                print(error)
                completion([], .noData)
            }
            
        }
        
        task.resume()
        
    }
}
