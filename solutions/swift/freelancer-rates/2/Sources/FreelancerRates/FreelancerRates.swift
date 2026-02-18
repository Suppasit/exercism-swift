let hoursPerDay = 8
let daysPerMonth = 22

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * Double(hoursPerDay)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let totalMonthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * Double(daysPerMonth)
  let discountRatio = 1 - discount / 100
  return  (totalMonthlyRate * discountRatio).rounded(.down)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate) 
  let discountRatio = 1 - discount / 100
  return (budget / (dailyRate * discountRatio)).rounded(.down)
}
