//
//  main.swift
//  dz3
//
//  Created by Фархат Сталбек уулу on 16/9/22.
//

import Foundation

// dop dz

// Создать функцию, которая будет приниматьаргумент и проверять его четный он или нет
// Создать функцию, которая будет проверять, число больше 10 или нет
// Используя readline ввести 5 разных чисел и проверить их все раннее созданными функциями
// Результаты записать в переменные

// Пример
// Четных - 2
// Нечетных - 2
// Больше 10 -1


//dz#chetnoe chislo

var chetniyCount = 0
var neChetniyCount = 0
var moreThanTenCount = 0
var lessThanTenCount = 0

func odd(num : Int) {
    if  num % 2 == 0 {
        print(num, "- четное число")
        chetniyCount += 1
    }
    else {
        print(num, "- нечетное число")
        neChetniyCount += 1
    }
}


func moreThanTen(num: Int) {
    if num > 10 {
        print (num, "> 10")
        moreThanTenCount += 1
    }
    else {
        print(num, "< 10")
        lessThanTenCount += 1
    }
}

print("Введите число")
var num = readLine()!
odd(num: Int(num)!)
moreThanTen(num: Int(num)!)
print("Введите число")
var num6 = readLine()!
odd(num: Int(num6)!)
moreThanTen(num: Int(num6)!)
print("Введите число")
var num3 = readLine()!
odd(num: Int(num3)!)
moreThanTen(num: Int(num3)!)
print("Введите число")
var num4 = readLine()!
odd(num: Int(num4)!)
moreThanTen(num: Int(num4)!)
print("Введите число")
var num5 = readLine()!
odd(num: Int(num5)!)
moreThanTen(num: Int(num5)!)

print("Количество четных чисел - \(chetniyCount) \nКоличество нечетных чисел - \(neChetniyCount)\nКоличест8во чисел (> 10) - \(moreThanTenCount)\nКоличество чисел (< 10) - \(lessThanTenCount)")


//DZ#calculator

func calculator(num1: Double, sim: String, num2: Double) {
    if sim == "-" {
        print(num1, "-", num2, "=", num1 - num2)
    }
    else if sim == "+" {
        print(num1, "+", num2, "=", num1 + num2)
    }
    else if sim == "*" {
        print(num1, "*", num2, "=", num1 * num2)
    }
    else if sim == "/" {
        print(num1, "/", num2, "=", num1 / num2)
    }
    else {
        print("Введите правильный символ (+ - * /)")
    }
}
print("Введите число")
var num1 = readLine()!
print("Введите один из символов (+ - * /)")
var sim = readLine()!
print("Введите число")
var num2 = readLine()!

calculator(num1: Double(num1)!, sim: sim, num2: Double(num2)!)






//DZ#1

func pogoda(city: String) {
    if city.lowercased() == "бишкек" {
        print("""
Сегодня +29
Завтра +30
Среда +28
""")
    }
    else if city.lowercased() == "нарын" {
        print("""
Сегодня +20
Завтра +21
Среда +20
""")
    }
    else if city.lowercased() == "чолпон-ата" {
        print("""
Сегодня +20
Завтра +20
Среда +21
""")
    }
    else if city.lowercased() == "талас" {
        print("""
Сегодня +26
Завтра +26
Среда +25
""")
    }
    else if city.lowercased() == "ош" {
        print("""
Сегодня +29
Завтра +30
Среда +28
""")
    }
    else if city.lowercased() == "жалал-абад" {
        print("""
Сегодня +31
Завтра +31
Среда +29
""")
    }
    else if city.lowercased() == "баткен" {
        print("""
Сегодня +28
Завтра +28
Среда +28
""")
    }
    else {
        print("Введите город из списка (Бишкек, Чолпон-Ата, Талас, Ош, Жалал-Абад, Нарын или Баткен")
        var city = readLine()!
        pogoda(city: city)
    }
}
print("Введите город из списка (Бишкек, Чолпон-Ата, Талас, Ош, Жалал-Абад, Нарын или Баткен")
var city = readLine()!
pogoda(city: city)





//DZ#2

var coce = 50
var kefir = 65
var milk = 40
var bread = 20
var salat = 100
var total = 0.0
var discount = 0.05
var totalString = ""

func addToBag(cost: Int, name: String) {
    total += Double(cost)
    totalString += "\(name) - \(cost) сом\n"
}

func getItemCost(name: String) -> Int {
    if name.lowercased() == "кола" {
        return coce
    }
    else if name.lowercased() == "кефир" {
        return kefir
    }
    else if name.lowercased() == "молоко" {
        return milk
    }
    else if name.lowercased() == "хлеб" {
        return bread
    }
    else if name.lowercased() == "салат" {
        return salat
    }
    else {
        print("Введите продукт из списка (Кола, Кефир, Молоко, Хлеб, Салат)")
        return 0
    }
}

print("Введите название продукта из списка (Кола, Кефир, Молоко, Хлеб, Салат)")

var product = readLine()!
addToBag(cost: getItemCost(name: product), name: product)
var product2 = readLine()!
addToBag(cost: getItemCost(name: product2), name: product2)
var product3 = readLine()!
addToBag(cost: getItemCost(name: product3), name: product3)
var product4 = readLine()!
addToBag(cost: getItemCost(name: product4), name: product4)
var product5 = readLine()!
addToBag(cost: getItemCost(name: product5), name: product5)

print(totalString, "\nСумма - \(total) сом \nСкидка - \(total*discount) сом \nИтого - \(total-total*discount) сом")
