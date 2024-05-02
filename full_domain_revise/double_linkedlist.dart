class Node{
  dynamic data;
  Node? next;
  Node? prev;
  Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;
  addData(data){
    Node newNode = Node(data);
    if(head==null){
      head = newNode;
      tail=newNode;
    }else{
      newNode.prev = tail;
      tail?.next=newNode;
      tail = newNode;
    }
    

  }
  reversedString(){
    Node? temp = tail;
      while(temp!=null){
        print(temp.data);
        temp = temp.prev;
      }
    }
    inOrder(){
      Node? temp = head;
      while ( temp!=null){
        print(temp.data);
        temp=temp.next;
      }
    }
    delete(value){
      Node? temp = head;
      Node? before;
      while(temp!=null&&temp.data!=value){
        before =temp;
        temp=temp.next;

      }if(temp!=null){
        before?.next=temp.next;
        temp.next?.prev =before;
      }


    }
}
void main(){
  LinkedList a = LinkedList();
  String test = "akhil";
  for (var i = 0; i < test.length; i++) {
    a.addData(test[i]);
    
  }
  a..inOrder();
  print('........');
  a.reversedString();
   print('........');
   a..delete('k')..inOrder();
      print('........');
      a.reversedString();

}