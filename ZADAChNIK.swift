import Foundation
//1) Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. 
//У чисел вывести их минимальные и максимальные значения
let num: Int = 10
var numVar: Int = 20
let dobl: Double = 10.01
var doblVar: Double = 10.01
let floa: Float = 1.1
var floaVar: Float = 1.1
let str: String = "hello"
var strVar: String = "world"
Int.max
Int.min
UInt.max
UInt.min

// 2) Создайте список товаров с различными характеристиками (количество, название). 
// Используйте typealias.
typealias List = String
typealias Count = Int 
let list: List = "Milk" //String
let list2: List = "Bread" //String
let milk: Count = 2 //Int
let bread: Count = 3 //Int

//3) Напишите различные выражения с приведением тип
let intToDouble: Int = 10
let toDouble = Double(intToDouble)

let helloString: String = "hello"
let isString = helloString is String // print true
let isStringtoDouble = toDouble is String // print false

let numberString = "123"
let convertToInt = Int(numberString) // Optional(123)

if let stringAs = helloString as? String {
   // print("this is string \(stringAs)")
}
//4) Вычисления с операторами (умножение, деление, сложение, вычитание): создайте 
//консольный калькулятор
let a = 55
let b = 88
let plus = a + b // 143
let minus = a - b // 33
let timesTo = a * b // 4840
let devideBy = a / b // 0
let calc = "\(a) + \(b) = \(plus)" // 55 + 88 = 143





