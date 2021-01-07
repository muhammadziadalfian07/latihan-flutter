import 'package:smantic_widget/someone.dart';

void main() {
  Someone s = Someone(name: "ziad", age: 19);
  if (s == Someone(name: "ziad", age: 19)) {
    print("sama");
  } else {
    print("Tidak sama");
  }
}
