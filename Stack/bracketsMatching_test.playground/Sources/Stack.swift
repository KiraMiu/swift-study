import Foundation

public class Stack{
    public init(_stackCapacity:Int){
        self.stackCapacity = _stackCapacity
    }
    
    public func clearStack() -> Void{   //清空栈
        myStack.removeAll()
    }
    
    public func stackEmpty() -> Bool{   //判断栈是否为空
        return myStack.count == 0 ? true : false
    }
    
    public func stackFull() -> Bool{    //判断栈是否已满
        return myStack.count == stackCapacity ? true : false
    }
    
    public func outStack() -> Void{      //出栈
        if stackEmpty(){
            print("The stack is full.\n")
            return
        }
        myStack.removeLast()
    }
    
    public func inStack(element:Character) -> Void{       //入栈
        if stackFull() {
            print("The stack is empty.\n")
            return
        }
        myStack.append(element)
    }
    
    public func stackTraverse() -> Void{        //栈遍历
        if stackEmpty(){
            print("The stack is full.\n")
            return
        }
        for (index,element) in myStack.enumerate(){
            print("index:\(index),value:\(element)")
        }
        print()
    }
    
    public func stackLast() -> Character? {
        return myStack.last
    }
    
    private var myStack = [Character]()   //当前的栈
    private let stackCapacity:Int   //栈的容积
}
