let yes : Bool = true
let no : Bool = false

// == comaracao
var oneEqualTwo = (1==2)

// != diferente
var noOneEqualTwo = (1 != 2)

// ! inversao de valores
var isTrue = !(1==2)


// < > maior e menos que
let isOneGratherThanTwo = (8>9)
let isOneLessThanTwo = (8 < 9)


// <= , >= menor igual e maior igual
let oitoEhMaiorOuIgualaNove = (8 >= 9)
let oitoEheMenorOuIgualANove = (8<=9)

// o operador E só retorna verdadeiro quando os dois sao true
let a = true && true
let b = true && false
let c = false && true
let d = false && false

//or retorna true quando uma das condicoes é verdadeira
let e = true || false
let f = false || false
let g = false || true
let h = false || false

let andOr = (8<9) && (8>9)
let or = (8<9) || (8>9)

let firstName = "Carlos"
let secondName = "Henrique"

let isEqual = firstName == secondName


//quando voce trabalha com booleanos, deves trabalhar com isEqual hasXValue
//verifica a ordem alfabetica C> H? nao, C vem antes
let order =   firstName < secondName
let order2 =   firstName > secondName


//toggle()
var teste = true
teste.toggle()
teste.toggle()
// muda o valor da variavel com o toggle
