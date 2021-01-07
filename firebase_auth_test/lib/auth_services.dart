import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  // static berarti dia milik kelas
  // filed static firebaseauth
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<FirebaseUser> signUp(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<FirebaseUser> signIn(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // anonymuse methot tapi tidak mengembalikan nilai apapun
  static Future<void> signOut() async {
    _auth.signOut();
  }

  // geter yag mengembalikan streamfirebaseuser
  static Stream<FirebaseUser> get firebaseUserStream =>
      _auth.onAuthStateChanged;
}
