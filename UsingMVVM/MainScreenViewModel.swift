//
//  MainScreenViewModel.swift
//  UsingMVVM
//
//  Created by Sefa Acar on 13.05.2024.
//

import Foundation
import RxSwift

class MainScreenViewModel {
    //var result = "0"
    var result = BehaviorSubject<String>(value: "0")//Tanımlama
    var mathRepo = MathRepository()
    
    init() {
        result = mathRepo.result//repo - model connection
    }
    
    func sum(number1:String, number2:String) {
        mathRepo.sum(number1: number1, number2: number2)
    }
    
    func multiplication(number1:String, number2:String) {
        mathRepo.multiplication(number1: number1, number2: number2)
    }

}
