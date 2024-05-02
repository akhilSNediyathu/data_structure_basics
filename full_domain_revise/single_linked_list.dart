class Node{
  dynamic data;
  Node? next;
  Node(this.data);

}
class LinkedList{


  Node? head;
  Node? tail;
  addData(data){
    Node newNode = Node(data);
    if(head==null){
      head = newNode;
      tail = newNode;
    }else{
      tail!.next = newNode;
      tail= newNode;
    }
  }

  printData(){
    Node? current = head;
    while (current!=null) {
      print(current.data);
      current = current.next;
      
    }
  }
  insertBefore(target,value){
    Node newNode =Node(value);
    Node? temp = head;
    
    if (head ==null){
head = newNode;
tail= newNode;
    }
    while(temp!=null){
      if(temp.next?.data==target){
        break;

      }else{
        temp = temp.next;
      }
    }
    newNode.next = temp?.next;
    temp?.next =newNode;


  }
}
void main(){
  LinkedList a = LinkedList();
  a..addData(6)..addData(8)..addData(5)..printData();
  print('======================');
  a..insertBefore(5, 1)..printData();

}