//
//  MathRepository.swift
//  UsingMVVM
//
//  Created by Sefa Acar on 13.05.2024.
//

import Foundation
import RxSwift

class MathRepository {
    //var result = "0"
    var result = BehaviorSubject<String>(value: "0")//Tanımlama
    
    func sum(number1:String, number2:String) {
        if let num1 = Int(number1), let num2 = Int(number2) {
            let total = num1 + num2
            //result = String(total)
            result.onNext(String(total))
        }
    }
    
    func multiplication(number1:String, number2:String) {
        if let num1 = Int(number1), let num2 = Int(number2) {
            let total = num1 * num2
            //result = String(total)
            result.onNext(String(total))
        }
    }

}
