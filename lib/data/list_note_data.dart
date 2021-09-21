import 'package:cloud_firestore/cloud_firestore.dart';

class ListNoteData {
  final firebaseInstance = FirebaseFirestore.instance;

  Future<List<QueryDocumentSnapshot>> listNotes() async {
    List<QueryDocumentSnapshot> response =
        (await firebaseInstance.collection("notas").get()).docs;

    return response;
  }
}
