import 'package:hive/hive.dart';
// akan di jalankan oleh build runner
// untuk menggenrate type adapter class monster
part 'monster.g.dart';

//supaya bisa di simpan ke dalam hive kita harus membuat type adapternya dlu
// Tambahkan anotasi
// Tempat membirkan typeAdapter
@HiveType()
class Monster {
  // field yang ke - 0
  @HiveField(0)
  String name;

  // field yang ke - 1
  @HiveField(1)
  int level;

  Monster(this.name, this.level);
}
