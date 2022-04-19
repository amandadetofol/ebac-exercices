//protocolos => empacotar os modulos de funcionalidades que expadem alem da classe
// forma de reutilizar o código
// quando uma classe implementa um protocolo, a classe assina um contrato para informar a classe que que irá implementar todos os métodos e propriedades do protocolo
// parte mais abstrata
// conjunto comum de propriedades e comportamentos que os tipos completos vão implementar, o protocol em si nao possui nenhuma implementacao
//protocol => funciona como um tipo de heranca
// nao pdoemos herdar de mais de uma classse, mas uma unica classe pode herdadar mais de um protocol

import Foundation

enum Direction{
    case left
    case right
}

protocol GoToPlace {
    var place:String {get set}
    func goToPlace()->String
}

//forma de criar um protocol
// nome sempre maisuculo
protocol Vehicle {
    var name : String {get set} //get e set indica que pode pegat e mudar o valor da var
    var direction : Direction {get set}
    func accelerate() //assinatura dos metodos
    func stop() //assinatura dos metodos
    func turn(_ direction : Direction)
    
    init(initialVehicle : String)
}

struct Car : Vehicle, GoToPlace {
    var place: String = "Home"
    
    func goToPlace() -> String {
        return "I am going to \(place)"
    }
    
  
    var direction: Direction = .right
    var name: String
    var breaksApplied : Bool = false
    var velocity : Int = 0
    
    init(initialVehicle: String) {
        self.name = initialVehicle
        
    }
    
    func turn(_ direction: Direction) {
        print("Turned\(direction)")
    }
    
    func accelerate() {
        print(velocity+80)
    }
    
    func stop() {
        print(velocity, breaksApplied)
    }
}

var car = Car(initialVehicle: "my top car")
car.velocity = 0
car.breaksApplied = false
car.turn(.right)
car.accelerate()
car.stop()
