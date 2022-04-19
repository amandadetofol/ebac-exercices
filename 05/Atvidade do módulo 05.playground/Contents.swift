import UIKit

// 1) Qual das seguintes atribuição são válidas?
var name: String? = "Carlos" //esta atribuicao é valida pois o tipo atribuido a variavel é compativel com o seu valor. Além disso, essa variavel string poderia ser declarada como nil, tendo em vista que ela é um Optional
var age: Int  = nil // a declaracao dessa variavel nao e valida pois, nao foi indicado que ela pode receber valores nulos (nao foi colocado ? indicando o Optional). A forma correta de clarar esta variavel seria:
    // var age : Int? = nil

let kilometer: Float = 26.7//esta atribuicao é valida pois o tipo atribuido a variavel é compativel com o seu valor.
var lastName: String? = nil//esta atribuicao é valida pois o tipo atribuido a variavel é compativel com o seu valor pois essa variavel string poderia ser declarada como nil, tendo em vista que é um Optional


// 2) - Faça o unwrap com segurança com a constante, `number` e print com a condição mais legível.
var numericalString = "3"
var number = Int(numericalString)
if let number = number {
    print("\(number) is the magic number.")
} else {
    print("Não foi possível realizar a conversão de String para numero!")
}



// 3) - Se alteramos o valor da variavel numericalString para "cinco" e executar o playground, o que acontecerá?
// a - Vai funcionar sem problemas
// b - Não vai funcionar
// c - acredito que não funcione.
//Resposta: a)
//Motivo: ao modificar o valor da valor da variavel para a string cinco nao sera possível realizar a conversão para Int. No entanto, como foi feito um if let, ele cairá na condição do ELSE e mostrará a mensagem "Não foi possível realizar a conversão de String para numero!"

// 4) - A classe UIViewController possui uma propriedade chamada tabBarController. A propriedade tabBarController é optinal do tipo `UITabBarController?`.
//O próprio tabBarController contém um tabBar como propriedade.
//Complete o código abaixo preenchendo com o uso apropriado do optional chaining para acessar a propriedade `tabBar`.

var viewController = UIViewController()

if let tabBar = viewController.tabBarController?.tabBar {
    print("Aqui tem uma tabBar controller.")
} else {
    print("Aqui não tem uma tabBar controller.")
}
