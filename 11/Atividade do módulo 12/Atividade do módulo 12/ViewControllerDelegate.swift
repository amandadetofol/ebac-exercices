//
//  ViewControllerDelegate.swift
//  Atividade do módulo 12
//
//  Created by c94292a on 07/12/21.
//

import Foundation
import UIKit

//implemento o protocolo criado e indico que a funcao que recebe uma string e uma label ira setar o texto da label como a string que foi passada
class ViewControllerDelegate : ViewControllerProtocol{
   
    func notificate(message: String, label:UILabel) {
        label.text = message
    }
}

//implemento o protocolo criado e indico que a funcao que recebe uma string e uma label, onde ele ira somente printar os itens na tela
class ViewControllerPrintMessageDelegate : ViewControllerProtocol{
   
    func notificate(message: String, label:UILabel) {
       print(message)
        print(label)
    }
}

