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


// ПРОДВИНУТЫЙ УРОВЕНЬ.
// 1) Создайте 10 строк с названиями стран. Создайте массив.
//Проверьте строки: если в строке более 5 символов — добавить её в массив. Но если строка 
//содержит букву А - заменить эту букву на другую и добавить изменённую строку в массив.

var counry1 = "USA"
var counry2 = "Russia"
var counry3 = "Armenia"
var counry4 = "France"
var counry5 = "Italy"
var counry6 = "Germany"
var counry7 = "Cuba"
var counry8 = "Canada"
var counry9 = "China"
var counry10 = "Japan"


var countryArray = [String]()
countryArray.append(counry1)
countryArray.append(counry2)
countryArray.append(counry3)
countryArray.append(counry4)
countryArray.append(counry5)
countryArray.append(counry6)
countryArray.append(counry7)
countryArray.append(counry8)
countryArray.append(counry9)
countryArray.append(counry10)

var countries = [String]()

for country in countryArray {
  if country.count > 5 {
    if country.contains("A") {
      let newCountry = country.replacingOccurrences(of: "A", with: "X")
      countries.append(newCountry)
    }
    
    
  }
}
// ["USA", "Russia", "Armenia", "France", "Italy", "Germany", "Cuba", "Canada", "China", "Japan"]
// ["Xrmenia"]


// 2) Создайте массив из 20-30 значений любого типа. Сделайте линейную сортировку (linear sort).

    var unsortedArray = [23,24,11,12,13,14,1,2,3,4,5,6,7,8,15,16,17,27,28,29,18,9,20,21,22,25,26,30,9,10]

    var sortedArray = [Int]()
   
    for i in 0..<unsortedArray.count {
            sortedArray.append(i)
    }
   // sortedArray  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
 
//  3) Сделайте сортировку пузырьком (bubble sort).

 var bubbleArray = [Int]()
 for i in 0..<unsortedArray.count - 1 {
     for j in 0..<unsortedArray.count - i - 1 {
     if unsortedArray[j] > unsortedArray[j + 1] {
         let temp = unsortedArray[j]
         unsortedArray[j] = unsortedArray[j + 1]
         unsortedArray[j + 1] = temp
         }
     }
 }
 //bubbleArray [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
 
 
 //4) Сделайте быструю сортировку (quick sort)
  unsortedArray = [23,24,11,12,13,14,1,2,3,4,5,6,7,8,15,16,17,27,28,29,18,9,20,21,22,25,26,30,9,10]
 
  var quickArray = [Int]()
  
 while quickArray != unsortedArray.sorted() {
     let pivot = unsortedArray.count / 2 
     let leftSide = unsortedArray.filter{$0 < pivot}
     let rightSide = unsortedArray.filter{$0 > pivot}
     let center = unsortedArray.filter{$0 == pivot}
     quickArray = leftSide + center + rightSide
 }

// 4. Словари
// 1) Создайте 10 разных Dictionary с разными типами данных. Один из них должен содержать все месяца года на русском. Второй на английском.

    var monthRus = [1: "Январь", 2: "Февраль", 3: "Март", 4: "Апрель", 5: "Май", 6: "Июнь", 7: "Июль", 8: "Август", 9: "Сентябрь", 10: "Октябрь", 11: "Ноябрь", 12: "Декабрь"]

    var monthEng = [1: "January", 2: "February", 3: "March", 4: "April", 5: "May", 6: "June", 7: "July", 8: "August", 9: "September", 10: "Octobor", 11: "November", 12: "December"]

// 2) Соберите все ключи и значения каждого Dictionary и распечатайте в консоль

// print(monthRus.keys) [8, 3, 12, 6, 2, 7, 9, 4, 5, 10, 11, 1]
// print(monthEng.keys) [2, 1, 8, 12, 3, 4, 7, 9, 6, 10, 5, 11]

// 3) Создайте пустой Dictionary и через условный оператор if проверьте, пустой он или нет. Если пустой, то в условии добавьте в него пар значений.

    var dict: [Int: String] = [Int: String]()
    
    if dict.isEmpty {
        dict[1] = "Hello"
    }

    //dict //[1: "Hello"]
    
// 4) Cоздайте словарь — ключ: «иномарка», «значение»: название машины.

    var cars = ["Audi": "S4", "BMW": "M3", "Mersedes": "E63"]

//5) Добавьте в него значение по ключу - «отечественная». Распечатайте ключи и значения в консоль. Затем отдельно только значения.
//Удалите из словаря иномарку по ключу (двумя способами: через nil и removeValue().

    cars["LADA"] = "2107"
    //["Audi": "S4", "Mersedes": "E63", "BMW": "M3", "LADA": "2107"]
    cars["Audi"] = nil
    //["BMW": "M3", "LADA": "2107", "Mersedes": "E63"]
    cars.removeValue(forKey: "BMW")
    //["LADA": "2107", "Mersedes": "E63"]

//     ПРОДВИНУТЫЙ УРОВЕНЬ.
// 1) Создайте словарь, где ключ — фамилия солдата, а значение — его приветствие.

    var family = ["Miller": "YEAP", "Black": "HAY", "Senna": "HELLO", "Tramp": "HEY FOLKCS"]
    
// 2) В цикле пройдитесь по всем ключам и распечатайте фамилию каждого солдата.

    family.map{print($0.key)}
    
//3) Сделайте тоже самое со значениями и распечатайте приветствие каждого солдата.
    
    family.map{print($0.value)}
    
//4) Отсортировать словарь так, чтобы фамилии шли по алфавиту. 

    family.map{$0.key.sorted(by: <)}
// print(family) ["Black": "HAY", "Miller": "YEAP", "Tramp": "HEY FOLKCS", "Senna": "HELLO"]
    
//5) Создайте логическую проверку: если ключ словаря — Иванов, то скажите, что это снайпер. Сделайте тоже самое со всеми ключами.
    
    for i in family.keys {
        if i == "Miller" || i == "Senna" {
            print("\(i) is a sniper")
        } else {
            print("\(i) is a solder")
        }
    }


//5. Кортежи
//1) Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами. 
    
    var someTupls = (first:1, second:2,third:3,forth:4,fivth:5)
    // print(someTupls.first)
   //print(someTupls.0) 1
   let (one, two, three, four, five) = someTupls
   //print(one,four) 1 4
  
    
//2) Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. 
/*
Задача. Создать кортеж с тремя параметрами:
 первый - превышение скорости: количество пойманных;
 второй - вождение нетрезвым: количество пойманных;
 третий - бесправники: количество пойманных.
Распечатайте наших бедокуров в консоль через print().
*/

var men1 = (speed:5, alcohol: 10, licence: 20)

//print("Speedlimit not obey more then \(men1.speed) people") Speedlimit not obey more then 5 people
//print("Alkohol drivers: \(men1.alcohol)") Alkohol drivers: 10
//print("Driver with no licence: \(men1.licence)")  Driver with no licence: 20

// 3) Выведите каждый параметр в консоль. Тремя способами.

let (underTen, underTwenty, underThirty) = men1

print(underTen) 
print(men1.0)  
print(men1.speed) 

//4) Создайте второй кортеж — нашего напарника. Значения задайте другие.

var men2 = (speed: 10, alcohol: 2, licence: 20)

// 5) Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.
// Вывести в консоль тремя способами.

let sum = (speed: men1.speed - men2.speed, alcohol: men1.alcohol - men2.alcohol, licence: men1.licence - men2.licence)

let (sumSpeed, sumAlcohol, sumLicence ) = sum

print(sum.speed) -5
print(sum.1) 
print(sum.sumSpeed)


 /*
ПРОДВИНУТЫЙ УРОВЕНЬ.
1) Создать 10 кортежей-разработчиков, каждый с 4 параметрами: имя, возраст, опыт, 
специальность. Пока не задавайте никаких данных.

2) После создания всем задайте имя, 3 из них — задайте возраст (любые значения выше 23),4 — опыт и только 2 — специальность.
3) Используя проверки if/else, выводите сообщения по логике: если возраст больше 23, есть опыт и специальность это ios — в консоль выводите имя и сообщение- принят на работу
4) Тех, кто младше 23, добавьте в массив и отсортируйте. Найдите в этом массиве 
максимальное значение и удалите его.
5) Создайте массив и в проверку из пункта 3 добавьте условие: если специальность не ios —
добавить в созданный массив.
*/


var developers: [(String, Int, Int, String)] = [(String, Int, Int, String)](repeating: ("", 0, 0, ""), count: 10)

developers[0] = ("John", 20, 1, "Android")
developers[1] = ("Jane", 24, 2, "Web")
developers[2] = ("Alice", 18, 5, "iOS")
developers[3] = ("Bob", 30, 7, "Web")
developers[4] = ("David", 25, 3, "Android")
developers[5] = ("Amy", 27, 4, "iOS")
developers[6] = ("Chris", 26, 2, "Web")
developers[7] = ("Eva", 29, 6, "iOS")
developers[8] = ("Frank", 24, 2, "Android")
developers[9] = ("Billy", 44, 7, "Web")

var devArray: [(String, Int, Int, String)] = [(String, Int, Int, String)]()

var devArrayNotIosDev: [(String, Int, Int, String)] = [(String, Int, Int, String)]()

for dev in developers {
    if dev.1 > 23 && dev.2 > 3 && dev.3 == "iOS" {
        print("\(dev.0) вы приняты на работу")

    } else if dev.1 < 23 {
       print("\(dev.0) мы с вами свяжемся позже!")
        devArray.append(dev)
    } else if dev.3 != "iOS" {
        devArrayNotIosDev.append(dev)
    }
}

print(devArray.sorted(by: <)) // [("Alice", 18, 5, "iOS"), ("John", 20, 1, "Android")]
print(devArrayNotIosDev) // [("Jane", 24, 2, "Web"), ("Bob", 30, 7, "Web"), ("David", 25, 3, "Android"), ("Chris", 26, 2, "Web"), ("Frank", 24, 2, "Android"), ("Billy", 44, 7, "Web")]



