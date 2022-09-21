//
//  Mahfuz_Calculator_Model.swift
//  Mahfuz_Aftab_Blue_Calculator
//
//  Created by MAHFUZ AFTAB on 2022-09-20.
//

import Foundation

class Mahfuz_Calculator_Model {
    var firstNumber : Double?
    var secondNumber : Double?
    var operation : String?
    
    func updateNumber (newNumber: Double){
        if (firstNumber == nil || operation == nil){
            firstNumber = newNumber
        }
        
        else {
            secondNumber = newNumber
        }
    }
    
    func getCalculationResult() -> Double {
        var result: Double
        switch(operation){
        case "+" :
            result = firstNumber! + secondNumber!
            print("F:", firstNumber!)
            print("S:", secondNumber!)
        case "-" :
            result = firstNumber! - secondNumber!

        case "x" :
            result = firstNumber! * secondNumber!

        case "/" :
            result = firstNumber! / secondNumber!
            
        default:
            result = 0.0
        }
        return result
    }
    
    func doReset(){
        firstNumber = nil
        secondNumber = nil
        operation =  nil
    }
}
