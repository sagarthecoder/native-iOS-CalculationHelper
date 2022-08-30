import Foundation

class CalculationManager {
    private init() {}
    
    class func degreeAs180Scale(degree: CGFloat)-> CGFloat {
        if(CGFloat(180.00).isLess(than : degree)) {
            let floorMultiplier : Int = Int(degree / 180.0)
            let ceilMultiplier : Int = Int(ceil(degree / 180.0))
            if(floorMultiplier == ceilMultiplier) {
                if(floorMultiplier % 2 == 1) {
                    return 180.0
                } else {
                    return 0.0
                }
            }
            else if(ceilMultiplier % 2 == 1) {
                let scaledDegree = degree - (180.0 * CGFloat(floorMultiplier))
                return scaledDegree
            } else {
                let scaledDegree = degree - (180.0 * CGFloat(floorMultiplier)) - 180.0
                return scaledDegree
            }

        } else if(degree.isLess(than : -180.0)) {
            let absDegree = abs(degree)
            let floorMultiplier : Int = Int(absDegree / 180.0)
            let ceilMultiplier : Int = Int(ceil(absDegree / 180.0))
            if(floorMultiplier == ceilMultiplier) {
                if(floorMultiplier % 2 == 1) {
                    return -180.0
                } else {
                    return 0.0
                }
            }
            else if(ceilMultiplier % 2 == 1) {
                let scaledDegree = absDegree - (180.0 * CGFloat(floorMultiplier))
                return -scaledDegree
            } else {
                let scaledDegree = 180.0 - (absDegree - (180.0 * CGFloat(floorMultiplier)))
                return scaledDegree
            }

        } else {
            return degree
        }
    }
    
}

