import 'package:flutter/material.dart';
import 'package:hive_db_flutter/model/monster.dart';
import 'package:hive_db_flutter/view/main_page.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appDocumnetDirectory =
      await pathProvider.getApplicationDocumentsDirectory();
  //inisialisasi
  Hive.init(appDocumnetDirectory.path);
  Hive.registerAdapter(MonsterAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
