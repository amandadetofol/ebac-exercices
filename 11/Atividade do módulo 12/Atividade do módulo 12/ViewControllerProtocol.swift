//
//  ViewControllerDelegate.swift
//  Atividade do módulo 12
//
//  Created by c94292a on 07/12/21.
//

import Foundation
import UIKit

//crio o protocolo que irei utilizar dentro do delegate, com uma funcao que recebe uma string e uma ui label
protocol ViewControllerProtocol{
    func notificate(message:String, label:UILabel)
}
