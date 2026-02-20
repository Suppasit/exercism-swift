func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let montlyPaymentIn5Years = price / Double(12 * 5)

  if montlyPaymentIn5Years <= monthlyBudget {
    return "Yes! I'm getting a \(vehicle)"
  }

  if montlyPaymentIn5Years - monthlyBudget <= 10 {
    return "I'll have to be frugal if I want a \(vehicle)"
  }

  return "Darn! No \(vehicle) for me"
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 2 || wheels == 3 {
    return "You will need a motorcycle license for your vehicle"
  } else if wheels == 4 || wheels == 6 {
    return "You will need an automobile license for your vehicle"
  } else if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  } else {
    return "We do not issue licenses for those types of vehicles"
  }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  let ratio = if yearsOld < 3 {
    0.8
  } else if yearsOld < 10 {
    0.7
  } else {
    0.5
  }
  return Int(Double(originalPrice) * ratio)
}
