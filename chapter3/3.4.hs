--円柱の表面積を求めたい
cylinder :: Double -> Double -> Double
cylinder r h =
    let sidearea = 2 * pi * r * h
        toparea  = 2 * pi * r ^ 2
    in  sidearea + toparea


--この例では肥満の人のBMIのみを返している
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [ bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi > 25.0]
