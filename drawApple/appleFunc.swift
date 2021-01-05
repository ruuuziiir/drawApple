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


// func square，傳入值：Int，回傳值：String
func pyramid(number: Int) -> String {
    
    // 設定一個裝內容的空字串 content
    // 值設為 \n 是因為設定空字串的話，第一次實行時會有點偏移，總之用換行就不會有這個情況！
    var content = "\n"
    
    for x in 1...number {
        for y in 1...number {
            
            // 如果 number = 2,x = 1, y = 2， 1 + 2 > 2 成立
            if x + y > number {
                content = content + "🍎"
                
                // 1 + 2 不大於 3（不成立），跑到 x = 2, y = 2 時便成立，第二圈最尾端再加一個🍎
                if x + y > (number + 1) {
                    content = content + "🍎"

                }
            }
            
            // 其他狀況就填🍏
            else {
                content = content + "🍏"
            }
        }
        content = content + "\n"
    }
    
    // 迴圈跑完後回傳結果：content（字串）
    return content
}
