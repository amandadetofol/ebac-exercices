//Criando uma nova classe empregado
class Empregado{
    //propriedades da da classe: nome e sobrenome do tipo string
    var nome : String
    var sobrenome : String
    
    //monto o init dos argumentos com propriedades com os mesmos nomes do argumentos
    init (nome : String, sobrenome : String){
        self.nome = nome
        self.sobrenome = sobrenome
        exibirValores()
    }
    
    //criado um convenience init para quando nao sei qual eh o sobrenome da pessoa
    convenience init(nome : String){
        self.init(nome: nome, sobrenome: "")
    }
    
    func exibirValores()->(){
        print("\(self.nome) \(self.sobrenome)")
    }
    
}

//crio as instancias da classe empregado
var empregado01 =  Empregado(nome: "Joao", sobrenome: "Silva")
var empregado02 = Empregado(nome: "Maria", sobrenome: "Souza")
var empregado03 = Empregado(nome: "Josefina")
