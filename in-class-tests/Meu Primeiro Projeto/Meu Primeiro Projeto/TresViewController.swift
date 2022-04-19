//
//  TresViewController.swift
//  Meu Primeiro Projeto
//
//  Created by c94292a on 17/11/21.
//

import UIKit

class TresViewController: UIViewController {

    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var fontSizeSlider: UISlider!
    @IBOutlet weak var label: UILabel!
    var receivedValue : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // label.text = receivedValue
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeFontSize(_ sender: Any) {
        label.font = UIFont(name: "Arial", size: CGFloat(fontSizeSlider.value))
    }
    
    @IBAction func changeAlpha(_ sender: Any) {
        label.alpha = CGFloat(alphaSlider.value)
    }
}
