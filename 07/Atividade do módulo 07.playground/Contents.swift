//1) Seguindo este array abaixo, qual valor é igual a essa funcao?

var frutas = ["Maçã", "Banana", "Melão", "Pera"]
var comida = frutas[3]

//O valor retornado sera Pera, tendo em vista que estou pegando o indice 3 de uma lista que tem 4 elementos, onde os indices iniciam do 0

//2) Seguindo o mesmo exercicio acima, agora inclua a furta pera, troque de posicao banana e melao

frutas.append("Pera") //adiciono uma nova fruta no final do array usando o metodo append
frutas.swapAt(1, 2) // faco uso do recurso de swap para trocas os itens Banana e Melão de posicao através dos indices que eles ocupam no array
frutas.count //faco uso do metodo count para retornar quantos itens tem no array
print(frutas)

//3)Pensando no codigo abaixo, qual é o tipo de x? e qual o seu valor?

let d  = ["john":23 , "james":24, "vincent":34, "louis":29]
let x = d.sorted{$0.1<$1.1}.map{$0.0}

//O tipo de x é um array de string, formado depois de realizar o processamento acima sobre os nomes presentes no dicionario d

//o conteudo de x é um array que contém os nomes/chaves do dicionario d
// ["john", "james", "louis", "vincent"]
