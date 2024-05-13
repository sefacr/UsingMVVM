//
//  ViewController.swift
//  UsingMVVM
//
//  Created by Sefa Acar on 13.05.2024.
//

import UIKit
import RxSwift

class MainScreen: UIViewController {
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    
    var viewModel = MainScreenViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //resultLbl.text = viewModel.result
        
        //Dinleme ve Gözlemleme
        _ = viewModel.result.subscribe(onNext: { string in
            self.resultLbl.text = string
        })
        //model içerisindeki fonksiyonlar çalışıp behavior sonuç değişkenini değiştirdiklerinde bu yapı tetiklenir.
    }

    @IBAction func sumBtnClicked(_ sender: Any) {
        if let num1 = number1TextField.text, let num2 = number2TextField.text {
            viewModel.sum(number1: num1, number2: num2)
            //resultLbl.text = viewModel.result
        }
    }
    @IBAction func multiplicationBtnClicked(_ sender: Any) {
        if let num1 = number1TextField.text, let num2 = number2TextField.text {
            viewModel.multiplication(number1: num1, number2: num2)
            //resultLbl.text = viewModel.result
        }
    }
    
}

