//: Playground - noun: a place where people can play

import UIKit

//重载负号，用于判断括号匹配
prefix operator ---{}
prefix func --- (char:Character) -> Character{
    switch char{
    case ")": return "("
    case "]":return "["
    case "}":return "{"
    default: return " "
    }
}

//供测试括号匹配、由不同括号组成的字符串
let testStr:String = "[[()][()]]"

var myStack = Stack(_stackCapacity: 10)
for testChar in testStr.characters{
    if(myStack.stackEmpty()){
        myStack.inStack(testChar)
        continue
    }
    if(myStack.stackLast() == ---testChar){
        myStack.outStack()
    }
    else{
        myStack.inStack(testChar)
    }
}
myStack.stackEmpty() ? print("匹配") : print("不匹配")


    
