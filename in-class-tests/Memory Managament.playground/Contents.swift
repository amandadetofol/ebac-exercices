import UIKit
import CoreGraphics

class Recipe{
    let title : String
    unowned  let cooker : Cooker
    weak var chef : Chef?
    lazy var description : ()->String = { [unowned self] in
        "\(self.title)?"
    }
    
    init(title:String, cooker:Cooker){
        self.title=title
        self.cooker = cooker
    }
    
    deinit{
        print("Goodbye recipe \(title)")
    }
}


class Cooker{
    let name:String
    var recipe : [Recipe] = []
    
    
    init(name:String){
        self.name=name
    }
  
    
    deinit{
        print("Goodbye cooker \(name)")
    }
}

class Chef {
    let name : String
    var recipes : [Recipe] = []
    
    init(name:String){
        self.name=name
    }
    
    deinit{
        print("Goodbye Chef \(name)")
    }
}

//fora do bloco de do-catch a classe não existe mais
do {
    let cooker = Cooker(name: "Ratatoulie")
    let recipe = Recipe(title: "Gerenciando Memória", cooker:cooker )
    let chef = Chef(name: "ARC")
    print(recipe.description)
    recipe.chef = chef
    cooker.recipe.append(recipe)
    chef.recipes = [recipe]
}
