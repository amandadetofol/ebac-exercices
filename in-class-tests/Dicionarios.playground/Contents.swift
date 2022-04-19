//colecao nao ordenada de pares, onde cada par tem um indice

var players : [String : Double] = [
    "Carlos":20,
    "Henrique" : 30,
    "João": 25,
    "Sandra" : 15
]

//para limpas
//players = [:]
players.isEmpty

players["Henrique"]=nil
players.count

players.removeValue(forKey: "João")


//adicionar uma nova chave - valor
players["Henrique"] = 23.98
players.updateValue(200, forKey: "Henrique")

for (player, points) in players{
    print("\(player) has \(points) points")
}
