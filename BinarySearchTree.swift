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

class BinarySearchTree {

    var root: Node?

    func insert(value: Int) {
        let newNode = Node(value: value)
        if let rootNode = root {
           insert(root: rootNode, newNode: newNode)
        } else {
            self.root = newNode
        }
    }
    private func insert(root: Node, newNode: Node) {
        if newNode.value < root.value {
            if let leftNode = root.leftNode {
                insert(root: leftNode, newNode: newNode)
            } else {
                root.leftNode = newNode
            }
        } else {
            if let rightNode = root.rightNode {
                insert(root: rightNode, newNode: newNode)
            } else {
                root.rightNode = newNode
            }
        }
    }
}


extension BinarySearchTree {
 
    func traverse() {
        print("\nPRE-ORDER TRAVERSE")
        self.preorder(self.root)
        print("\n\nIN-ORDER TRAVERSE")
        self.inorder(self.root)
        print("\n\nPOST-ORDER TRAVERSE")
        self.postorder(self.root)
        print("\n")
    }
    
    // NOTE : LEFT IS ALWAYS LEFT OF RIGHT
    // NLR : NODE(i.e. Root/Parent Node) LEFT RIGHT
    
    // LNR : LEFT NODE RIGHT
    private func inorder(_ node: Node?) {
        guard let _ = node else { return }
        self.inorder(node?.leftNode)
        print("\(node!.value)", terminator: " ")
        self.inorder(node?.rightNode)
    }
    
    // NLR : NODE LEFT RIGHT
    private func preorder(_ node: Node?) {
        guard let _ = node else { return }
        print("\(node!.value)", terminator: " ")
        self.preorder(node?.leftNode)
        self.preorder(node?.rightNode)
    }
    
    // LRN :  LEFT RIGHT NODE
    private func postorder(_ node: Node?) {
        guard let _ = node else { return }
        self.postorder(node?.leftNode)
        self.postorder(node?.rightNode)
        print("\(node!.value)", terminator: " ")
    }
}


let bst = BinarySearchTree()
bst.insert(value: 5)
bst.insert(value: 4)
bst.insert(value: 6)
bst.traverse()


/*
OUTPUT
PRE-ORDER TRAVERSE
5 4 6 

IN-ORDER TRAVERSE
4 5 6 

POST-ORDER TRAVERSE
4 6 5 

*/
