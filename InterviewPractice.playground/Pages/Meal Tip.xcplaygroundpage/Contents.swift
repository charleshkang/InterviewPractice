//: [Previous](@previous)

import Foundation

let mealPrice: Double = 12.00
let tipPercent: Int = 20
let taxPercent: Int = 8

var calculatedTip = mealPrice * Double(tipPercent) / Double(100)
var calculatedTax = mealPrice * Double(taxPercent) / Double(100)

var totalPrice = round(mealPrice + calculatedTip + calculatedTax)

print("The total cost of food is \(totalPrice) dollars")
