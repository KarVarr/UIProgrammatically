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

/*
 6. Управление потоком: циклы
1) Создайте массив "дни в месяцах":
Распечатайте элементы, содержащие количество дней в соответствующем месяце, используя 
цикл for и этот массив.

*/

let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август","Сентябрь", "Октябрь", "Ноябрь","Декабрь"]
for day in 0..<12 {
        print("В \(months[day]) \(daysInMonths[day]) дней ")    
}

//2) Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и 
//говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд.

let man = 44

if  man < 18 {
    print("go to the school")
} else if man < 23 {
    print("go to the college")
} else if man < 60 {

    print("go to the work")
} else {
    print("retire")
}

switch man {
    case 6...18: print("go to the school")
    case 18...23: print("go to the college")
    case 23...60: print("go to the work")
    default: print("retire")
}

//3) В switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и 
//высказывать через print мнение.

let score = 10

if score < 4 {
    print("you need more practice")
} else if score < 8 {
    print("you have patenchial")
} else {
    print("you'll have best job ever")
}

switch score {
    case 0...4: print("you need more practice")
    case 4...8:  print("you have patenchial")
    default: print("you'll have best job ever")
}

/*
7. Функции
1) Создать 3 функции: 
 первая функция принимает массив Int и сортирует его по порядку (возрастание). После 
этого распечатывает результат в консоль;
 вторая функция принимает массив String, меняет 1, 2 и 3 элементы и сортирует по 
алфавиту. После этого распечатывает результат в консоль;
 третья функция принимает 2 массива String и складывает их. После этого 
распечатывает результат в консоль
*/


func sortArray(_ array: [Int]) {
    print("\(array.sorted(by: <))")
    
}
sortArray([5,7,2,0,4,23,767,23,6,6,234,64,867,345,234,6456,3,4,1,90])

var arrayOfStrings = ["one", "two", "three", "four", "five", "six"]

func stringArray (_ strArray: [String]) {
    var array = strArray
    array[0] = "first"
    array[1] = "second"
    array[2] = "third"
    print(array.sorted(by: <))

}
stringArray(arrayOfStrings)

let fArray = ["hello", "world"]
let sArray = ["I'm", "a", "developer"]

func sumOfArray(_ firstArray: [String], _ secondArray: [String]) {
    print(firstArray + secondArray)
}
sumOfArray(fArray,sArray)

//2) Создать журнал для учителя, который будет принимать имя студента, профессию и оценку и 
//записывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.

var tableOfStudent = [String]()


func student(nameOf pupl: String, ocupation work: String, raiting score: String) {
    tableOfStudent.append("\(pupl) \(work) \(score)")
}

student(nameOf: "Bob", ocupation: "Dev", raiting: "22")
student(nameOf: "Mike", ocupation: "Technologe", raiting: "18")

for pupl in tableOfStudent {
    print(pupl)
}

//3) Создать функцию которая принимает имя и фамилию, потом положить это в массив и 
//вывести результат в консоль
var womenArray = [String]()

func woman(firstName fName: String, lastName lName: String) {

    womenArray.append("\(fName) \(lName)")
}

woman(firstName: "Brabara",lastName:  "Straizen")

print(womenArray) //["Brabara Straizen"]

//4) Создайте функцию которая принимает параметры и вычисляет площадь круга


func radiusCircle(_ r: Int) -> Double{
    return 3.14 * Double(r * r) 
}
print(radiusCircle(6)) //113.04

// 5) Создайте Dictionary с именем ученики , где ключ name и score, а значение (1 тюпл из 5 имен) 
// и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.


let dictStudents: [String: Any] = [
    "name": ("Bob", "Mike", "Zabor", "Doscka", "Koza"),
    "score": (5,2,3,4,2)
]

print(dictStudents["name"] ?? "noName") //("Bob", "Mike", "Zabor", "Doscka", "Koza")

/*
ПРОДВИНУТЫЙ УРОВЕНЬ.
1) Функция принимает 3 массива String. Задача: сложить их вместе, преобразовать в тип Int и 
посчитать сумму. Распечатать результат в консоль.
*/

func sumOfStringArrays(_ arr1: [String], _ arr2: [String], _ arr3: [String]) -> Int {
    let arrayNums1 = arr1.map{Int($0)}
    let arrayNums2 = arr2.map{Int($0)}
    let arrayNums3 = arr3.map{Int($0)}
    let sum = arrayNums1 + arrayNums2 + arrayNums3 
    return sum.map({$0!}).reduce(0, +)
}

print(sumOfStringArrays(["2", "6", "44"], ["55", "23", "1"], ["1", "4", "7"])) //143


//2) Создайте функцию, которая принимает строку-рассказ без пробелов и знаков препинаний, 
//всё с маленькой буквы и на латинице.


func storyConventor(_ str: String) -> String {
  return str.split(separator: ",").map{ String($0) }.joined(separator: "\n")
}

print(storyConventor("Создайте функцию, которая принимает строку-рассказ, без пробелов и знаков препинаний,всё с маленькой буквы и на латинице."))
/*
Создайте функцию
 которая принимает строку-рассказ
 без пробелов и знаков препинаний
всё с маленькой буквы и на латинице.
*/

/*
8. Замыкания
1) Написать, как понимаете замыкания: что это, для чего нужны?
2) Написать 10 своих замыканий на примере сортировок массивов.
*/

var array = (0...20)
print(array.filter{$0 > 10}) //[11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
print(array.map{$0 + 10}) //[10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
print(array.contains{$0 % 2 == 0}) // true
print(array.reduce(0, +)) // 210
print(array.sorted(by: >)) // [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
print(array.first(where: {$0 == 10})) // Optional(10)
print(array.enumerated().map{"number \($1) with index \($0)"})

//3) Написать функцию, которая принимает массив, проверяет — пустой или нет. И если пустой 
//— нужно записать туда значения.

func arrCheck (_ array: [String]) -> [String] {
    var arr = array
    if arr.isEmpty {
        arr.append("Hello, World!")
    }
    return arr
}

print(arrCheck(["Hi there", "Bounjuar", "Hello"])) // ["Hi there", "Bounjuar", "Hello"]
print(arrCheck([""])) // [""]
print(arrCheck([])) // ["Hello, World!"]


//4) Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль.
//Всё вывести в консоль.

func student (_ fName: String, _ lName: String, _ nick: String, _ email: String, _ password: String)  {
    print( "\(fName) \(lName) \(nick) \(email) \(password)" )
}
student("Iliy", "Isakov", "boz", "ffrisd12@mail.com", "12345678") //Iliy Isakov  boz  ffrisd12@mail.com 12345678

//5) Написать функции которые принимают в качестве аргументов массивы и словари и 
//проверяют: пустые или нет. Если пустые — добавляют туда значения и выводят в консоль

func checkArrAndDict(_ arr: [Int], _ dict: [Int: String]) {
    var array = arr
    var dictionary = dict
    if array.isEmpty {
        array.append(1)
        print(array)
    }
    
    if dictionary.isEmpty {
        dictionary[1] = "Hello"
        print(dictionary)
    }
    
    
}
checkArrAndDict([1,2,3], [1: "goodbye"])
checkArrAndDict([], [:])

// ПРОДВИНУТЫЙ УРОВЕНЬ.
// 1) Создайте функцию, которая принимает массив Double. Напишите алгоритм, который 
// находит в массиве минимальное значение. Распечатайте результат в консоль.


func doubMin(_ nums: [Double]) -> Double {
    return nums.min() ?? 0.0
} 
func doubMax(_ nums: [Double]) -> Double {
    return nums.max() ?? 0.0
} 

print(doubMin([4.3,66.6,12.0,13.5, 1.0, 455.9])) // 1.0
print(doubMax([4.3,66.6,12.0,13.5, 1.0, 455.9])) // 455.9

/*
9. Перечисления
1) Напишите как понимаете enumerations:что это такое, в чем их смысл, зачем нужны.
Ваше личное мнение: как и где их можно использовать?
2) Написать по 5-10 enum разных типов + создать как можно больше своих enumerations.
Главное, соблюдайте правила написания: понятность и заглавная буква в начале названия.
Пропустите их через switch и распечатайте (см.видео).
*/

enum SomeEnums {
    case pepsi, cola, lipton, fanta, bonaqua, sprite, mirinda, tarhun
}

var cocaCole = SomeEnums.cola

cocaCole = .pepsi

switch cocaCole {
    case .cola: print("I like Coca Cola")
    case .pepsi: print("I like pepsi")
    case .lipton: print("I like lipton")
    case .fanta: print("I like fanta")
    case .bonaqua: print("I like bonaqua")
    case .sprite: print("I like sprite")
    case .mirinda: print("I like mirinda")
    default: print("I like tarhun")
}

//3) Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, 
//навыки, образование, хобби и т.д. - пункты на ваше усмотрение.
//Пропустите ваше резюме сначала через if else, затем через switch — для того, чтобы было 
//понимание читаемости и красоты кода.
//Дайте свою оценку первому и второму варианту написания.

enum CV {
    case firstName
    case lastName
    case age
    case exp
    case hobbie
}

struct Student {
    let categori: CV
    let info: String
}

let resume = [
    Student(categori: .firstName, info: "Bob"),
    Student(categori: .lastName, info: "Black"),
    Student(categori: .age, info: "33"),
    Student(categori: .exp, info: "3"),
    Student(categori: .hobbie, info: "gym"),
]

for i in resume {
    if i.categori == .firstName {
        print("Name \(i.info)")
    } else if i.categori == .lastName {
        print("Last Name \(i.info)")
    } else if i.categori == .age {
        print("age \(i.info)")
    } else if i.categori == .exp {
        print("expiriense \(i.info)")
    } else if i.categori == .hobbie {
        print("hobbie \(i.info)")
    }
}

for i in resume {
    switch i.categori {
        case .firstName:
            print("Name \(i.info)")
        case .lastName:
            print("Last Name \(i.info)")
        case .age: 
            print("age \(i.info)")
        case .exp:
            print("expiriense \(i.info)")
        case .hobbie: 
            print("hobbie \(i.info)")
        default: 
            break
    }
}

/*
4) Представьте, что вы попали на завод Apple. Вам принесли MacBook, Iphone, Ipad, Apple 
Watch и сказали: «Раскрась их в разные цвета. Джони Айву нужно вдохновение».

Вы подвисли и начали раскрашивать. В итоге у вас получился красный MacBook, зеленый 
Ipad, розовый Iphone и буро-коричневый Apple Watch. 
Инструкция: для цветов задаём через enumeration.
Наши девайсы располагаем в теле функции.
Итог программы: «Айфон — розовый»
*/

enum AppleDevice {
    case red
    case green
    case pink
    case brown
}



func deviceColor(_ dev: String) -> String {
    var col = ""

        if dev == "MacBook" {
            col = "MacBook is \(AppleDevice.red)"
        } else if dev == "Ipad" {
            col = "Ipad is \(AppleDevice.green)"
        } else if dev == "Iphone" {
            col = "Iphone is \(AppleDevice.pink)"
        } else if dev == "Apple Watch" {
            col = "Apple Watch is \(AppleDevice.brown)"
        }
    
    return col
}

print(deviceColor("Iphone")) // Iphone is pink


//10. Классы и структуры
//1) Написать простые классы с наследованием и без.

//без наследованием
class First {
    let name: String
    let age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age 
    }

    func printText() {
        print("Hello, my name is \(name) and I'm \(age) year old!")
    }
}

//с наследованием
class Second: First {
    override func printText () {
        print("hello world \(name) \(age)")
    }
}


let first = First(name: "Stephan", age: 12)
first.printText() // Hello, my name is Stephan and I'm 12 year old!

let second = Second(name: "Bob", age: 33) 
second.printText() // hello world Bob 33


/*
2) Написать консольное приложение, в котором создать класс *House* и в нем несколько 
свойств - *width*, *height* и несколько методов - *build* (выводит на экран умножение ширины и 
высоты), *getWidth* и *getHeight* выводят на экран соответсвенно ширину и высоту.
*/

class Build {
    let width: Int
    let height: Int

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }

    func getWidth() {
        print("\(width) * \(width) = \(width * width)")
    }

    func getHeight() {
        print("\(height) * \(height) = \(height * height)") 
    }
}

let build = Build(width: 23, height: 65)
build.getHeight() // 65 * 65 = 4225
build.getWidth() // 23 * 23 = 529

/*
3) Написать класс , а в нем метод который будет принимать букву (одну, может быть и типа 
string, просто будете передавать ему одну букву) и возвращать все имена которые начинаются 
на эту букву. 
*/


class Naming {
    let letter: Character

    init(letter: Character) {
        self.letter = letter
    }

    func nameWithLetter(_ nameOfPeople: String) {
        if nameOfPeople.contains(letter) {
            print("Hello \(nameOfPeople): access is allowed")
        } else {
            print("Access is not allowed!!!")
        }
    }


}

let letterA = Naming(letter: "a")
letterA.nameWithLetter("Sacha") // Hello Sacha: access is allowed
letterA.nameWithLetter("Bob") // Access is not allowed!!!


class AllNames {
    let arrayOfName = [
        "Sacha", "Macha", "Kola", "Tola", "Kain", "Mark", "Bobric", "Shobtic", "Bozz"
    ]

    func accessWithName(_ letter: Character) {
        for i in arrayOfName {
            if i.contains(letter) {
                print("\(i) access is allowed")
            } else {
                print ("access is not allowed for \(i)")
            }
        }
    }
}

let allowToTopFiles = AllNames()
allowToTopFiles.accessWithName("z") // Bozz access is allowed


/*
4) Написать класс, который формирует массив учеников, сортирует и считает количество этих 
учеников. Если учеников больше чем 30, выводится сообщение типа «в школе нет мест».
*/


class Pulps {
    var arrayOfPupls = [String]()

    init(arrayOfPupls: [String]) {
        self.arrayOfPupls = arrayOfPupls
    }

    func sorfArray() {
        print("Sorted names: \(arrayOfPupls.sorted(by: <))")
    }

    func sumOfArray() {
        print("Count: \(arrayOfPupls.count)")

         if arrayOfPupls.count > 30 {
        print("There is no room in school!")
    }
    }
    
}

let pupls = Pulps(arrayOfPupls: ["Emma", "Liam", "Olivia", "Noah", "Ava"] )
pupls.sorfArray() // Sorted names: ["Ava", "Emma", "Liam", "Noah", "Olivia"]
pupls.sumOfArray() // Count: 5

let pupls2 = Pulps(arrayOfPupls: ["Emma", "Liam", "Olivia", "Noah", "Ava", "Ethan", "Isabella", "Oliver", "Sophia", "William", "Mia", "James", "Charlotte", "Benjamin", "Amelia", "Lucas", "Evelyn", "Henry", "Harper", "Alexander", "Abigail", "Sebastian", "Emily", "Michael", "Elizabeth", "Elijah", "Mila", "Daniel", "Ella", "Matthew", "Avery"])
pupls2.sorfArray() // ["Abigail", "Alexander", "Amelia", "Ava", "Avery", "Benjamin", "Charlotte", "Daniel", "Elijah", "Elizabeth", "Ella", "Emily", "Emma", "Ethan", "Evelyn", "Harper", "Henry", "Isabella", "James", "Liam", "Lucas", "Matthew", "Mia", "Michael", "Mila", "Noah", "Oliver", "Olivia", "Sebastian", "Sophia", "William"]
pupls2.sumOfArray() // Count: 31 There is no room in school!


//let names = ["Emma", "Liam", "Olivia", "Noah", "Ava", "Ethan", "Isabella", "Oliver", "Sophia", "William", "Mia", "James", "Charlotte", "Benjamin", "Amelia", "Lucas", "Evelyn", "Henry", "Harper", "Alexander", "Abigail", "Sebastian", "Emily", "Michael", "Elizabeth", "Elijah", "Mila", "Daniel", "Ella", "Matthew", "Avery"]


// 5) Создать 5-10 своих структур. 

struct One {
    let name: String
    let age: Int
}

let one = One(name: "Anna", age: 13)
print(one.name) //Anna
print(one.age) // 13

/*
6) Сделайте список покупок! Программа записывает продукты в массив. Если вызываем 
определённый продукт — в консоли пишем к примеру «Мёд — куплено!».
*/

struct BucketList {
    var list = [String]()

    func checkProduct(_ product: String) {
        var bought = false
        for i in list {
            if i == product {
                print("\(product) - bought")
                bought = true
                break
            }
            
        }
        if bought == false {
            print("You need to buy \(product)!")
        }
    }
}

let listOfFruit = BucketList(list: ["apple", "pear", "watermelon", "peach", "blackberry"])
listOfFruit.checkProduct("strawberry")
listOfFruit.checkProduct("apple")


/*
ПРОДВИНУТЫЙ УРОВЕНЬ.
1) Консольная игра «Кролики в бочке». 
Условия: 
a) кроликов должно быть не меньше 9, равно как и бочек;
б) каждый кролик и бочка — имеют свой цвет;
в) бочка также имеет свой порядковый номер.
Задача: если мы выбираем красную бочку 2 — фиолетовый кролик выбран и выпрыгивает из 
бочки. Нужно добавить его в отдельный массив.
*/


class Game {
    let color: String
    
    init(color: String) {
        self.color = color
    }
}

class Rabbit: Game {
    let numberOfRabbit: Int

    init(color: String, numberOfRabbit: Int) {
        self.numberOfRabbit = numberOfRabbit
        super.init(color: color)
    }
}

class Barrel: Game {
    let numberOfBarrel: Int

    init(color: String, numberOfBarrel: Int) {
        self.numberOfBarrel = numberOfBarrel
        super.init(color: color)
    }
}

var gameArray = [String]()

let barrels = [
    Barrel(color: "black", numberOfBarrel: 1),
    Barrel(color: "red", numberOfBarrel: 2),
    Barrel(color: "white", numberOfBarrel: 3),
    Barrel(color: "pink", numberOfBarrel: 4),
    Barrel(color: "orange", numberOfBarrel: 5),
    Barrel(color: "yellow", numberOfBarrel: 6),
    Barrel(color: "brown", numberOfBarrel: 7),
    Barrel(color: "gray", numberOfBarrel: 8),
    Barrel(color: "mint", numberOfBarrel: 9),
]

let rabbits = [
    Rabbit(color: "red", numberOfRabbit: 1),
    Rabbit(color: "blue", numberOfRabbit: 2),
    Rabbit(color: "green", numberOfRabbit: 3),
    Rabbit(color: "cyan", numberOfRabbit: 4),
    Rabbit(color: "indigo", numberOfRabbit: 5),
    Rabbit(color: "violet", numberOfRabbit: 6),
    Rabbit(color: "white", numberOfRabbit: 7),
    Rabbit(color: "black", numberOfRabbit: 8),
    Rabbit(color: "pink", numberOfRabbit: 9),
]


for i in 0..<9 {
   
    gameArray.append("Inside the \(barrels[i].color) barrel with number \(barrels[i].numberOfBarrel) is a \(rabbits[i].color) rabbit")
}

print(gameArray) //["Inside the black barrel with number 1 is a red rabbit", "Inside the red barrel with number 2 is a blue rabbit", "Inside the white barrel with number 3 is a green rabbit", "Inside the pink barrel with number 4 is a cyan rabbit", "Inside the orange barrel with number 5 is a indigo rabbit", "Inside the yellow barrel with number 6 is a violet rabbit", "Inside the brown barrel with number 7 is a white rabbit", "Inside the gray barrel with number 8 is a black rabbit", "Inside the mint barrel with number 9 is a pink rabbit"]


//2) С помощью функции и кортежа (tuple) двигайте наших кроликов из бочки в бочку.
//Результат в консоли: красный кролик из розовой бочки № 1 попал в черную бочку № 4.

func randomBarrel(_ rabbitColor: String, _ barrelColor: String, _ barrelNumber: Int, _ barrelColor2: String, _ barrelNumber2: Int) {
    print("The \(rabbitColor) rabbit from a \(barrelColor) barrel #\(barrelNumber) fell into a \(barrelColor2) barrel #\(barrelNumber2)")
}

for i in 0..<9 {
    randomBarrel(rabbits[i].color, barrels[i].color, barrels[i].numberOfBarrel, barrels[i >= 8 ? i : i + 1].color, barrels[i >= 8 ? i : i + 1].numberOfBarrel)
}

// The red rabbit from a black barrel #1 fell into a red barrel #2 etc...

/*
11. Свойства экземпляра
1. Создайте 10-20 классов с разными свойствами: хранения, вычисляемые (запись и чтение, 
просто запись, просто чтение), ленивые, обязательно потренируйтесь с observers
(Наблюдатели)
*/

class SomeMetod1 {
    lazy var data: [String] = {
    return ["Hello", "world", "!"]
  }()
}
class SomeMetod2 {
    var num: Int {
        get {
            let a = 4
            let b = 5
            return a * b
        }
    }
}

class SomeMetod3 {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class SomeMetod4 {
    var myAge: Int {
        return 2023 - 1988
    }
}

class SomeMetod5 {
   var radius: Double
  
  var area: Double {
    return Double.pi * radius * radius
  }
  
  init(radius: Double) {
    self.radius = radius
  }
}

class SomeMetod6 {
    var count: Int

    var isEven: Bool {
        get {
            return count % 2 == 0
        }

        set { 
            if newValue {
                count += 1
            } else {
                count -= 1
            }
        }

    }

    init(count: Int) {
        self.count = count
    }
}

class SomeMetod7 {
  var score: Int = 0 {
    didSet {
      if score > oldValue {
        print("Score increased to \(score)")
      } else {
        print("Score decreased to \(score)")
      }
    }
  }
  
  func incrementScore() {
    score += 1
  }
  
  func decrementScore() {
    score -= 1
  }
}




let radius = SomeMetod5(radius: 45) // 6361.7251
let age = SomeMetod4() // 35
let num = SomeMetod2() // 20
let count = SomeMetod6(count: 333) 
let observers = SomeMetod7()
observers.score = 5 // Score increased to 5

//2. Напишите класс Калькулятор. Создать вычисляемые свойства, которые складывают, 
//умножают, делят, вычитают. И выведите результаты в консоль(распечатайте).

class Calc {
    var a: Double 
    var b: Double 

    var sum: Double {
        return a + b
    }

    var minus: Double {
        return a - b
    }

    var timesBy: Double {
        return a * b
    }

    var diveded: Double {
        return a / b
    }

    init(a:Double, b: Double) {
        self.a = a
        self.b = b
    }
}

let calculator = Calc(a:54.1, b: 94.5)
print(calculator.sum) // 148.6
print(calculator.minus) // -40.4
print(calculator.timesBy) // 5112.45
print(calculator.diveded) // 0.5724867724867725


//3.Создайте свой AppStore! Чтобы можно было записывать и сохранять, а потом вызывать 
//новые приложения в каждой категории. Результаты — в консоль.
//4. Добавьте своему AppStore отзывы. К каждому приложению. В виде текстовых сообщений.
//5. Добавьте возможность поставить оценку приложению. Но не более 5 баллов. Если кто-то 
//пытается вставить 6 или выше — какое-нибудь сообщение.
// 6. Подумайте, как можно добавить возможность удаления приложений из вашего AppStore.
// Напишите в коде.

class AppStore {
  var apps: [String: [String]] = [:]
  var reviews: [String: [String]] = [:]
  var rates: [String: [Int]] = [:]


    func addApp(_ app: String, toCategory category: String) {

        if var categoryApps = apps[category] {

        categoryApps.append(app)
        apps[category] = categoryApps

        } else {
            apps[category] = [app]
        }
        reviews[app] = []
        rates[app] = []
    
        print("Added \(app) to category \(category)")
        print(apps)
    }

    func getApps(inCategory category: String) -> [String] {
        if var categoryApps = apps[category] {
            print("Apps in category \(category):")
            for app in categoryApps {
                print("- \(app)")
            }
            return categoryApps
        } else {
            print("Category \(category) not found")
            return ["No apps"]
        }
    }

    func addReviews(_ review: String, forApp app: String) {
        if var appReviews = reviews[app] {
            appReviews.append(review)
            reviews[app] = appReviews
        } else {
            print("App \(app) not found")
        }
    }

    func getReviews(inApps app: String) -> [String] {
        if let appReviews = reviews[app] {
            print("Reviews for \(app):")
            for review in appReviews {
                print(" - \(review)")
            }
            return appReviews
        } else {
            print("App \(app) not found")
            return ["No reviews"]
        }
    }

    func addRates(_ rate: Int, forApp app: String) {
        if var appRates = rates[app] {
            if rate <= 5 {
                appRates.append(rate)
                rates[app] = appRates
            } else {
                print("Value forbiden")
            }
            
        } else {
            print("App \(app) has no rate")
        }
    }

     func removeApp(_ app: String) {
        for (category, categoryApps) in apps {
        if var index = categoryApps.firstIndex(of: app) {
            apps[category]?.remove(at: index)
            print("Removed \(app) from category \(category)")
            break
        }
        }
    
    reviews.removeValue(forKey: app)
    print("Removed \(app)'s reviews")
  }
    

}


let appStore = AppStore()
appStore.addApp("Map",toCategory: "Navigation")  //Added Map to category Navigation
appStore.addApp("Book", toCategory: "Education") //Added Book to category Education

appStore.getApps(inCategory: "Navigation") //Apps in category Navigation:- Map

appStore.addReviews("This is awesome app for you!",forApp: "Map")
appStore.getReviews(inApps: "Map") //Reviews for Map: - This is awesome app for you!

appStore.addRates(6, forApp: "Map") // Value forbiden
appStore.addRates(4, forApp: "Map") 


// 7. Написать 5-10 разных функций, глобальных и вложенных.
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

func greet(name: String) {
    print("Hello, \(name)!")
}

func rectangleArea(length: Double, width: Double) -> Double {
    return length * width
}


func areaOfCircle(radius: Double) -> Double {
    func square(number: Double) -> Double {
        return number * number
    }
    return Double.pi * square(number: radius)
}

//8. Написать 5-10 сортировок массивов и словарей, с замыканиями и без.

func bubbleSort<T: Comparable>(_ array: inout [T]) {
    guard array.count > 1 else {
        return
    }
    for i in 0..<array.count {
        for j in 1..<array.count - i {
            if array[j] < array[j - 1] {
                array.swapAt(j, j - 1)
            }
        }
    }
}

/*
ПРОДВИНУТЫЙ УРОВЕНЬ.
9. Поиграем в войнушку, как в детстве?:)
Создайте 3 класса: Орк, Человек, Эльф. 
У человека есть свойства (задайте на своё усмотрение), например, weaponDamage и health и 
функция, которая рассказывает об уроне от оружия. 
Эльф и Орк — наследники Человека. У Орка должен быть Наблюдатель, который сообщает 
об изменении health.
У Эльфа — тоже Наблюдатель, который сообщает об изменении weaponDamage (вроде: 
Оружие Эльфа стало наносить больший урон! Нужно купить броню мощнее).*
*/

class Human {
    var health: Int = 100 {
        willSet {
            print("Your health now \(newValue)")
        }
    }
    var weaponDamage: Int = 15 {
        willSet {
            print("Damage now is: \(newValue)")
        }
    }

    

    func damage() {
        print("Your damage is: \(weaponDamage)")
    }
}

class Ork: Human {
     override var health: Int {
        willSet {
            print("Ork's health now \(newValue)")
        }
    }
}

class Elf: Human {
    override var weaponDamage: Int{
        willSet {
            print("Weapon damage now is: \(newValue). Need to buy stronger armor.")
        }
    }
}

let bob = Human()
bob.health = 95

let bork = Ork()
bork.health = 70

let mistrael = Elf()
mistrael.weaponDamage = 20

/*
12. Свойства типа
1. Написать, что такое глобальные и локальные переменные (своими словами, как поняли) и 
что такое свойства типа (в чем отличие от свойств экземпляра?)
2. Создать глобальный массив значений (тип на ваше усмотрение)
*/

class GlobalArray {
    static var values: [Int] = [1, 23, 4, 5, 6, 7, 345, 6, 23, 75, 435, 345]
}

/*
Создать 2 класса:
 первый класс сортирует массив по индексам с первого до последнего;
 второй класс сортирует массив по индексам с последнего до первого.
Вывести в консоль.
*/

class SortMinus {
    func sort() {
        let sortArr = GlobalArray.values.sorted(by: <)
        print("array is sorted: \(sortArr)")
    }
}

class SortPlus {
    func sort() {
        let sortArr = GlobalArray.values.sorted(by: >)
        print("array is sored: \(sortArr)")
    }
}



let min = SortMinus()
min.sort() // array is sorted: [1, 4, 5, 6, 6, 7, 23, 23, 75, 345, 345, 435]
let max = SortPlus() 
max.sort() // array is sored: [435, 345, 345, 75, 23, 23, 7, 6, 6, 5, 4, 1]


/*
3. Создать свою компанию. В ней 2 класса-руководителя: генеральный директор и зам. по 
продажам.
У генерального 4 свойства. Сделать их разными: свойства типа и свойства экземпляра.
У зама по продажам (а он класс-наследник генерального) свойства наследуются + есть ещё 2 
своих: количество продаж и марка машины, к примеру. Все значения свойств вывести в 
консоль.
И третий класс — Бухгалтер. У него есть пустой метод, который принимает глобальный 
переменный массив Работа (тип Int) и плюсует все элементы, получая сумму всех значений в 
массиве. 
Сумму вывести в консоль.
*/



class GeneralDirector {
    let name: String
    let age: Int
    let salary: Int
    let wife: Bool

    static let companyName: String = "Boomredit"

    init(name: String, age: Int, salary: Int, wife: Bool) {
        self.name = name
        self.age = age
        self.salary = salary
        self.wife = wife
    }
}

class Manage: GeneralDirector {
    let salesCount: Int
    let carBrand: String

    init(name: String, age: Int, salary: Int, wife: Bool, salesCount: Int, carBrand: String) {
        self.salesCount = salesCount
        self.carBrand = carBrand
        super.init(name: name, age: age, salary: salary, wife: wife)
    }
}

class Accountant {
    func sumOfWork(_ arr: [Int]) -> Int {
       return arr.reduce(0, +)
    }
}

let director = GeneralDirector(name: "Bob", age: 43, salary: 200_000, wife: true)
print("My name is \(director.name), I'm \(director.age) year old, my salary is \(director.salary), \(director.wife ? "i have a wife" : "i don't have a wife")")
// My name is Bob, I'm 43 year old, my salary is 200000, i have a wife

let manage = Manage(name: "Jack", age: 33, salary: 30_000, wife: false, salesCount: 30, carBrand: "BMW")
print("My name is \(manage.name), I'm \(manage.age) year old, my salary is \(manage.salary), \(manage.wife ? "i have a wife" : "i don't have a wife"), also i have a car \(manage.carBrand) and my sales count is \(manage.salesCount)")
// My name is Jack, I'm 33 year old, my salary is 30000, i don't have a wife, also i have a car BMW and my sales count is 30



let accountant = Accountant()
let work: [Int] = [100, 200, 300, 400]
let sum = accountant.sumOfWork(work)
print("Sum of all work: \(sum)") // Sum of all work: 1000


/* 
4. Создайте класс «Монстр», который будет содержать имя, породу, с какой планеты прилетел, 
рост, вес, оружие. 
Добавьте несколько свойств класса:
 минимальный рост и максимальный вес монстра;
 минимальную и максимальную мощность оружия.
Создайте свойство, которое будет содержать количество созданных экземпляров этого класса.
4.1. Создайте наблюдателя, который будет отслеживать наносимый ущерб от оружия монстра.
*/


class Monster {
    var name: String
    var race: String
    var planet: String

    private var _height: Int
    var height: Int {
        get {
            if _height < 180 {
                return 180
            } else {
                return _height
            }
        }
        set {
            _height = newValue
        }
    }

    private var _weight: Int
    var weight: Int {
        get {
            if _weight > 300 {
                return 300
            } else {
                return _weight
            }
        }
        set {
            _weight = newValue
        }
    }

    private var _weaponPower: Int
    var weaponPower: Int {
        get {
            if _weaponPower < 10 {
                return 20
            } else if _weaponPower > 50 {
                return 50
            } else {
                return _weaponPower
            }
        }
        set {
            _weaponPower = newValue
        }
    }

    var damage: Int = 0 {
        didSet {
            print("\(name) caused \(damage) damage.")
        }
    }

    static var count = 0

    init(name: String, race: String, planet: String, height: Int = 180, weight: Int = 300, weaponPower: Int = 20) {
        self.name = name
        self.race = race
        self.planet = planet
        self._height = height
        self._weight = weight
        self._weaponPower = weaponPower
        Monster.count += 1
    }
}

let golem = Monster(name: "Fire", race: "Golem", planet: "Earth", height: 200, weight: 290, weaponPower: 15)
print(Monster.count) // 1
golem.damage = 10 // Fire caused 10 damage.


/*13. Методы
1) Создайте класс Программист. 
Задайте следующие свойства: 
a) язык программирования,
b) библиотеки, которые программист знает,
c) паттерны, которые программист знает,
d) английский язык,
e) наличие портфолио.

2) Напишите метод который будет распечатывать эти свойства в консоль
*/

class Programmar {
    var programmingLanguange: String
    var frameforks: [String]
    var patterns: [String]
    var english: Bool
    var portfolio: Bool

    init(programmingLanguange: String, frameforks: [String], patterns: [String], english: Bool, portfolio: Bool) {
        self.programmingLanguange = programmingLanguange
        self.frameforks = frameforks
        self.patterns = patterns
        self.english = english
        self.portfolio = portfolio
    }

    func allSkills() {
        print("Programming Language: \(programmingLanguange).")
        print( "Patterns: \(patterns.joined(separator: ", ") )")
        print( "Frameforks: \(frameforks.joined(separator: ", ") )")
        print("English: \(english ? "Yes" : "No").\nPortfolio: \(portfolio ? "Yes" : "No").")
        print("")
    }
}

let timur = Programmar(programmingLanguange: "JS", frameforks: ["React", "Tailwind"], patterns: ["MVC", "MVP"], english: false, portfolio: false)
timur.allSkills()
/*
Programming Language: JS.
Patterns: MVC, MVP
Frameforks: React, Tailwind
English: No.
Portfolio: No.
*/

let bob = Programmar(programmingLanguange: "Swift", frameforks: ["UIKit", "SwiftUI", "React"], patterns: ["MVC", "MVVM"], english: true, portfolio: true)
bob.allSkills()
/*
Programming Language: Swift.
Patterns: MVC, MVVM
Frameforks: UIKit, SwiftUI, React
English: Yes.
Portfolio: Yes.
*/

/*
3) Создайте класс HRManager. 
4) Напишите метод, который будет оценивать знания программиста и решать: брать на работу 
или нет.
Результат в консоли: «Не знает что такое MVC.Надо подумать.» и т. п.
*/

class HRManager {
    func giveJob(_ patternt: [String], _ framefork: [String], _ lang: Bool, _ port: Bool) {
      
            if !patternt.contains("MVC") {
                print("No MVC on the CV. Next pls!")
            } else if !framefork.contains("React") {
                print("Very vary bad, you need learn React and then come to us!")
            } else if !lang {
                print("Not good. We use only English, go home!")
            } else if !port {
                print("You must make CV!")
            } else {
                print("Well done, we hier you!")
            }
    }
}

let managerApple = HRManager()
managerApple.giveJob(timur.patterns, timur.frameforks, timur.english, timur.portfolio) // Not good. We use only English, go home!

managerApple.giveJob(bob.patterns, bob.frameforks, bob.english, bob.portfolio) // Well done, we hier you!

/*
ПРОДВИНУТЫЙ УРОВЕНЬ.
1) Создайте наблюдателя, который отслеживает: прошёл ли программист собеседование.
И если нет — добавьте этого программиста в массив.
*/


class ProgrammerIsPass {
    var isPassing = [Programmar]()

    func resultOfInterview(_ programmar: Programmar, _ passOrNot: Bool ) {
        if passOrNot {
            print("The pass the interview")
        } else {
            isPassing.append(programmar)
            print("Sorry but you need more practice")
        }
    }
}

let getJob = ProgrammerIsPass()
getJob.resultOfInterview(bob, true) // The pass the interview
getJob.resultOfInterview(timur, false) // Sorry but you need more practice


/*
14. Индексы
1) Создайте класс Карта. Задайте ему набор координат. Задайте каждой координате название. 
К примеру: горы, река, замок, пустошь, неизвестная местность.
2) Задайте каждой координате окраску. 

*/


class Map {
    var coordinate: Double
    var name: String
    var color: String

    init(coordinate: Double, name: String, color: String) {
        self.coordinate = coordinate
        self.name = name
        self.color = color
    }
}

class NewMap {
    var map = [Map]()

    func addMap(_ newMap: Map) {
         map.append(newMap)
    }
}

let firstPlace = Map(coordinate: 23.3, name: "River", color: "Blue")
let secondPlace = Map(coordinate: 67.0, name: "Mountain", color: "Gray")
let thirdPlace = Map(coordinate: 0.8, name: "Castle", color: "Brown")
let fourthPlace = Map(coordinate: 96.3, name: "Dead Pass", color: "Yellow")
let fifthPlace = Map(coordinate: 10.4, name: "Unknown", color: "Red")
let sixthPlace = Map(coordinate: 45.6, name: "Forest", color: "Green")

let newMapAddToArray = NewMap()
newMapAddToArray.addMap(firstPlace)
newMapAddToArray.addMap(secondPlace)
newMapAddToArray.addMap(thirdPlace)
newMapAddToArray.addMap(fourthPlace)
newMapAddToArray.addMap(sixthPlace)

for i in newMapAddToArray.map {
    print("According to these coordinates \(i.coordinate) is \(i.color) \(i.name) ")
}
/*
According to these coordinates 23.3 is Blue River 
According to these coordinates 67.0 is Gray Mountain 
According to these coordinates 0.8 is Brown Castle 
According to these coordinates 96.3 is Yellow Dead Pass 
According to these coordinates 45.6 is Green Forest
*/

/*
3) Создайте класс персонажа, который будет двигаться по координатам.
4) Создайте проверку: если персонаж попал, к примеру, в красные горы, то выводите 
сообщение на консоль.
*/

class Character {
    var name: String
    var characterCoordinate: Double

    init(name: String, characterCoordinate: Double){
        self.name = name
        self.characterCoordinate = characterCoordinate
    }

    func move(_ map: Map) {
        if characterCoordinate == map.coordinate {
            print("\(name) was near \(map.color) \(map.name)")
        }
    }
}

let jim = Character(name: "Jim", characterCoordinate: 67.0)

jim.move(secondPlace) // Jim was near Gray Mountain

/*
ПРОДВИНУТЫЙ УРОВЕНЬ.
1) Создайте своё войско, которые будут располагаться каждый на определённой координате. 
2) Создайте наблюдателей, которые будут отслеживать: если персонаж перешёл на клетку, 
которая занята другим персонажем — выводите сообщение, например: «Орки объявили войну 
Эльфам».
3) Добавьте алгоритм, который отслеживает чтобы нельзя было занять чужую координату.
*/



class Alliance {
    var race: String
    var coor: Int

    init(race: String, coor: Int) {
        self.race = race
        self.coor = coor
    }

    
}


class Alliances {
    var alliance = [Alliance]()

    func war(_ alli: Alliance, _ defeat: Alliance) {
        if alli.coor == defeat.coor {
            print("\(alli.race) have declared war on \(defeat.race)")
        } else {
            print("There is no war")
        }
    }

    func newland(wantToTake aggressiveRace: Alliance, peacefulКace: Alliance) {
        if aggressiveRace.coor == peacefulКace.coor {
            print("It is forbidden to take other people's lands, for attacking neighbors you will go to null lands")
            aggressiveRace.coor = 0
        } else {
            print("And they lived happily ever after")
        }
    }

    
}

let orc = Alliance(race: "Orc", coor: 2)
let human = Alliance(race: "Human", coor: 5)
let elf = Alliance(race: "Elf", coor: 8)
let ghom = Alliance(race: "Ghom", coor: 4)

let allRace = Alliances()
allRace.alliance.append(orc)
allRace.alliance.append(human)
allRace.alliance.append(elf)
allRace.alliance.append(ghom)

allRace.war(orc, ghom) // There is no war
orc.coor = 4
allRace.war(orc, ghom) // Orc have declared war on Ghom

allRace.newland(wantToTake: elf, peacefulКace: human) // And they lived happily ever after
allRace.newland(wantToTake: orc, peacefulКace: ghom) // It is forbidden to take other people's lands, for attacking neighbors you will go to null lands
print(orc.coor) // 0


/*
15. ARC
1) Создайте класс Охранник. Задайте ему свойство: посетитель. Создайте несколько 
экземпляров, которые не имеют ссылок на класс Охранник.
2) Вызовите у Охранника конструктор (init) и получите сообщение в консоль о том, что 
посетитель по имени «Иван» пришёл.
3) Сделайте так, чтобы посетитель ушёл, вызвав деконструктор(deinit).
4) Есть Компания, у неё есть директор, зам.директора и менеджеры по продажам.
*/

class Guard {
    var client: String

    init(client: String){
        self.client = client
        if client == "Ivan" {
            print("Ivan is arrived")
        }
    }

    deinit {
        if client == "Ivan" {
            print("Ivan left")
        }
    }
}

_ = Guard(client: "Bob")
_ = Guard(client: "Jack")
_ = Guard(client: "Ivan") // Ivan is arrived, Ivan left


/*
4) Есть Компания, у неё есть директор, зам.директора и менеджеры по продажам.
Пояснение: Директор — родительский класс, зам.директора его наследник, менеджеры —
наследники зам.директора. 
5) Менеджеры по продажам должны посылать друг другу сообщения. Вроде: «как продажи?» 
или «Передай мне отчет».
6) Реализуйте возможность у Менеджеров спрашивать Зам. директора про зарплату.
7) Реализуйте Зам. директору возможность отправлять отчет Директору.
*/

class Director {
    var name: String
    var age: Int
    var raport: String = ""

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class DeputyOfDirector: Director {
    func raport(_ rap: inout String, _ newString: String) {
        rap = newString
        print("Here is raport: \(newString)")
    }
}

class Manager1: DeputyOfDirector {

    
    func message(_ nameOfManage: String) {
        print("\(nameOfManage) рow are the sales?")
    }

    func salary(_ nameOfDeputy: String) {
        print("\(nameOfDeputy) when will you raise your salary?")
    }
}

class Manager2: Manager1 {

}

var director = Director(name: "Bob", age: 42)
var deputyOfDirector = DeputyOfDirector(name: "Steven", age: 39)
var manager1 = Manager1(name: "Sam", age: 30)
var manager2 = Manager2(name: "Rem", age: 31)

manager1.message(manager2.name) // Rem рow are the sales?
manager2.salary(deputyOfDirector.name) // Steven when will you raise your salary?
deputyOfDirector.raport(&director.raport, "sales increased tenfold") // Here is raport: sales increased tenfold
print(director.raport) // sales increased tenfold


/*
ПРОДВИНУТЫЙ УРОВЕНЬ.
1) Компания может выводить в консоль список всех сотрудников. 
2) Директор может обращаться к Компании и получить список всех сотрудников.
3) Реализуйте возможность уволить сотрудника (см.deinit)
*/

class Company {
    var employees = [Employee]()
   
    var count: Int  {
        return employees.count
    }

}

class Employee {
    var name: String
    var age: Int
    weak var company: Company?

    init(name: String, age: Int, company: Company) {
        self.name = name
        self.age = age
        self.company = company
        company.employees.append(self)
    }

    deinit {
        print("\(name) has been fired.")
        company?.employees.removeAll { $0 === self }
    }
}

class CompanyDirector {
    func allEmployeesCount(_ numOfEmployees: Int) {
        print("There are \(numOfEmployees) employees")
    }
}

let apple = Company()
let directorOfApple = CompanyDirector()
let employee1 = Employee(name: "Bob", age: 34, company: apple)
let employee2 = Employee(name: "Jack", age: 23, company: apple)
let employee3 = Employee(name: "Mark", age: 18, company: apple)
let employee4 = Employee(name: "Stive", age: 51, company: apple)


print(apple.employees)
print(apple.count) // 4
directorOfApple.allEmployeesCount(apple.count) // There are 4 employees

employee2.company = nil
print(apple.employees)


/*
16. ООП Парадигма
1) Создайте класс IT-компания. У него есть свойства: имя, должность, опыт, зарплата. И метод: 
workHard. 
Соответственно, экземпляры вашего класса должны каждый делать что-то своё: программист 
кодит, дизайнер создаёт дизайны, тестировщик — тестирует, проект-менеджер общается с 
клиентами.
Создайте методы writeCode, testABug, createAdesign,CallToClients.
Сообщаем их действия в консоль. 
2) Создайте классу свойство bugs типа Int. Создайте методы СatchBugs, FixBugs. 
3) Тестировщик вызывает метод СatchBugs, который прибавляет 1 к свойству bugs.
4) Программист вызывает метод CreateBugs, который отнимает от bugs 1 каждый раз при 
вызове.
5) Отследите момент, когда багов стало больше и пусть тестировщик скажет: отправил на 
исправление.
6) Отследите момент когда багов стало меньше и сделайте соответствующее объявление от 
программиста.
*/



class ItCompany {
    var name: String
    var position: String
    var experience: Int 
    var salary: Int 

    var bugs: Int = 0 {
        didSet {
            if bugs > 6 {
                print("Tester: Sent to correction!")
            } else if bugs > 3 && bugs < 6{
                print("Programmer: Now I can work again!")
            }
        }
    }

    init(name: String, position: String, experience: Int, salary: Int) {
        self.name = name 
        self.position = position
        self.experience = experience
        self.salary = salary
    }

    func workHard() {
        print("\(position) \(name) is working hard!")
    }
}

class Programmer: ItCompany {
    func writeCode(_ arrayOfDesigns: inout  [String]) {
        
        if !arrayOfDesigns.isEmpty {
            arrayOfDesigns.removeFirst()
        } else {
            print("Hi! I'am \(position) \(name) and I'm writing code!")
            print("The project is ready. I send to the tester")
        }
    }

    
    func fixBugs(_ bug: Int) {
        print("I fixed it!")
        bugs -= 1
    }
}

class Designer: ItCompany {
    var names = ["Bob", "Alice", "Charlie", "David", "Emily", "Frank", "Gina", "Harry", "Isabelle", "Jack"]

    
    func createAdesign() {
        print("Hi! I'am \(position) \(name) and I'm creating a design!")
    }

   override init(name: String, position: String, experience: Int, salary: Int) {
       super.init(name: name, position: position, experience: experience, salary: salary)
       self.name = names.randomElement() ?? "My Secret Name"
   }
}

class Tester: ItCompany {
    func testABug() {
        print("Hi! I'am \(position) \(name) and I'm testing code!")
    }

    func catchBugs() {
        print("I catch it!")
        bugs += 1
    }
}

class ProjectManager: ItCompany {
    func callToClients() {
        print("Hi! I'am \(position) \(name) and I'm calling to clients!")
    }
}


let programmer1 = Programmer(name: "John", position: "Programmer", experience: 3, salary: 3000)
let tester1 = Tester(name: "Mary", position: "Tester", experience: 2, salary: 2500)
let designer1 = Designer(name: "Lisa", position: "Designer", experience: 1, salary: 2000)
let projectManager1 = ProjectManager(name: "Bob", position: "Project Manager", experience: 5, salary: 4000)
tester1.catchBugs() // I catch it!

/* 
7) Создайте класс-наследник IT-компании.Назовите его Designers. Создайте ему ему массив 
prototypes. Сделать проверку: если он пустой, добавлять туда значения. В методе 
createAdesign.
8) Если в prototypes значений стало больше чем 10 — сделать сообщение: «Дизайн 
готов.Передаю в работу программисту».
9) Каждый раз, когда вызывается метод writeCode — количество значений в массиве prototypes 
уменьшается на 1.
10) После того, как из prototypes уберёте все значения — программист выводит сообщение: 
«Проект готов. Отправляю тестировщику».
11) Добавьте дизайнеру следующее: когда пытаетесь присвоить ему имя, он его постоянно 
меняет на какое-то своё.
*/


class Designers: ItCompany {
    var prototypes: [String] = [String]()

    func create(_ newPrototype: String) {
        if prototypes.count < 9{
            prototypes.append(newPrototype)
        } else {
            print("The design is ready. Handing over to a programmer")
        }
    }
}


let designers = Designers(name: "Group of designers", position: "Designers", experience: 10, salary: 100000) 
designers.create("UI")
designers.create("UX")
designers.create("Color")
designers.create("Font")
designers.create("Style")
designers.create("Mobile")
designers.create("Web")
designers.create("B&W")
designers.create("Responsive")
designers.create("Best")
designers.create("Fast")

print(designers.prototypes.count) // 9
programmer1.writeCode(&designers.prototypes)
print(designers.prototypes.count) // 8
programmer1.writeCode(&designers.prototypes)
programmer1.writeCode(&designers.prototypes)
programmer1.writeCode(&designers.prototypes)
programmer1.writeCode(&designers.prototypes)
programmer1.writeCode(&designers.prototypes)
programmer1.writeCode(&designers.prototypes)
programmer1.writeCode(&designers.prototypes)
programmer1.writeCode(&designers.prototypes)
print(designers.prototypes.count) // 0
programmer1.writeCode(&designers.prototypes) // The project is ready. I send to the tester


print(designer1.name) // Isabelle
print(designer1.name) // Harry etc.

/*
17. Опциональные цепочки
1) Создать класс Животное. Ему назначьте свойства: собака, кошка, свинья, корова, курица, 
лев, ягуар и т.п. 
Пусть их будет не меньше 20.
2) Каждому животному задайте тип: домашнее, дикое, опасное. 
3) Создайте метод, который фильтрует животных по типу и добавляет их в определённый 
массив
*/

class Animal {
    var kind: String
    var type: String
    

    init(kind: String, type: String) {
        self.kind = kind
        self.type = type
    }

    
    
}

class FilteredTypes {
    var homemade = [String]()
    var wild = [String]()   
    var dangerous = [String]()

    func filter(_ kind: String ,ofType type: String) {
        if type == "homemade" {
            homemade.append(kind)
        } else if type == "wild" {
            wild.append(kind)
        } else {
            dangerous.append(kind)
        }
    }
}

let filterOfType = FilteredTypes()
let dog = Animal(kind: "Dog", type: "homemade")
let cat = Animal(kind: "Cat", type: "homemade")
let pig = Animal(kind: "Pig", type: "homemade")
let cow = Animal(kind: "Cow", type: "homemade")
let lion = Animal(kind: "Lion", type: "dangerous")
let jaguar = Animal(kind: "Jaguar", type: "dangerous")
let parrot = Animal(kind: "Parrot", type: "wild")
let eagle = Animal(kind: "Eagle", type: "dangerous")
let monkey = Animal(kind: "Monkey", type: "wild")
let kangaroo = Animal(kind: "Kangaroo", type: "wild")
filterOfType.filter(dog.kind ,ofType: dog.type)
filterOfType.filter(cow.kind ,ofType: cow.type)
filterOfType.filter(parrot.kind ,ofType: parrot.type)
filterOfType.filter(eagle.kind ,ofType: eagle.type)
filterOfType.filter(kangaroo.kind ,ofType: kangaroo.type)
print(filterOfType.homemade) // ["Dog", "Cow"]
print(filterOfType.wild) // ["Parrot", "Kangaroo"]
print(filterOfType.dangerous) // ["Parrot", "Kangaroo"]



/*
4) Создайте класс Фермер. Ему назначьте свойства: имя, должность, зарплата.
5) Создайте 10-20 фермеров. Каждому назначьте разные имена, должности и зарплаты.
Посчитайте, кто из них получает наибольшую зарплату.
*/

enum Gender {
    case male
    case femail
}

class Farmer {
    var name: String
    var post: String
    var salary: Double
    var sex: Gender

    

    init(name: String, post: String, salary: Double, sex: Gender) {
        self.name = name
        self.post = post
        self.salary = salary
        self.sex = sex
    }

    func hardWork() {
        print("I work into field")
    }

    func homeWork() {
        print("i work into house")
    }
}



let farmer1 = Farmer(name: "John", post: "Farm Manager", salary: 54.000, sex: .male)
let farmer2 = Farmer(name: "Mary", post: "Dairy Manager", salary: 51.000, sex: .femail)
let farmer3 = Farmer(name: "Steve", post: "Crop Manager", salary: 45.000, sex: .male)
let farmer4 = Farmer(name: "Emma", post: "Poultry Manager", salary: 39.000, sex: .femail)
let farmer5 = Farmer(name: "David", post: "Horticulturist", salary: 65.000, sex: .male)
let farmer6 = Farmer(name: "Jessica", post: "Animal Husbandry Specialist", salary: 62.000, sex: .femail)
let farmer7 = Farmer(name: "Michael", post: "Farm Equipment Technician", salary: 57.000, sex: .male)
let farmer8 = Farmer(name: "Samantha", post: "Greenhouse Manager", salary: 48.000, sex: .femail)
let farmer9 = Farmer(name: "Brian", post: "Agribusiness Consultant", salary: 77.000, sex: .male)
let farmer10 = Farmer(name: "Emily", post: "Sustainable Agriculture Advocate", salary: 75.000, sex: .femail)

var allSalaries = [Farmer]()

allSalaries.append(farmer1)
allSalaries.append(farmer2)
allSalaries.append(farmer3)
allSalaries.append(farmer4)
allSalaries.append(farmer5)
allSalaries.append(farmer6)
allSalaries.append(farmer7)
allSalaries.append(farmer8)
allSalaries.append(farmer9)
allSalaries.append(farmer10)

var maxSalaryFarmer: Farmer? = nil
for farmer in allSalaries {
    if maxSalaryFarmer == nil || farmer.salary > maxSalaryFarmer!.salary {
        maxSalaryFarmer = farmer
    }
}

if let maxSalaryFarmer = maxSalaryFarmer {
    print("\(maxSalaryFarmer.name) has max salary: $\(maxSalaryFarmer.salary)") // Brian has max salary: $77.0
}

/*
6) С помощью перечислений распределите их по половому признаку. Создайте метод, который 
фильтрует женщин и мужчин и добавляет в разные массивы.
Массивы распечатать в консоль.
7) У мужчин вызывать метод hardWork, у женщин — homeWork.
HardWork будет просто говорить: «работаю в поле», homeWork - «Убираю в доме».
*/


var maleFarmers = [Farmer]()
var femaleFarmers = [Farmer]()

for fermer in allSalaries {
    if fermer.sex == .male {
        maleFarmers.append(fermer)
    } else {
        femaleFarmers.append(fermer)
    }
}


for man in maleFarmers {
    print("This men work: \(man.name)")
    man.hardWork()
}

for woman in femaleFarmers {
    print("This woman work at home: \(woman.name)")
    woman.homeWork()
}

/*
ПРОДВИНУТЫЙ УРОВЕНЬ.
8) Создайте класс Охотник. У него создайте метод, который будет искать опасных и диких 
животных (см. Задание 1.2) и «убивать» их. 
Результат в консоли: «Охотник убил змею».Соответственно, количество элементов массива 
сокращается.
9) Отследите: если массив с дикими животными больше не содержит значений, добавляйте в 
массив с опасными животными новые значения.
*/

class Hunter {
    var name: String
    var speciality: String


    var animals = ["lion", "tiger", "bufallo", "rabit", "deer", "eagle", "bear"]

    init(name: String, speciality: String) {
        self.name = name
        self.speciality = speciality

        if animals.count == 0 {
            animals = ["dragon", "rino", "rat", "loin", "human", "sealion"]
        }
    }

    func hunt(findSome animal: String)  {
        if animals.contains(animal) {
            print("You killed the \(animal)")
            animals = animals.filter{$0 != animal}
        } else {
            print("There is no \(animal)")
        } 
        
    }
}


let hunterBob = Hunter(name: "Bob", speciality: "Animal hunter")
print(hunterBob.animals) // ["lion", "tiger", "bufallo", "rabit", "deer", "eagle", "bear"]
hunterBob.hunt(findSome: "tiger") // You killed the tiger
print(hunterBob.animals) // ["lion", "bufallo", "rabit", "deer", "eagle", "bear"]

/*
10) Создайте Охотнику свойства: имя и специальность. К примеру, змеелов. Создайте 5-7 
таких охотников, разных специальностей. Распечатайте в консоль.
*/

let hunterJack = Hunter(name: "Jack", speciality: "Fish hunter")
let hunterMark = Hunter(name: "Mark", speciality: "Bird hunter")
let hunterSenna = Hunter(name: "Senna", speciality: "Widl animal hunter")
print("Hunter \(hunterBob.name) and his speciality \(hunterBob.speciality)") //Hunter Bob and his speciality Animal hunter
print("Hunter \(hunterJack.name) and his speciality \(hunterJack.speciality)") // Hunter Jack and his speciality Fish hunter
print("Hunter \(hunterMark.name) and his speciality \(hunterMark.speciality)") // Hunter Mark and his speciality Bird hunter
print("Hunter \(hunterSenna.name) and his speciality \(hunterSenna.speciality)") // Hunter Senna and his speciality Widl animal hunter

/*
18. Обработка ошибок
1) Создайте класс Системный Администратор. 
Задайте ему свойства: Вирус, Нет сети, ddos-атака
2) Создайте метод, который будет ловить ошибки. Сделайте так, чтобы был выход из метода 
раньше, чем будут «пойманы» ошибки.
3) Сделайте запрет на передачу ошибок.
*/

class SystemAdmin {
    var hasVirus = false
    var noNetwork = true
    var ddosAttack = false
    
    func catchErrors() throws {
        guard !hasVirus else {
            throw SystemAdminError.hasVirus
        }
        
        guard !noNetwork else {
            throw SystemAdminError.noNetwork
        }
        
        guard !ddosAttack else {
            throw SystemAdminError.ddosAttack
        }
        
        print("No errors found")
    }
}

enum SystemAdminError: Error {
    case hasVirus
    case noNetwork
    case ddosAttack
}

do {
    let admin = SystemAdmin()
    try admin.catchErrors()
} catch {
    print("Error caught: \(error)") // Error caught: noNetwork
}

/*
19. Проверка и приведение типов
1) Создайте класс Планета. Задайте ему 3 свойства: название, размер, цвет.
2) Создайте класс Марс. Сделайте его наследников класса Планета. Скройте(инкапсулируйте) 
его цвет и добавьте новое свойство: население.
3) Марсу сделайте метод changeSize. С таким условием, что каждый раз когда этот метод 
вызывается — размер Марса увеличивается в 2 раза.
*/

class Planet {
    var name: String
    var size: Int
    private var color: String

    init(name: String, size: Int, color: String) {
        self.name = name
        self.size = size
        self.color = color
    }

}

class Mars: Planet {
    var population: Int

    init(population: Int,name: String, size: Int, color: String) {
        self.population = population
        super.init(name: name, size: size, color: color)
    }

    func changeSize() {
            size *= 2
    }
}

let mars = Mars(population: 0, name:"Mars", size: 4, color: "Red" )
print(mars.size) // 4
mars.changeSize()
print(mars.size) // 8

/*
4) Создайте класс Сатурн. Добавьте ему свойство Кольца типа Bool. Выполните условие: когда 
размер планеты превышает 30, кольца видны, если меньше 10 — кольца не видны.
*/


class Saturn: Planet {
    var rings: Bool {
        if size >= 30 {
            print("You can see the rings")
            return true
        } else { 
            print("You can't see the rings!")
            return false
        }
    }


}

let saturn = Saturn(name: "Saturn", size: 31, color: "Orange")

print(saturn.rings) //You can see the rings

/*
5) Создайте 5-6 экземпляров каждого класса. Добавьте их в массив и проверьте: какого типа 
все эти экземпляра.
*/

var planerArray: [Planet] = [mars, saturn] // type of: Array<Planet>

print(type(of: planerArray[0])) //  Mars
print(type(of: planerArray[1])) //  Saturn


/*
ПРОДВИНУТЫЙ УРОВЕНЬ.
1) Создайте класс Темная планета. Сделайте так, чтобы он уничтожал все другие планеты.
Примечание: вспоминаем ARC
*/

class DarkPlanet: Planet {

     func destroyAll(_ planets: inout  [Planet]) {
            planets = []
        }
    
}

print(planerArray) // [a.Mars, a.Saturn]
let darkPlanet = DarkPlanet(name: "Dark Planet", size: 100, color: "Black")
darkPlanet.destroyAll(&planerArray)
print(planerArray) // []


/*
2) Создайте класс Марсианин. Сделайте его наследником класса Марс. Создайте ему 
свойство humanoid.
3) Сделайте проверку типа: если он принадлежит классу Марс, то прибавьте к humanoid 1 и 
добавьте в массив
*/

class Martian: Mars {
    var humanoid: Int

    init(humanoid: Int,population: Int,name: String, size: Int, color: String) {
        self.humanoid = humanoid
        super.init(population: population, name: name, size: size, color: color)
    }
}

let martian = Martian(humanoid: 0,population: 0, name: "Mars", size: 4, color: "red")
print(type(of: martian)) // Martian

if martian is Mars {
    martian.humanoid += 1
} else {
    print("there is no humanoids on the Mars")
}

print(martian.humanoid) // 1


/*
21. Протоколы
1) Создайте протокол Собеседование. У него есть свойство: фамилия. И методы: 
successOfinterview и failureOfInterview.
2) Создайте класс Программист. У него задайте свойства: skill типа String и inSearchOfJob типа 
Bool. Сделайте их опциональными. Программисту подключите протокол Собеседование.
3) Добавьте 2 массива, в которые будете добавлять программистов. Вроде okArray и failArray.
4) В методе successOfinterview сделайте проверку свойства inSearchOfJob. Если true —
выводите сообщение «Подходит» и добавляйте имя в массив + сортируйте его по алфавиту.
5) В методе failureOfInterview просто выводите сообщение: «Не подходит»
*/

protocol Interview {
    var lastName: String { get set }

    func successOfInterview(_ arr: inout [String]) 

    func failureOfInterview() 
}

class Programmer: Interview {
    var lastName: String

    var skill: String?
    var inSearchOfJob: Bool?

    init(lastName:String) {
        self.lastName = lastName
    }

    func successOfInterview(_ arr: inout [String]) {
        if inSearchOfJob ?? true {
            print("Подходит")
            arr.append(lastName)
        } 
    }

    func failureOfInterview() {
        if inSearchOfJob == false {
            print("Не подходит")
        }
    }
}

var okArray: [String] = [String]()
var failArray: [String] = [String]()

let backend = Programmer(lastName: "Blackback")
backend.skill = "JS"
backend.inSearchOfJob = true
backend.successOfInterview(&okArray) // Подходит
backend.failureOfInterview() // -
let frontend = Programmer(lastName: "Frontend")
frontend.skill = "JS"
frontend.inSearchOfJob = false
frontend.successOfInterview(&okArray) // 
frontend.failureOfInterview() // - Не подходит
print(okArray) // ["Blackback"]


/*
6) Добавьте наблюдателя, который будет отслеживать как добавляются подходящие 
программисты.
7) Добавьте протокол Техническое собеседование (наследник Собеседования). Добавьте ему
свойство isSuitable типа Bool и методы: successTechnicalOfinterview и failureTechnicalOfInterview. 
8) successTechnicalOfinterview проверяет inSearchOfJob и skill: если inSearchOfJob == true, а
skill == «ios», то добавляет этого программиста в массив okArray. И выводит сообщение об 
успешно пройденном собеседовании. «Вы нам подходите. Ждите оффер».
9) failureTechnicalOfInterview просто выводит сообщение «Нам жаль, но программист(имя) не 
прошёл собеседование».
10) Создайте класс Тестировщик. Подключите ему протоколы Собеседование, Техническое 
собеседование. Также добавьте свойство exp(опыт) типа Int и имя типа String.
11) Сделайте простую проверку: если опыт больше 3 лет — вызвать метод successOfinterview, 
который распечатает в консоль: «Тестировщик Егор допущен к техническому собеседованию».
А если меньше 3 лет - в методе failureOfInterview просто выводите сообщение: «Егор не 
подходит»
*/

protocol TechnicalInterview: Interview {
    var isSuitable: Bool {get set}

    func successTechnicalOfinterview(_ searchJob: Bool, _ skills: String)
    func failureTechnicalOfInterview()
}

class QA: TechnicalInterview {
    var lastName: String
    var isSuitable: Bool
    var skill: String?
    var inSearchOfJob: Bool?
    var exp: Int = 0

    init(lastName: String, isSuitable: Bool) {
        self.lastName = lastName
        self.isSuitable = isSuitable
    }

    func successOfInterview(_ arr: inout [String]) {
        if inSearchOfJob ?? true {
            print("Подходит")
            arr.append(lastName)
        } else {
            failureOfInterview()
        }
    }

    func failureOfInterview() {
        print("Не подходит")
    }

    

    func successTechnicalOfinterview(_ searchJob: Bool, _ skills: String) {
        if searchJob == true && skills == "iOS" {
            print("Вы нам подходите. Ждите оффер")
            okArray.append(lastName)
        } else {
            failureTechnicalOfInterview()
        }
    }

    func failureTechnicalOfInterview() {
        print("Нам жаль, но программист \(lastName) не прошёл собеседование")
    }

    func exp(_ exp: Int) {
        if exp >= 3 {
            successOfInterview(&okArray)
            print("Тестировщик \(lastName) допущен к техническому собеседованию")
        } else {
            failureOfInterview()
            print("\(lastName) не подходит")
        }
    }

}

let qa = QA(lastName: "Qashnicov", isSuitable: true)

qa.successTechnicalOfinterview(true, "iOS") //Вы нам подходите. Ждите оффер
qa.exp(4) // Тестировщик Qashnicov допущен к техническому собеседованию


let qa2 = QA(lastName: "Qabyian", isSuitable: false)

qa2.successTechnicalOfinterview(false, "JS") // Нам жаль, но программист Qabyian не прошёл собеседование
qa2.exp(2) // Qabyian не подходит

/*
22. Дженерики
1) Создать 5 функций, каждая - с входящими параметрами универсальных типов.
Преобразовать их параметры в Int, Double, Float, String, Character. Параметры внутри тела 
функции добавить параметры в массив и отсортировать.
Вывести результаты в консоль.
*/

let sum = [44,23,65,23,767,23,54,1,5,6757,]

func first<T>(_ input: T) -> [Int] {
    var array = [Int]()
    if let num = Int("\(input)") {
        array.append(num)
    } 
    
    return array.sorted()
}

print(first(45)) // [45]
print(first("45"))  // [45]
print(first("num")) // []

func second<T> (_ input: T) -> String {
    var str = ""
    if let string = input as? String {
        str = string
    } else {
        str = "No string input"
    }

    return str
}

print(second("hello")) // hello
print(second(45)) // No string input


// 2) Создать класс, структуру, перечисление универсального типа — для тренировки


class Box<T> {
    var value: T

    init(value: T) {
        self.value = value
    }
}

let box = Box(value: "Hello, box")
print(box.value) // Hello, box

let boxInt = Box(value: 45)
print(boxInt.value) // 45


struct Test<T> {
    let value: T
}

let test = Test(value: 45)
print(test.value) //45

let testString = Test(value: "Hello, test")
print(testString.value) //Hello, test

struct Lego<T, U> {
    let legoBox: T
    let legoWheel: U
}

let lego = Lego(legoBox: 3, legoWheel: "Wood")
print(lego.legoBox, lego.legoWheel) // 3 Wood


enum Resoult <T> {
    case success(T)
    case error(T)
}

let result = Resoult.success("Success")
print(result) // success("Success")


// 3) Создать протокол Стрелять. У него создать метод shoot.


protocol Fire {
    func shoot () 
}

/*
4) Создать класс Солдат. Ему задайте имя и звание. Подключите к классу протокол Стрелять.
Класс должен быть с универсальным шаблоном. Вызовите у него метод протокола. Метод 
должен называть имя, звание
*/

class Soldier<T, U>: Fire {
    let name: T
    let rank: U

    init(name: T, rank: U) {
        self.name = name 
        self.rank = rank
    }

     func shoot() {
         print("Your name is: \(name) and your rank is: \(rank)")
    }
}

let bob = Soldier(name: "Bob", rank: "private")

bob.shoot() // Your name is: Bob and your rank is: private


/*
5) Сделайте расширение класса Солдат. Добавьте свойство срок службы и наблюдайте за 
ним. Если срок службы больше 10 — прилетает сообщение «А вот и дембель!»,а если меньше 
— пусть чистит картошку.
*/

extension Soldier {
    var serviceYears: Int {
        didSet {
            if serviceYears >= 10 {
                print("А вот и дембель!")
            } else {
                print("\(name) (\(rank)) should peel potatoes.")
            }
        }
    }
}

let mask = Soldier(name: "Mask", rank: "Colonel")
