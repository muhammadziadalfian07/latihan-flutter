import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:smantic_widget/warior.dart';

class MocWarrior extends Mock implements Warrior {}

void main() {
  Warrior warrior = MocWarrior();
  test("Verifiy Demo", () {
    warrior.rest();
    warrior.training();
    // warrior.rest();
    // verify(warrior.rest()).called(2);
    verifyInOrder([warrior.rest(), warrior.training()]);
  });

  test("Is Null", () {
    expect(warrior.name, isNull);
  });

  test("thenReturn", () {
    when(warrior.name).thenReturn("No Name");
    expect(warrior.name, equals("No Name"));
  });

  test("thenThrow", () {
    when(warrior.rest()).thenThrow(Exception("Error"));
    expect(() => warrior.rest(), throwsException);
  });

  test("thenAnsware", () async {
    when(warrior.training()).thenAnswer((_) => Future.value(true));
    bool result = await warrior.training();
    expect(result, equals(true));
  });
}
