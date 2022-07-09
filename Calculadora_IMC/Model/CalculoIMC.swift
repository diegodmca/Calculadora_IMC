//
//  calculoIMC.swift
//  Calculadora_IMC
//
//  Created by Diego Carvalho on 11/06/22.
//

import Foundation
import UIKit

struct CalculoIMC{
    
    var imc: IMC?
    
    func valorDoImc () -> String {
        let imc1Decimal = String(format: "%.1f", imc?.valor ?? 0.0)
            return imc1Decimal
    }
    
     mutating func calculaOImc (altura: Float, peso: Float){
         let imcValor =  peso / pow(altura, 2)
         if imcValor < 18.5 {
             imc = IMC(valor: imcValor, mensagem: "Abaixo do peso",cor: UIColor.blue )
         }else if imcValor < 24.9 {
             imc = IMC(valor: imcValor, mensagem: "Normal", cor: UIColor.green)
         }else{
             imc = IMC(valor: imcValor, mensagem: "Sobrepeso", cor: UIColor.red)
         }
         
    }
    
    func getMensagem() -> String{
       return imc?.mensagem ?? "Sem Mensagem"
       
    }
    
    func getCor() -> UIColor{
        return imc?.cor ??  UIColor.white
        
        
    }
    
  
    
}
