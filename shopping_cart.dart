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
      for (var i = 0; i < products.length; i++) {
        print("ITEM $i - ${products[i]}");
      }
    } else if (text == "delete") {
      print("=== Which item do you want to delete?");
      for (var i = 0; i < products.length; i++) {
        print("ITEM $i - ${products[i]}");
      }
      int item = int.parse(stdin.readLineSync()!);
      products.removeAt(item);
      print("=== Deleted item");
    } else {
      products.add(text);

      print("\x1B[2J\x1B[0;0H");
    }
  }
}
