func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let totalMonthlyRate = Double(8 * 22 * hourlyRate)
  let discountRatio = (100 - discount) / 100
  return  (totalMonthlyRate * discountRatio).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let addedDiscountRatio = (100 + discount) / 100
  let dailyRate = Double(hourlyRate * 8)
  return ((budget * addedDiscountRatio) / dailyRate).rounded(.up)
}
