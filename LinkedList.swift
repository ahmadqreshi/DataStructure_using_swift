import Foundation

class Node {
    var value: Int
    var next: Node?

    init(value: Int, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}


class LinkedList {
    
    var head: Node?
    
    func insert(value: Int) {
        let node = Node(value: value)
        if head == nil {
            head = node
            return
        }
        var ptr = head
        while(ptr?.next != nil) {
            ptr = ptr?.next
        }
        ptr?.next = node
    }
    
    
    func printLinkedList() {
        var ptr = head
        while(ptr != nil) {
            debugPrint(ptr?.value ?? 0)
            ptr = ptr?.next
        }
    }
    
    func remove(value: Int) {
        if head?.value == value {
            self.head = head?.next
            return
        }
        
        var ptr = head
        var prevNode: Node? = nil
        while(ptr?.value != value && ptr?.next != nil) {
            prevNode = ptr
            ptr = ptr?.next
        }
        prevNode?.next = ptr?.next
    }
}


let linkedList = LinkedList()

linkedList.insert(value: 1)
linkedList.insert(value: 2)
linkedList.insert(value: 3)
linkedList.insert(value: 4)
linkedList.insert(value: 5)
linkedList.insert(value: 6)
linkedList.printLinkedList()

debugPrint("--------------------------")

linkedList.remove(value: 6)
linkedList.printLinkedList()
