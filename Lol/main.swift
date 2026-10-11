//
//  main.swift
//  trainig
//
//  Created by user on 10.10.2026.
//

import Foundation


var number = 0

let multy : (Int) -> Void = { number in
    for i in 1...10 {
        print("\(number) * \(i) = \(number * i)")
    }
}

let double : (Int) -> Int = {
    $0 * 2
}

let square : (Int) -> Int = {
    $0 * $0
}

print("Привет!")

var choose : Int

mainLoop: while true {
    print("Введи число", terminator: " ")

    if let input = readLine(), let inNumber = Int(input) {
        number = inNumber
        print("Вы ввели \(number)")
    } else {
        print("не то число Вы ввели")
    }
    loop: while true {
        print("\nВыберете следующие действия:\n0 - смена числа\n1 - таблица умножения\n2 - удвоить число\n3 - квадрат числа\n99 - выход")
        if let input = readLine(), let choose = Int(input) {
            switch choose {
            case 99:
                break mainLoop
            case 0:
                
                break loop
            case 1:
                multy(number)
                
            case 2:
                print("\(number) * 2 = \(double(number))")
                
            case 3:
                print("\(number) ^ 2 = \(square(number))")
                
            default:
                print("не то значение, попробуй еще раз\nВыберете следующие действия:\n0 - Выход\n1 - таблица умножения\n2-удвоить число\n3-квадрат числа")
                continue loop
            }
        }
    }
}
print("Goodbye")
