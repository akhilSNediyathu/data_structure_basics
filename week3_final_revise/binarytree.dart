class TreeNode{
  int data;
  TreeNode? left,right;
  TreeNode(this.data); 
}
class BinaryTree{
  TreeNode? root;
  addData(data){
    root=recursiveAdd(root,data);
  }
  recursiveAdd(TreeNode? node,data){
    if(node==null){
      return TreeNode(data);

    }
    if(data<node.data){
     node.left= recursiveAdd(node.left, data);
    }else{
    node.right= recursiveAdd(node.right, data);
    }
    return node;

  }
  inOrderTraverse(TreeNode? node){
    if(node!=null){
      inOrderTraverse(node.left);
      print(node.data);
      inOrderTraverse(node.right);

    }

  }
}
void main(){
  BinaryTree a = BinaryTree();
  a..addData(5)..addData(3)..addData(3)..addData(7)..inOrderTraverse(a.root);
}