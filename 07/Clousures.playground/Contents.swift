var multiplyAnonimus = {(a:Int , b:Int) -> Int in
    return a*b
}

var res = multiplyAnonimus(3,99)

multiplyAnonimus = {(a: Int, b: Int) -> Int in a * b}
multiplyAnonimus = {(a,b) in a*b}
multiplyAnonimus = {$0 * $1}

let es = multiplyAnonimus(09,987)


var pla = ["Carlos", "H", "J", "S"]

let stringLogn = pla.sorted { $0.count > $1.count}
print(stringLogn)

pla.forEach { print($0)
}

let map = pla.map({ p in
    p.uppercased()
})

let filterNanme = pla.filter { item in
    item.count > 2
}

//structs e ENUM

struct User {
    let fisrtName : String
    let lastName : String
    var email : String
    var isActive : Bool
    
    var fullName : String { // nao ficam alocadas na memoria, so retornam um valor quando chamadas
        //propriedade computada - STORED PROD
        return "\(fisrtName) \(lastName)"
    }
    
    func printFullName(){
        print ("\(fisrtName) \(lastName)")
    }
    
    //para poder alterar o valor, tenho que dizer que ela eh mutavel
    mutating func activeUser(){
        isActive=true
    }
    
}

// se declarar como let n consigo alterar os valores e propriedades do item depois
var user  = User(fisrtName: "Teste", lastName: "Teste", email: "TESTE@gmail.com", isActive: true)

// ou posso usar:
//User.init(fisrtName: <#T##String#>, lastName: <#T##String#>, email: <#T##String#>, isActive: <#T##Bool#>)

print(user.fullName)
user.printFullName()

user.email = "123@123.com.br" //alterar propriedade
print(user.email)


//struct passa valor por tipo valor e a classe por tipo referencia
//atribuicao de variavel do tipo valor atribui o valor fazendo uma copia e na classe ele aponta para um valor na mem


//ENUM
//lista de valores que define um tipo comum e permite trabalhar com valores de maneira mais segura
enum MoveDirection{
    case forward
    case back
    case left
    case right
}

var move = MoveDirection.left

func doMove(_ move : MoveDirection){
    
    switch move {
        
    case .left:
        print("esquerda")
        
    case .forward:
        print("frente")
        
    case .back:
        print("tras")
        
    case .right:
        print("direita")
        
    }

}

enum number:Int {
    case a = 1
    
    case b = 2
    
    case c
    case d
    case e
}

print(number.d.rawValue)
doMove(move)
doMove(.right)

enum medir {
    case peso (Double)
    case altura (Int)
    case tamanho (l: Double, a : Double)
}

switch medir.self {
    
case .peso(let age):
        print(age)
    default:
        break
}

var medir1 = medir.peso(33.3)
