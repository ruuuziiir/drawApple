//
//  appleFunc.swift
//  drawApple
//
//  Created by 7 on 2021/1/5.
//

import Foundation

func square(number: Int) -> String {
    var content = "\n"

    for _ in 1...number {
        for _ in 1...number {
            content = content + "🍎"
        }
        content = content + "\n"
    }
    return content
}

func board(number: Int) -> String {
    var content = "\n"
    
    for x in 1...number {
        for y in 1...number {
            if (x + y) % 2 == 0 {
                content = content + "🍎"
            } else {
                content = content + "🍏"
            }
        }
        content = content + "\n"
    }
    return content
}

func pyramid(number: Int) -> String {
    var content = "\n"
    
    for x in 1...number {
        for y in 1...number {
            if x + y > number {
                content = content + "🍎"
                if x + y > (number + 1) {
                    content = content + "🍎"

                }
            } else {
                content = content + "🍏"
            }
        }
        content = content + "\n"
    }
    return content
}

func triangle(number: Int) -> String {
    var content = "\n"
    var red = ""
    var green = ""

    for x in 1...number {
        red = red + "🍎"
        green = green + "🍏"
        if x % 2 != 0 {
            content = content + red
        } else {
            content = content + green
        }
        content = content + "\n"
    }

    return content
}

func upsideDownTriangle(number: Int) -> String {
    var content = "\n"

    for x in 0...(number - 1) {
        for y in 1...number {
            if x / y == 0 {
                if x % 2 != 0 {
                    content = content + "🍏"
                } else {
                    content = content + "🍎"
                }
            }
        }
        content = content + "\n"
    }
    return content
}


