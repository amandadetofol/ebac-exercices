//1 Se a seguinte declaracao fosse chamada, qual seria o resultadp?
var state = true

if state == true {
    print("Allow acess") // será mostrada a mensagem "Allow acess" no console, pois o valor de state é true
}else {
    print("Denied acess")
}

//2 Creie um loop e use de condicoes para saber se o numero é par ou ímpar, dado essa variável

var arrayNumber : Array = [1,2,3,4,5,6,7,8,9,10]

func verificaSeOsNumerosDoArraySaoParesOuImpares ()->(){//crio uma funcao que ira verificar se eh impar ou par
    for number in arrayNumber{ //declaro um for que irá percorrer o array
        if number%2==0{ // verifico se o resto da divisao do numero por 2 eh zero, se for ele eh par e se nao for, cai no else, indicando que eh ímpar
            print("\(number) é par!")
        } else {
            print("\(number) é impar!")
        }
    }
}
verificaSeOsNumerosDoArraySaoParesOuImpares()

// 3 tente fazer o mesmo exericio 2, pirem com while

var contador = 0 // declaro um contador que se inicia em 0
while contador < 10 {
    if arrayNumber[contador]%2==0{// verifico se o resto da divisao do numero que esta na posicao indicada pelo contador no array por 2 eh zero, se for ele eh par e se nao for, cai no else, indicando que eh ímpar
        print("\(arrayNumber[contador]) é par!")
    } else {
        print("\(arrayNumber[contador]) é impar!")
    }
    contador+=1 // somo o contador para pegar a proxima posicao do array
}


