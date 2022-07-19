import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationService {
  final FirebaseAuth firebaseAuth;

  AuthenticationService(this.firebaseAuth);

  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  Future<String?> signOut() async {
    try {
      await firebaseAuth.signOut();
      return "Signed out";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> registerUser(String name, String email, String phone,
      String location, String cpw, String password) async {
    await signUp(email: email, password: password).then((value) async {
      await FirebaseFirestore.instance.collection("auth").add({
        "name": name,
        "email": email,
        "phone": phone,
        "location": location,
        "cpw": cpw,
        "password": password,
      }).then((value) {
        return "success";
      });
    });
    return "error";
  }

  Future<String> registerAuthority(String name, String email, String phone,
      String location, String cpw, String password, String designation) async {
    await signUp(email: email, password: password).then((value) async {
      await FirebaseFirestore.instance.collection("auth").add({
        "name": name,
        "email": email,
        "phone": phone,
        "location": location,
        "cpw": cpw,
        "password": password,
      }).then((value) {
        SharedPreferences.getInstance().then((value) {
          value.setString(
              "firebaseAuthId", firebaseAuth.currentUser!.uid.toString());
          print("\n\n\n\n\n\n\n\n##############################: " +
              firebaseAuth.currentUser!.uid.toString());
        });
      });
      return "success";
    });

    return "error";
  }

  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return "Invalid";
    }
  }

  Future<String> signUp(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch (e) {
      return "e.message";
    }
  }
}
