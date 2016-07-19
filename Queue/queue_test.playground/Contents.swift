//: Playground - noun: a place where people can play

import UIKit


var myQueue = Queue(_queueCapacity: 4)
//用于检验当队列不含元素时，能不能打印出结果，或者会不会报错
myQueue.queueTraverse()

//用于检验队列入队一个值并打印
myQueue.inQueue(18)
myQueue.queueTraverse()

//用于检验队列入队入满并打印
myQueue.inQueue(20)
myQueue.inQueue(23)
myQueue.inQueue(25)
myQueue.queueTraverse()

//用于检验当队列已满时，会不会再入队
myQueue.inQueue(28)

//用于检验队列出队，索引的改变
myQueue.outQueue()
myQueue.queueTraverse()

//用于检验队列出队出完
myQueue.outQueue()
myQueue.outQueue()
myQueue.outQueue()
myQueue.queueTraverse()

//用于检验队列出完的情况下，会不会再出队
myQueue.outQueue()

//用于检验队列清空
myQueue.inQueue(999)
myQueue.queueTraverse()
myQueue.clearQueue()
myQueue.queueTraverse()

