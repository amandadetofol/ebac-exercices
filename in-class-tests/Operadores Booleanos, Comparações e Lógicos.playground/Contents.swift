//operador de incremento +=

import CoreFoundation
var saldo : Int = 10
saldo += 10

//ou

saldo = saldo + 7



//operador de decremento -=
saldo -= 3

//ou

saldo = saldo - 2

//mutiplicando
saldo *= 3

//dividindo
saldo /= 2


// operadores de comparacao - retorna um booleano
var result = saldo > 20
var result2 = saldo > 800


//operadores lógicos
var apple : Bool = true
var android : Bool = false
var xaiomi : Bool =  true

//operador E -> só da verdadeiro quando os dois são verdadeiros
result = apple && android //verdadeiro E falso = falso
result = apple && xaiomi  //verdadeiro E verdadeiro = verdadeiro

//operador OU
var testeOr : Bool = false
var orTeste : Bool = true

result = testeOr || orTeste // ele retorna verdadeiro quando um dos dois é verdadeiro

//operador de negação
var beer = true
!beer // o sinal de exclamação(!) me traz o valor booleano contrário, neste caso false

//operador de diferente
result = saldo != 30 // se X é diferente de Y

result = saldo == 30
!result

