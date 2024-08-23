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
      tail?.next = newNode;
      tail = newNode;
    }
  }

  showData() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  deletedup() {
    Set help = {};
    Node? temp = head;
    Node? prev;
    while (temp != null) {
      if (help.contains(temp.data)) {
        prev?.next = temp.next;
      } else {
        help.add(temp.data);
        prev = temp;
      }
      temp = temp.next;
    }
  }

  middle() {
    Node? slow = head;
    Node? fast = head;
    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }
    print(slow?.data);
  }

  delmid() {
    Node? slow = head;
    Node? fast = head;
    Node? prev = null;
    while (fast != null && fast.next != null) {
      prev = slow;
      slow = slow?.next;
      fast = fast.next?.next;
    }
    prev?.next = slow?.next;
  }
}

void main() {
  LinkedList test = LinkedList();
  test
    ..addData(5)
    ..addData(55)
    ..addData(7)
    ..addData(4)
    ..addData(7)
    ..addData(9)
    ..addData(5)
    ..showData()
    ..deletedup();
  print("==========");
  test.showData();
  print("==========");
  test.middle();
  int c = 8;
  do {
    print(c);
    c++;
  } while (c < 5);
}
