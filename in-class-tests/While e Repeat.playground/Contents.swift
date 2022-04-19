import Foundation

var count = 0


//repete um bloco de conteudo enquanto uma condicao eh verdadeira

while true {
    print(count)
    count += 1
    
    if count == 10 {
        break
    }
}


repeat {
    print(count)
    count += 1
} while count < 7
