import PlaygroundSupport



import UIKit



import var CommonCrypto.CC_MD5_DIGEST_LENGTH



import func CommonCrypto.CC_MD5



import typealias CommonCrypto.CC_LONG







PlaygroundPage.current.needsIndefiniteExecution = true







func MD5(string: String) -> String {



    let length = Int(CC_MD5_DIGEST_LENGTH)



    let messageData = string.data(using:.utf8)!



    var digestData = Data(count: length)



    



    _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in



        messageData.withUnsafeBytes { messageBytes -> UInt8 in



            if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress {



                let messageLength = CC_LONG(messageData.count)



                CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)



            }



            return 0



        }



    }



    return digestData.map { String(format: "%02hhx", $0) }.joined()



}







// API



let baseURL = "http://gateway.marvel.com"



let path = "v1/public/characters"







// Auth



let publicKey = "c07a1f488d426b3c572b9ddffe0c1665"



let privateKey = "da41f4cb2d6a0fc0a8a724cdf684fa7c9553857b"







// Timestamp



let ts = Int(Date().timeIntervalSince1970)







// Hash



let content = String(ts) + privateKey + publicKey



let hash = MD5(string: content)







// URL



let url = baseURL + "/" + path + "?" + "ts=\(ts)" + "&apikey=\(publicKey)" + "&hash=\(hash)"
print(url)

func a (){
    if let url = URL(string: url) {
        
        DispatchQueue.main.async {
            URLSession.shared.dataTask(with: url) { data, response, error in
                print(data)
                print(error)
                if let data = data {
                    let res = String(data: data, encoding: .utf8)
                    print(res ?? "==>")
                }
            }.resume()
        }

    }
}


a()
