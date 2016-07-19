import Foundation

public class Queue{
    public init(_queueCapacity:Int){
        self.queueCapacity = _queueCapacity
    }
    
    public func clearQueue() -> Void{   //清空队列
        myQueue.removeAll()
    }
    
    private func queueEmpty() -> Bool{   //判断队列是否为空
        return myQueue.count == 0 ? true : false
    }
    
    private func queueFull() -> Bool{    //判断队列是否已满
        return myQueue.count == queueCapacity ? true : false
    }
    
    public func outQueue() -> Void{      //出队
        if queueEmpty(){
            print("The queue is full.\n")
            return
        }
        myQueue.removeFirst()
    }
    
    public func inQueue(element:Int) -> Void{       //入队
        if queueFull() {
            print("The queue is empty.\n")
            return
        }
        myQueue.append(element)
    }
    
    public func queueTraverse() -> Void{        //队列遍历
        if queueEmpty(){
            print("The queue is full.\n")
            return
        }
        for (index,element) in myQueue.enumerate(){
            print("index:\(index),value:\(element)")
        }
        print()
    }
    
    private var myQueue = [Int]()   //当前的队列
    private let queueCapacity:Int   //队列的容积
}