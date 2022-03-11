import UIKit


// Константа
//let name = "Vladislav"

// Переменная
//var myName = "Vladislav"

// Типы данных
let nameString: String = "" // Текстовое значение
let ageInt: Int = 21 // Целые числа
let ageDouble: Double = 21.685 // Число с плавающей точкой
let flagBool: Bool = true // true or false

// Вывод в консоль
print("Hello, World!")

var number: Int = 5
// одно и то же
number = number + 1
number += 1

//var flag = false
//
//flag = true
//if flag == true {
//
//}
//
//if !flag {
//
//}

// Задание 1 - в консоль выводилось обратное число из нашей переменной
var numberFirst: Int = -15
print(numberFirst *= -1)

// Пример интерполяции строк
let myName: String = "Vladislav"
print("Hello, \(myName)")

// Создание пустого массива
var namesEmptyArray: [String] = []

var namesArray: [String] = ["Vladislav", "Petya", "Petr"]

// Просмотр элемента по индексу
namesArray[1] // Покажет Petya, тк индекс отсчитывает с 0
namesArray.count // Количество элементов в массиве

namesArray.append("Vova") // Добавляет элемент в конец
namesArray.insert("Vasya", at: 0) // Добавить элемент по индексу

namesArray.removeFirst() // Удалить первый элемент по индексу
namesArray.removeLast() // Удалить последний элемент по индексу
namesArray.removeAll() // Удалить все элементы из массива

// Задание 2 - перенести 0, в начало перед единицей
var numbersArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
numbersArray.insert(0, at: 0)
numbersArray.removeLast()
print(numbersArray)

// Создание пустого словаря
var emptyLang: [Int : String] = [:]

// Создание заполненного словаря
var lang: [Int : String] = [0 : "Hi", 1 : "Hello", 2 : "Привет"]
print(lang) // Вывод словаря в консоль

lang.count // Количество элементов в словаре
lang.isEmpty // True or False, проверка на пустоту словаря (у массива .isEmpty тоже работает)

lang[2] // Вывод элемента осуществляется только через ключ

lang[0] = "Здарова" // Изменение значения в словаре, обрщаемся через ключ

lang.removeValue(forKey: 1) // Удаление элемента по ключу

lang.removeAll() // Удалить всё их словаря (1 вариант)
lang = [:] // Удалить всё из словаря (2 вариант)

// Задание 3 - добавить новый ключ England со значением 50, удалить ключ USA, изменить значение у ключа Russia на 200, вывести словарь в консоль
var countriesLang: [String : Int] = ["Russia" : 150, "USA" : 120, "China" : 100]
countriesLang["England"] = 50
countriesLang.removeValue(forKey: "USA")
countriesLang["Russia"] = 200
print(countriesLang)

// Условие if
let myAge: Int = 25

if myAge < 30 {
    print("Good")
} else if myAge >= 30 && myAge <= 40 {
    print("Bad")
}

// Использование if с bool значениями
// 1 вариант
var bool: Bool = true
if bool {
    print("True")
    /*
     
     
     
     
     */
} else {
    print("False")
}
// 2 вариант
var bool2: Bool = false
if !bool2 {
    /*
     
     Блок Кода
     
     
     */
} else {
    print("False")
}


// Задание 4 - if, температура меньше 5, то выводим в консоль "На улице холодно", больше или равно 5 и меньше 18, то выводим в консоль "На улице свежо", если больше или равно 18, то выводим в консоль "На улице жарко"
let temp: Int = 10
if temp < 5 {
    print("На улице холодно")
} else if temp >= 5 && temp < 18 {
    print("На улице свежо")
} else if temp >= 18 {
    print("На улице жарко")
}

// Switch case
let weather: String = "Sunny"
switch weather {
    
case "Sunny":
    print("На улице солнечно")
case "Snowy":
    print("На улице снег")
case "Rain":
    print("На улице дождь")
    
default:
    print("Погода не найдена")
}

// Простой цикл
// Используется открытый диапазон, последнее число включительно
for i in 1...10 {
    print(i) // i с 1 по 10
}
// Используется закрытый диапазон, последнее число не включено
for i in 1..<10 {
    print(i) // i с 1 до 10
}

var countriesArray: [String] = ["Russia", "Ukraine", "USA", "China", "England"]
// Вывод каждого элемента из массива
for country in countriesArray {
    print(country)
}

// Удаление элемента из массива используя поиск
var indexNum: Int = 0
for i in 0..<countriesArray.count {
    if countriesArray[i] == "Ukraine" {
        indexNum = i
    }
}
countriesArray.remove(at: indexNum)


// Функции
// Функция ничего не принимает и не возвращает
func testFirstFunc() {
    print("My First Func")
}

testFirstFunc()

// Функция принимает значения, но не возвращает
func helloFunc(name: String) {
    print("Hello, \(name)")
}

helloFunc(name: "Vladislav")

// Функция ничего не принимает, но возвращает
func returnFunc() -> String {
    return "Return"
}

print(returnFunc())

// Функция принимает значения и возвращает
func plusFunc(numberFirst: Int, numberSecond: Int) -> Int {
    return numberFirst + numberSecond
}

print(plusFunc(numberFirst: 3472894, numberSecond: 56347538))
