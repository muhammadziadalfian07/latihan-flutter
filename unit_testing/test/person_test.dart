import 'package:flutter_test/flutter_test.dart';
import 'package:smantic_widget/person.dart';

void main() {
  group("Mengecek Class Person", () {
    Person p;
    p = Person();
    test("Inisialisai Objek Person", () {
      print("Test 1");
      expect(p.name, equals("No Name"));
      expect(p.age, equals(0));
    });

    test("Age Harus Postif", () {
      print("Test 2");
      p.age = -10;
      expect(p.age, isPositive);
    });

    test("Angka Keberuntungan Harus 3 Buah dan Harus Positif", () {
      print("Test 3");
      expect(p.luckyNumbers,
          allOf(hasLength(equals(3)), isNot(anyElement(isNegative))));
    });
  });

  setUp(() {
    print("Set Up");
  });

  tearDown(() {
    print("Tear Down");
  });
}
