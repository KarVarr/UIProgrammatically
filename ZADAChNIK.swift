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

// ПРОДВИНУТЫЙ УРОВЕНЬ.
// 1) Создайте 5-6 строк с названиями городов. Затем создайте 5-6 строк с названиями стран.
// Если название города совпадает со страной — выведите в консоль название страны, города и 
// слово: ПРАВИЛЬНО!

let city1 = "Paris"
let city2 = "Madrid"

let country1 = "France"
let country2 = "Spain"


func goodCity(_ city: String, _ country: String) -> String {
    var str = ""
    if city == "Paris" && country == "France" || city == "Madrid" && country == "Spain" {
        str = "\(country), \(city) ПРАВИЛЬНО!"
    } else {
        str = "\(country), \(city) НЕПРАВИЛЬНО!"
    }

    return str 
}

print(goodCity("Paris", "France")) // France, Paris ПРАВИЛЬНО!
print(goodCity("Madrid", "France")) // France, Madrid НЕПРАВИЛЬНО!

//2) Возьмите созданные страны и проверьте их: содержат ли они букву A(буква на ваш выбор).

print(city1.contains("a")) // true
print(city1.contains("S")) // false

//3) Создайте строку — набор букв кириллицей. Буквы абсолютно любые, строчные.

var str1 = "Привет как дела"

//4) Замените их, создав отдельную переменную, на заглавные. А потом на строчные латинские.

var strUpperCase = str1.uppercased() //ПРИВЕТ КАК ДЕЛА
strUpperCase = "Hello, how are you".lowercased() // hello, how are you

//5) Посчитайте индекс под которым находится каждая отдельно взятая буква.

Array(strUpperCase).enumerated().map{
    print("\($1) has index \($0)")
}


// 3. Массивы
// 1) Создайте массив учеников из 12 мальчиков

var boys = ["Koly", "Toly", "Sacha", "Pacha", "Lecha","Andrey","Sereg","Vitaliy","Arsen","Bob","Mike", "Kain"]

// 2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert.
// Выведите результат в консоль

boys.append(contentsOf:["Dacha","Masha","Aleksandra","Marina"])
boys.insert("Sveta", at: 0)
boys.insert("Anna", at: 5)

// 3) Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по 
// диапазону. Выведите результат в консоль.

boys.removeSubrange(1...8) //["Sveta", "Vitaliy", "Arsen", "Bob", "Mike", "Kain", "Dacha", "Masha", "Aleksandra", "Marina"]

//4) Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедените два массива в один.
var grade = [0,1,2,3,4,5]
var grade2 = [6,7,8,9,10]

let gradeAll = grade +  grade2 // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// 5) Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 
// баллов.Неплохо.».

for i in 0..<gradeAll.count - 1 {
  if i < 4 {
     print("\(boys[i]) - \(gradeAll[i]) баллов. Очень плохо!!!")
  } else if i < 8 {
    print("\(boys[i]) - \(gradeAll[i]) баллов. Неплохо!")
  } else {
    print("\(boys[i]) - \(gradeAll[i]) баллов. Отлично!")
  }
}

// 6) Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и 
// вывести в консоль

let dollarArray = [1,2,5,10,20,50,100,500]
print(dollarArray.reduce(0,+))

