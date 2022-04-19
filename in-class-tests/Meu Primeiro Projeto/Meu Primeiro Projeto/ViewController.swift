//
//  ViewController.swift
//  Meu Primeiro Projeto
//
//  Created by c94292a on 17/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    // MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button(_ sender: Any) {
        //label.text = "Hello you!"
        //button.setTitle("Fui clicado!", for: .normal)
        
        performSegue(withIdentifier: "second", sender: nil)
    }
    
    @IBAction func irParaPrimeiraTela(segue : UIStoryboardSegue){
        
    }
 
}

