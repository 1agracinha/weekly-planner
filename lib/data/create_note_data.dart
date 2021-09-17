import 'package:cloud_firestore/cloud_firestore.dart';

class CreateNoteData {
  final firebaseInstance = FirebaseFirestore.instance;

  Future<DocumentReference<Map<String, dynamic>>> addNote(
      Map<String, dynamic> note) async {
    final response = await firebaseInstance.collection('notas').add(note);

    return response;
  }
}
