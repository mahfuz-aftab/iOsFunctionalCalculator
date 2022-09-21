//
//  ViewController.swift
//  Mahfuz_Aftab_Blue_Calculator
//
//  Created by MAHFUZ AFTAB on 2022-09-20.
//

import UIKit

class ViewController: UIViewController {
    
    //Mark:- Outlets
    
    
    @IBOutlet weak var numberDisplay: UITextField!
    
    var startNewNumer = true
    
    //Mark:- Initializing Data Class
    var calculatorModel = Mahfuz_Calculator_Model()
  
    
    //Mark:- Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Mark:- IBActions
    
    @IBAction func buttonTouched(_ sender: UIButton) {
        
        print("Button Touched")
        print(sender.currentTitle!)
        
        let buttonText = sender.currentTitle!
        var currentValue = numberDisplay.text!
        
        switch(buttonText) {
            
        case "0","1","2","3","4","5","6","7","8","9":
            print("Inside", buttonText)
//            if (currentValue == "0"){
           if (startNewNumer == true){
                currentValue = buttonText
            }
            else{
                currentValue = currentValue +  buttonText
            }
            startNewNumer = false
            calculatorModel.updateNumber (newNumber: Double(currentValue)!)
            
//        case "+":
        case "+", "-", "x", "/" :
            calculatorModel.operation = buttonText
            startNewNumer = true
            
        case "=" :
            if (calculatorModel.secondNumber == nil ){
                calculatorModel.updateNumber (newNumber: Double(currentValue)!)
            }
            currentValue = String(calculatorModel.getCalculationResult())
            startNewNumer = true
            
        default : print(buttonText)
        }
        
        numberDisplay.text  = currentValue
        
    }
    

}

