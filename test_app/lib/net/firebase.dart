import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// Future<void> userSetup(String displayName) async {
//   CollectionReference users = FirebaseFirestore.instance.collection('Users');
//   FirebaseAuth auth = FirebaseAuth.instance;
//   String uid = auth.currentUser.uid.toString();
//   users.add({'email': displayName, 'uid': uid});
//   return;
// }
class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection = Firestore.instance.collection('users')

  Future updateUserData(String username, String email, String password) async {
    return await userCollection.doc(uid).set({
      'username': username,
      'email': email,
      'password': password,
    })
  }
}