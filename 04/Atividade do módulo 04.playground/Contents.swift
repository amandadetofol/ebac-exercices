
//utilizando o conceito de sobrecarga de métodos, decidi fazer duas funcoes que calculam o IMC


func calcularImc(altura:Double, peso:Double) -> Double { //recebe a altura e o peso como parametro e retorna um Double
    let imc : Double = peso / (altura*altura) // realiza o calculo do imc
    return imc // retorna o resultado do calulo do imc, que é um double
}

func calcularImc(nome:String , altura:Double, peso:Double) -> String { // recebe o nome, peso, e altura da pessoa como parametro e retorna uma string
    let imc : Double = peso / (altura*altura) // realiza o calculo do imc
    return "Olá \(nome), seu IMC é \(imc)!" // retorna uma mensagem dizendo que o imc da pessoa é XXXX (onde XXXX é o imc obtido pelo calculo realizado acima)
}

var meuImc : Double = calcularImc(altura: 1.67, peso: 60)
print(meuImc)


var meuImc2 : String = calcularImc(nome: "Amanda", altura: 1.67, peso: 60)
print(meuImc2)
