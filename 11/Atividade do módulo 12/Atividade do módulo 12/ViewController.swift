//
//  ViewController.swift
//  Atividade do módulo 12
//
//  Created by c94292a on 07/12/21.
//

import UIKit

class ViewController: UIViewController {

    //crio uma variavel do tipo do meu protocolo, de modo que qualquer clase que interprete esse protocolo possa ser setada como valor dessa varivael
    var delegate : ViewControllerProtocol?
    
    //crio a minha label, setando o frame que eh onde ela vai ser exibida na tela
    // indico que o alinhamento do texto deve ser no centro e que a fonte deve ser 15
    // o numbero de linhas =0 eh interpretado pelo XCODE de forma a dizer que o numero de linhas é infinito, isso faz com que as linhas se adequem ao tamanho do texto
    var messageLabel : UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 264, width: 330, height: 40))
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        return label
    }()
    
    override func viewDidLoad() {
        // inicializo o delegate
       self.delegate = ViewControllerDelegate()
        //adiciono a label na tela
        self.view.addSubview(messageLabel)
        //view did load
        super.viewDidLoad()
        //o delegate ira setar a a menssagem como o texto da minha label
        delegate?.notificate(message: "Hi! This message is passed by a delegate function.", label: self.messageLabel)
        
        
        //agora mudo o delegate do meu app
        self.delegate = ViewControllerPrintMessageDelegate()
        //printa os itens
        delegate?.notificate(message:" Hi! This message is passed by a delegate function.", label: messageLabel)
    }
}

