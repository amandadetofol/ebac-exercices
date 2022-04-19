// declaracoes de IF

let yes : Bool = true
let no : Bool = false

if yes { //tratamento para quando a condicao for true
    print("A condicao é verdadeira! ;)")
} else { //tratamento para quando a condicao for false
    print("A condicao é falsa :(")
}

let name = "Caros"

if name == "Hnerique"{
    print(name)
} else if name == "Carlos" {
    print(name)
} else {
    print("Nenhum nome")
}


//operador ternario
//indicado para quando a condicao é simples e curta
var namex = name == "Carlos" ? "Carlos" : "Outro nome"

let day = 5
if day == 3 {
    print("sim")
} else if day > 2 {
    print("é")
}

if 8>9  || 8<9 {
    print("Uma das condiecoes é verdadeira")
} else {
    print("Nenhuma das condicoes é verdadeira")
}
