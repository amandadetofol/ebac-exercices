var greeting = "Hello, "

//funcoes sem params
func printGreeting(){
    print(greeting)
}

printGreeting()

//ficar atento ao nome da funcao e dos parametros
//funcoes com parametros
func printGreet(say : String, name : String){ //parametro
    print(say + name)
}

printGreet(say: greeting, name: "Amanda") //argumento

func greet(person : String, from hometown:String){
    print("Hello \(person) from \(hometown)! :)")
}

greet(person: "Amanda", from: "Blumenau")


//funcao -> bloco de código para executar uma determinada tarefa

//omitindo parametros nas funcoes
// coloco o _ antes dos nomes do parametros
//para retornar valores, uso o retuns
//os parametros de uma funcao sao let -> constantes, porem usando o inout consigo alterar esses params, coisa que nao era permitido antes

func greet2(_ person : String, from hometown:String)->String{
    return("Hello \(person) from \(hometown)! :)")
}

greet2("Amanda", from: "Blumenau")


// nao podemos passar parametros com valores literais, constantes e funcoes para funcoes com inout, somente variaveis

// o inout muda o valor da variavel que foi passada como parametro!
func printTest(_ text : inout String)->String{
    text = "oioi"
    return text
}

var meuTexto = "olá"

//preciso lembrar de inserir um & antes do nome da variavel
print(printTest(&meuTexto))
print(meuTexto)


//override de funcoes - ou sobrecarga de funcoes
//posso declarar varias funcoes com o mesmo nome, desde que elas tenham parametros diferentes ou tipo de retorno diferente

func printTest(text : inout String)->String{
    text = "oioi"
    return text
}
