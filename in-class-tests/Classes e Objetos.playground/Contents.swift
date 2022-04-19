class Person {
    var hair:String
    var age: Double
    private var size : Double // o private indica que só pode ser usando no contexto da classe
    var name : String
    var lasName : String
    
    //na classe os inicializadores sao obrigatorios
    init(hair:String, age:Double, size:Double, name:String, lasname:String){
        self.age = age
        self.hair = hair
        self.size = size
        self.name = name
        self.lasName = lasname
    }
}

//heranca -> diminui o codigo publicaso
// uma classe pode só herdar de uma unica classe
class Student : Person {
    var grade : Double
    var course : String
    
    //convenience intializer => um init onde passo só os attrs que eu quero
    convenience init(grade:Double, course:String) {
        self.init(grade: grade, couse: course, hair: "", age: 0, size: 0, name: "", lasname: "")
    }
    
    init(grade : Double, couse : String, hair:String, age:Double, size:Double, name :String, lasname:String){
        self.grade = grade
        self.course = couse
        
        super.init(hair: hair, age: age, size: size, name: name, lasname: lasname)
    }
    
    func getGrade()-> Double {
        return grade
    }
}

var student = Student(grade: 9.0, couse: "ios", hair: "longo", age: 19, size: 1.60, name: "eu", lasname: "mim")
student.getGrade()


//fileprivate => so no mesmo arquivo
//internal => acessivel em todo lugar do modulo - eh o default
//public => acessivel de qualquer lugar, desde que importe o modulo
//open => mesmo que o public, mas tem como substituir o codigo em outro modulo


class Account : Person {
    var saldo : Double = 0.0
    
    func deposito (value : Double) ->Double {
        return value + saldo
    }
}


//polimorfismo => em tempo de execucao e em tempo de complicacao
//polimofirmos em tempo de compilacao - sobrecarga de metodos
//em tempo de execucao => invoca um metodo real durante a invocacao do programa - funciona junto com a heranca

class Animal {
    func makeNoise(){
        print("barulhoooooo")
    }
    
    
    deinit{print("removendo a classe")}
    
    
}

class Gato : Animal {
    override func makeNoise() {
        print("miauzinho fofo")
    }
}

class Cao : Animal {
    override func makeNoise() {
        print("auauauaua")
    }
}

var animal : Animal = Gato()
animal.makeNoise()
animal = Cao()
animal.makeNoise()

animal = Animal()
animal.makeNoise()


//type casting
//como todos herdam de animal, o pets eh um array de animal
let pets = [Cao(), Gato(), Cao(), Gato()]

for pet in pets{
    if let dog = pet as? Cao {
        dog.makeNoise()
    }
    
    switch pet {
        case let dog as Cao:
            dog.makeNoise()
        case let gato as Gato:
            gato.makeNoise()
            
        default:
            break
        }
    
}

//extensions
extension Person{
    func dizerOla()->(){
        print("helou meu amigo")
    }
}
var animalzinh : Animal? = Gato()
animalzinh = nil
