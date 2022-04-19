// 1) - Qual o tipo de x, e o que será printado referente ao valor x?
var language = "Objc"

let code = { [language] in
    print(language)
}

language = "Swift"

let newCode = code
newCode()

import Foundation

let d = ["john": 23, "james": 24, "vincent": 34, "louis": 29]
let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0 }

//o tipo da constante x é [String], ou seja, um array de string
//o conteúdo da variável x será uma lista com os nomes, ordenados dos mais curos aos mais compridos ["john", "james", "louis", "vincent"]

// 2) - Criar uma Struct que aceite nome e idade, e printar os valores de saída
struct Pessoa {
    var nome : String
    var idade : Int
    
    //funcao que printa os valores de saida
    func exibirNome(){
        print(self.nome)
    }
    //funcao que printa os valores de saida
    func exibirIdade(){
        print(self.idade)
    }
}

var pessoa = Pessoa(nome: "Amanda", idade: 19)
pessoa.exibirNome()
pessoa.exibirIdade()

// 3) - Seguindo o exemplo acima, crie uma stored properties e nela calcule o IMC de uma pessoa.
// IMC = peso / (altura x altura)

struct PessoaImc {
    var nome : String
    var idade : Int
    var peso : Double
    var altura : Double
    
    //funcao que printa os valores de saida
    func exibirNome(){
        print(self.nome)
    }
    //funcao que printa os valores de saida
    func exibirIdade(){
        print(self.idade)
    }
    
    //criada uma stored propertie que retorna o valor do imc
    var imc : Double {
        return self.peso / (self.altura*self.altura)
    }
}

var outraPessoa = PessoaImc(nome: "Amanda", idade: 19, peso: 60.0, altura: 1.67)
print(outraPessoa.imc)
