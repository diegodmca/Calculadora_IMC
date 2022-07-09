//
//  ViewController.swift
//  Calculadora_IMC
//
//  Created by Diego Carvalho on 11/06/22.
//

import UIKit

class CalcularViewController: UIViewController {
    
    var calculoImc = CalculoIMC()
    
    @IBOutlet weak var alturaLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var botaoCalcular: UIButton!
    
    @IBOutlet weak var alturaSliderOutlet: UISlider!
    @IBOutlet weak var pesoSliderOutlet: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func alturaSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        alturaLabel.text = "\(height)m"
    }
    
    @IBAction func pesoSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        pesoLabel.text = "\(weight)Kg"
    }
    
    @IBAction func botaoCalcularPressionado(_ sender: UIButton) {
        let peso = pesoSliderOutlet.value
        let altura = alturaSliderOutlet.value
        calculoImc.calculaOImc(altura: altura, peso: peso)
      
        
        self.performSegue(withIdentifier: "mostraResultado", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostraResultado"{
            let destinationVC = segue.destination as! ResultadoViewController
            destinationVC.valorImc = calculoImc.valorDoImc()
            destinationVC.mensagem = calculoImc.getMensagem()
            destinationVC.cor = calculoImc.getCor()
        }
    }
    
    
}

