class TreeNode {
  int value;
  TreeNode? rightChild, leftChild;
  TreeNode(this.value);
}

class BinaryTree {
  TreeNode? root;
  insert(value) {
    if (root == null) {
      root = TreeNode(value);
    } else {
      recursiveInsert(root!, value);
    }
  }

  recursiveInsert(TreeNode node, value) {
    if (value < node.value) {
      if (node.leftChild == null) {
        node.leftChild = TreeNode(value);
      } else {
        recursiveInsert(node.leftChild!, value);
      }
    } else {
      if (node.rightChild == null) {
        node.rightChild = TreeNode(value);
      } else {
        recursiveInsert(node.rightChild!, value);
      }
    }
  }

  traversal(TreeNode? node) {
    if (node != null) {
      traversal(node.leftChild);
      print(node.value);
      traversal(node.rightChild);
    }
  }
}

main() {
  var tree = BinaryTree();

  tree.insert(5);
  tree.insert(3);
  tree.insert(7);
  tree.insert(1);
  tree.insert(4);
  tree.insert(6);
  tree.insert(8);

  tree.traversal(tree.root);
}
