

class Node{
  int data;
  Node? next;
  Node(this.data);
}
class LinkedList{
Node? head;
  void adddataToHead(int data){
    Node newNode=Node(data);
    newNode.next=head;
    head=newNode;
  }

  void addDataToTail(int data){
    Node newNode=Node(data);
    if(head==null){
      head=newNode;
      return;
    }
    Node? current= head;
    while(current?.next!=null){                  
      current=current?.next;
    }
    current?.next=newNode;
  }

  void recursiveAdding(Node? current,int data){
   if(current==null){
    current=Node(data);
   }
   if(current.next==null){
    current.next=Node(data);
   }
   recursiveAdding(current, data);
  }

  void printforward(){
    Node? current=head;
    while(current!=null){
      print(current.data);{
        current=current.next;
      }
    }
  }

}