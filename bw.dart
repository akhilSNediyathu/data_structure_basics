class Test {
  int a = 10;
  int b = 2;
  Test(this.a, this.b);

  add() {
    print(a + b);
  }

  substract() {
    print(a - b);
  }
}

rev(String a) {
  if (a.length <= 1) {
    return a;
  } else {
    return rev(a.substring(1)) + a[0];
  }
}

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

  reverseLinkedList() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }
}

test({required String name, String age = 'test'}) {
  print(name + age);
}

main() {
  test(name: 'akhil',age: '10');
//   Test a = Test(10, 5);
//   a
//     ..add()
//     ..substract();
//   List ab = [1, 3, 4, 5, 6];
//   ab.forEach((value) {
//     if (value > 1) {
//       print(value);
//     }
//   });
  LinkedList linkedList = LinkedList();
  linkedList
    ..addData('a')
    ..addData('k')
    ..reverseLinkedList();
}
