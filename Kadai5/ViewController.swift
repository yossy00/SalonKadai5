//
//  ViewController.swift
//  Kadai5
//
//  Created by 吉田晃崇 on 2021/08/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var number1TextField: UITextField!
    @IBOutlet private weak var number2TextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    @IBAction func Calculation(_ sender: UIButton) {
        let num1 = Double(number1TextField.text ?? "") ?? 0.0
        let num2 = Double(number2TextField.text ?? "") ?? 0.0
               
        guard number1TextField.text != "" else {
            showAleat(message: "割られる数を入力して下さい")
            return
        }
        guard number2TextField.text != "0" else {
            showAleat(message: "割る数に0を入力しないで下さい")
            return
        }
        guard number2TextField.text != "" else {
            showAleat(message: "割る数を入力して下さい")
            return
        }
        
        let signedNum1 = num1
        let signedNum2 = num2
        let result = signedNum1 / signedNum2
        resultLabel.text = String(result)
    }
    
    func showAleat(message:String){
        let title = "課題5"
        let aleat = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        aleat.addAction(ok)
        present(aleat, animated: true, completion: nil)
    }
    
    
    
    
}

