class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;
  addData(data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      // Node? temp = head;
      // while (temp != null) {
      //   temp = temp.next;
      // }
      // temp?.next = newNode;
      tail?.next = newNode;
      tail = newNode;
    }
  }

  display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

main() {
  LinkedList a = LinkedList();
  a
    ..addData(5)
    ..addData(9)
    ..addData(4)
    ..display();
}
