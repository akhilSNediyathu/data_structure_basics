class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class singly {
  Node? head;
  Node? tail;
  addNew(int data) {
    Node newNode = new Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  display() {
    Node? temp = head;
    if (temp == null) {
      return;
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  rev() {
    Node? current = head;
    Node? prev;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }

  middleelement() {
    if (head == null) {
      return;
    }
    Node? slow = head;
    Node? fast = head;
    Node? prev = null;
    while (fast != null && fast.next != null) {
      prev = slow;
      slow = slow!.next;
      fast = fast.next!.next;
    }
    // return slow!.data;
    prev!.next = slow!.next;
  }

  deleteDuplicate() {
    if (head == null) {
      return;
    }
    Node? temp = head;
    while (temp != null) {
      Node? runner = temp;
      while (runner!.next != null) {
        if (runner.next!.data == temp.data) {
          runner.next = runner.next!.next;
        } else {
          runner = runner.next;
        }
      }
      temp = temp.next;
    }
  }

  recursivedisplay(Node? node) {
    if (node == null) {
      return;
    }
    print(node.data);
    recursivedisplay(node.next);
  }

  printrecurse() {
    recursivedisplay(head);
  }
}

void main(List<String> args) {
  singly linkedlist = new singly();
  linkedlist.addNew(2);
  linkedlist.addNew(7);
  linkedlist.addNew(9);
  linkedlist.addNew(7);
  linkedlist.addNew(5);
  //linkedlist.deleteDuplicate();
  linkedlist.rev();
  linkedlist.display();
  //linkedlist.printrecurse();
}