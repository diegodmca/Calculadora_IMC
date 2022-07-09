//
//  ResultadoViewController.swift
//  Calculadora_IMC
//
//  Created by Diego Carvalho on 11/06/22.
//
import Foundation
import UIKit

class ResultadoViewController: UIViewController {
    
    var valorImc: String?
    var mensagem: String?
    var cor: UIColor?

    @IBOutlet weak var mostradorResultado: UILabel!
    @IBOutlet weak var avisoDeResultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        mostradorResultado.text = valorImc
        avisoDeResultado.text = mensagem
        view.backgroundColor = cor
        

    }
    
    @IBAction func recalcularPressionado(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
