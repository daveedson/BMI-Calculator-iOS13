
import Foundation


struct CalculatorModel {
    var convertedbmi: String = "0.0"
    
    
    mutating func calculateBmi(weight:Float,height: Float){
        
        let bmi = weight / pow(height, 2)
        convertedbmi  = String(format: "%.1f" ,bmi)
        
    }
}
