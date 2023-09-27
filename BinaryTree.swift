class Node {
    var value: Int
    var leftNode: Node?
    var rightNode: Node?
    
    
    init(value: Int, leftNode: Node? = nil, rightNode: Node? = nil) {
        self.value = value
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
}


var binaryTree: Node = {
  let zero = Node(value: 0)
  let one = Node(value: 1)
  let five = Node(value: 5)
  let seven = Node(value: 7)
  let eight = Node(value: 8)
  let nine = Node(value: 9)
  
  seven.leftNode = one
  one.leftNode = zero
  one.rightNode = five
  seven.rightNode = nine
  nine.leftNode = eight
  return seven
}()



func inOrderTraversal(root: Node?) {
    if let rootNode = root {
        inOrderTraversal(root: rootNode.leftNode)
        print(rootNode.value)
        inOrderTraversal(root: rootNode.rightNode)
    } else {
        return
    }
}
