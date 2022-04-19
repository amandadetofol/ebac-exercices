import UIKit

//strings sao uma colecao de caracteres
var greeting = "Hello, playground"

print(greeting.count) //retorna o tamanho da string

for char in greeting {
    print(char)
}

let index =  greeting.startIndex
let lastIndex = greeting.index(before: greeting.endIndex)
let char  = greeting[index]
let lastChar = greeting[lastIndex]
print(char)
print(lastChar)


let name = "Amanda Detofol"
let spaceIndex = name.firstIndex(of: " ")! //encontra o indice dpo primeiro espaco
let firstName = name[name.startIndex..<spaceIndex]
let lastName = name[name.index(after: spaceIndex)...]

//raw string
//usando quando queremso evitar acaracteres especiaise interpolacao

let rawString = #"Teste com raw string  \#(" interpolacao")"#



//optionals
// o swift nao permite valores nulos
//evita null pointer exception
// ? indica que pode ser nulo
var teste : String
var age : Int
var esult : Int?

teste = "eai"
age = 30
esult = Int(teste)

if let result = esult {
    print(result * 2)
} else {
    print("O valor é nil e ia crachar o app")
}

func getPerson(person:String?){
    guard let name = person else {
        print("no person")
        return
    }
    
    print("Hello \(name)")
}


var color : UIColor = .red


class ViewController : UIViewController{
    var label : UILabel?
}
