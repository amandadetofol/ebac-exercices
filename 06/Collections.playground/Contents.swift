//collections podem ser mutaveis ou imutaveis
//um exemplo sao os arrays que soa uteis quando queremos armazenar os itens em uma ordem especifica
// toda colecao vai ter indices

var players : [String] = ["Carlos", "Henrique", "João", "Sandra"]
print(players.isEmpty)
print(players.count)

if players.count < 5{
    print("menos q cinco")
} else {
    print("maior a cinco")
}

var currentPlayer = players.first // min()
var lastPlayer = players.last // max()
let pla = players[0...2]


//manipuladno arrays - adicionando elementos
players.append("Maria")
players += ["Claudia"]
players.insert("Josefina", at: 1)

//manipulando arrays - removendo elementos
players.removeLast()
players.remove(at: 2)


//pegar o indice de um determinado jogador dentro de uma lista
var getIndex = players.firstIndex(of: "Henrique") // se nao encontrar o jogador, ele retorna nil, por isso temos que fazer o unwrapped

if let index = getIndex {
    players.remove(at: index)
}


//atualizando os elementos do array
players[0] = "Lolita"
print(players)

players [1...2] = ["Pedro", "Luan", "Maria", "Andrea"]

print(players)


//movendo elementos
let p = players.remove(at: 1)
players.insert(p, at: 0)

players.swapAt(0, 1)// troca dois indices de lugar

players.sort()
