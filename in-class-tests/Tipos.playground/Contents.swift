//conversão de tipo => mudar de um formato para outro

var greeting : String = "Hello"
var number : Int = 3
var name : String = ""
greeting=name

var pi : Double = 3.14
// convertendo de um tipo para o outro => quando converte para Int, ele tira as casas decimais. Nesse caso, perdemos informações
number = Int(pi)

// não precisa necessariamente colocar o tipo, ele infere pelo valor atribuido
var outraConversao : Double = 3.22 as Double
print(type(of: outraConversao)) // da um print do tipo na tela


