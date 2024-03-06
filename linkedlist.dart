class Node{
  dynamic data;
  Node? next;
  Node (this.data);
}
class LinkedList{
  Node? head;
  Node? tail; 
  void addData(data){
    Node newNode = Node(data);
    if (head == null){
      head = newNode;
      tail=newNode;
    }else{
      tail!.next= newNode;
      tail = newNode;
    }


  }
  void display(){
   Node? temp = head;
   while(temp!=null){
    print(temp.data);
    temp = temp.next;
   }
  }
}
void main(){
  LinkedList a = LinkedList();
  a..addData(5)..addData(4)..addData(6)..display();
}