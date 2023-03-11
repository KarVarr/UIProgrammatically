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


//2. Строки
//1) Напишите с помощью строк своё резюме: имя, фамилия, возраст, где живете, хобби и т.п. 

let name = "Karen"
let lastName = "Vardanian"
let age = 34
let city = "Moscow"
let hobbie = "fitnes"

//2) Соберите из этих строк 1 большую (вспоминаем интерполяцию) и выведите в консоль.
let aboutMe = "My name is \(name) \(lastName), I'm \(age) years old. I living in the city, named \(city), and my hobbie is \(hobbie)"

// 3) Напишите 10 строк, соберите их с помощью интерполяции и поставьте в нужных местах 
//переносы на новую строку и пробелы (см. \n и \t).

let story1 = "In fields of green and skies of blue"
let story2 = "The world is vast and full of hue."
let story3 = "The flowers sway and dance in breeze,"
let story4 = "A symphony of nature's ease."

let fullPoem = "\(story1)\n \(story2)\n \t\(story3)\n \t\(story4)"

//4) Разбейте собственное имя на символы, перенося каждую букву на новую строку.
var myNewName = ""
let myName = "Karen"
for i in myName {
    myNewName += "\(i)\n"
}

// 5) Создайте переменную типа Int и переменную типа String. 
// Тип Int преобразуйте в String и с помощью бинарного оператора сложите 2 переменные в одну 
// строку.

let num1 = 5
let num2 = "num is: "
let sumNum =  num2 + String(num1) 


