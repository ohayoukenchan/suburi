//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


struct Queue<Element> {
    private var elements = [Element]()
    
    mutating func enqueue(newElement: Element) {
        elements.append(newElement)
    }
    
    mutating func dequeue() -> Element? {
        guard !elements.isEmpty else { return nil}
        return elements.remove(at: 0)
    }
    
    func getElements() -> Array<Element> {
        return elements
    }

}


var intQueue = Queue<Int>()

intQueue.enqueue(newElement: 3)
intQueue.enqueue(newElement: 5)

intQueue.enqueue(newElement: 57)
intQueue.dequeue()

print(intQueue)

intQueue.getElements().typeOf?




