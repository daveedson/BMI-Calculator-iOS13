
import UIKit


struct CalculatorModel {
    var convertedbmi: Bmi?
    
    
    func getBmiValue()->String{
        let bmiTo1decimal = String(format: "%.1f" , convertedbmi?.value ?? 0.0)
        return bmiTo1decimal
    }
    
    
    func getAdvice()->String{
        return convertedbmi?.advice ?? "No Advice"
    }
    
    func getColor()-> UIColor{
        return convertedbmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBmi(weight:Float,height: Float){
        
    let bmiValue = weight / pow(height, 2)
        
     
        
        if  bmiValue < 18.5{
            print("Underweight")
            convertedbmi =  Bmi(value: bmiValue, advice: "Try they chop well!", color: UIColor.blue)
        }else if  bmiValue < 24.9{
            print("Normal weight")
            convertedbmi =  Bmi(value: bmiValue, advice: "You they alright! ", color: UIColor.purple)
        }else{
            print("Overweight")
            convertedbmi =  Bmi(value: bmiValue, advice: "Try they exercise! ", color: UIColor.red)
        }
        
    }
}
 
