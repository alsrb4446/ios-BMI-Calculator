//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by 신민규 on 2021/03/18.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight:Float) {
        let bmi = weight / pow(height, 2.0)
        
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmi <= 24.9{
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else{
            bmiValue = BMI(value: bmi, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.white
    }
    
}
