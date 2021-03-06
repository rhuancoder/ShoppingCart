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
      print(products);
      print("\n");
    } else {
      products.add(text);
    }
  }
}
