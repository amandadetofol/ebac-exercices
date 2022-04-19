import UIKit

let json = "user=amanda&password=123"

let url = URL(string: "http://127.0.0.1:8080/login")
var request = URLRequest(url: url!)

request.httpMethod = "Post"
request.httpBody = json.data(using: .utf8)

let session = URLSession(configuration: .default)
let task = session.dataTask(with: request) { data, response, error in
    if let data = data {
        if let postResponse = String(data:data, encoding: .utf8) {
            print(postResponse)
        }
    }
    
}
task.resume()
