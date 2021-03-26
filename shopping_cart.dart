import 'dart:io';

main() {
  List<String> products = [];
  bool condition = true;

  while (condition) {
    print("=== Add a product ===");
    String text = stdin.readLineSync()!;

    if (text == "exit") {
      print("=== ended the program ===");
      condition = false;
    } else if (text == "print") {
      printItems(products);
    } else if (text == "delete") {
      deleteItems(products);
    } else {
      products.add(text);

      print("\x1B[2J\x1B[0;0H");
    }
  }
}

printItems(items) {
  for (var i = 0; i < items.length; i++) {
    print("ITEM $i - ${items[i]}");
  }
}

deleteItems(items) {
  print("=== Which item do you want to delete?");
  printItems(items);
  int item = int.parse(stdin.readLineSync()!);
  items.removeAt(item);
  print("=== Deleted item");
}
