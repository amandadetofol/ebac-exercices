//
//  SecondViewController.swift
//  Meu Primeiro Projeto
//
//  Created by c94292a on 17/11/21.
//

import UIKit

class SecondViewController : UIViewController {
    
    //metodo que eh carregado uma vez no ciclo de vida do controlador
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func fechar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "tres"{
            let controller = segue.destination as? TresViewController
            
            //abre a tela em tela cheia
            controller?.modalPresentationStyle = .fullScreen
            
           // controller?.receivedValue="hi"
        }
    }
}
