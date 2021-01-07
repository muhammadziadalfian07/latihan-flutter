import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  // create dan update data
  static CollectionReference productCollection =
      Firestore.instance.collection('products');

  static Future<void> createOrUpdateProduct(String id,
      {String name, int price}) async {
    await productCollection.document(id).setData({
      'nama': name,
      'price': price,
    });
  }

  //read datad
  static Future<DocumentSnapshot> getdata(String id) async {
    return await productCollection.document(id).get();
  }

  // delete data
  static Future<void> deleteData(String id) async {
    await productCollection.document(id).delete();
  }

  // upload image
  static Future<String> uploadImage(File imageFile) async {
    String fileName = basename(imageFile.path);

    StorageReference ref = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask task = ref.putFile(imageFile);
    StorageTaskSnapshot snapshot = await task.onComplete;

    return await snapshot.ref.getDownloadURL();
  }
}
