import UIKit
import Foundation

public class Node<T> {
    var next: Node?
    let value: T
    
    init(data: T) {
        value = data
    }
}

public class LinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    func append(node: T) {
        let newNode = Node<T>(data: node)
        if head == nil {
            head = newNode
            return
        }
        if tail == nil {
            tail = newNode
            head?.next = newNode
            return
        }
        tail?.next = newNode
        tail = newNode
    }
    
    func removeHead() {
        head = head?.next
    }
    
    func printAllNodeValues() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? "nil")
            currentNode = currentNode?.next
        }
    }
}

public struct Queue<T> {
    private var list = LinkedList<T>()
    
    func enqueue(element: T) {
        list.append(node: element)
    }
    
    func printAllElement() {
        list.printAllNodeValues()
    }
}

var machineGun = Queue<String>()
machineGun.enqueue(element: "Bullet_One")
machineGun.enqueue(element: "Bullet_Two")
machineGun.enqueue(element: "Bullet_Third")
machineGun.printAllElement()
