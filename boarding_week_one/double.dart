class Node {
  dynamic data;
  Node? next;
  Node? prev;
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
      newNode.prev = tail;
      tail?.next = newNode;
      tail = newNode;
    }
  }

  showDatas() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  showRev() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  addNext(target, data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null && temp.data != target) {
      temp = temp.next;
    }
    if (temp?.next != null) {
      newNode.next = temp!.next;
      newNode.prev = temp;
      temp.next = newNode;
    } else {
      newNode.prev = temp;
      temp?.next = newNode;
    }
  }
}

main() {
  LinkedList a = LinkedList();
  a
    ..addData(2)
    ..addData(4)
    ..addData(6)
    ..addData(9)
    ..showDatas();
  print("--------------");
  a..addNext(4, 3)..showDatas();
}
