import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:smantic_widget/human.dart';
import 'package:smantic_widget/human_services.dart';

class MockClient extends Mock with http.Client {}

void main() {
  http.Client client = MockClient();
  test("Test Ambil Data", () async {
    String id = "1";
    when(client.get(".../human/" + id))
        .thenAnswer((_) async => Future.value(http.Response('''
        {
          "id" : $id,
          "name" :"Dodi",
          "age": 20
        }
        ''', 200)));
    Human human = await HumanServices.getHumanById(id, client);
    expect(human, equals(Human(id: 1, name: "Dodi", age: 20)));
  });

  test("Test Error", () async {
    String id = "1";
    when(client.get(".../human/" + id))
        .thenAnswer((_) async => Future.value(http.Response('''
        {
          "message" : "Tidak Ada Akses"
        }
        ''', 403)));

    expect(HumanServices.getHumanById(id, client), throwsException);
  });
}
