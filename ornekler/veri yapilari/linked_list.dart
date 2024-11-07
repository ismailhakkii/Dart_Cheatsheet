// Düğüm sınıfı
class Node {
  int value;
  Node? next;

  Node(this.value, [this.next]);
}

// Bağlantılı liste sınıfı
class LinkedList {
  Node? head;

  // Başa eleman ekleme
  void insertAtBeginning(int value) {
    Node newNode = Node(value, head);
    head = newNode;
  }

  

  // Sona eleman ekleme
  void insertAtEnd(int value) {
    if (head == null) {
      head = Node(value);
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(value);
    }
  }

  // Listede elemanları yazdırma
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  
  // Listeye eleman ekleme
  list.insertAtBeginning(10);
  list.insertAtBeginning(20);
  list.insertAtEnd(30);

  // Listeyi yazdırma
  print("Bağlantılı listede elemanlar:");
  list.printList();
}
