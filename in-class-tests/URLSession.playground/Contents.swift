import UIKit


let sharedSession = URLSession.shared
sharedSession.configuration.allowsCellularAccess


let myDefaultConfig = URLSessionConfiguration.default
let epConfig = URLSessionConfiguration.ephemeral
let backConfig = URLSessionConfiguration.background(withIdentifier: "backConfig")

myDefaultConfig.allowsCellularAccess = false
myDefaultConfig.allowsCellularAccess
myDefaultConfig.allowsExpensiveNetworkAccess = true
myDefaultConfig.allowsConstrainedNetworkAccess = true

let myDefaultSession = URLSession(configuration: myDefaultConfig)

myDefaultSession.configuration.allowsConstrainedNetworkAccess
