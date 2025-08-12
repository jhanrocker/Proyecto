import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Proveedor para la instancia de Firestore
final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

// Proveedor para el DataSource
final firestoreDataSourceProvider = Provider<FirestoreDataSource>((ref) {
  return FirestoreDataSource(ref.watch(firestoreProvider));
});

class FirestoreDataSource {
  final FirebaseFirestore _db;

  FirestoreDataSource(this._db);

  // --- Métodos Genéricos ---

  Future<DocumentSnapshot> getDocument(String collection, String docId) async {
    return await _db.collection(collection).doc(docId).get();
  }

  Future<QuerySnapshot> getCollection(String collection, {Query Function(Query)? queryBuilder}) async {
    Query query = _db.collection(collection);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    return await query.get();
  }

  Stream<DocumentSnapshot> streamDocument(String collection, String docId) {
    return _db.collection(collection).doc(docId).snapshots();
  }

  Stream<QuerySnapshot> streamCollection(String collection, {Query Function(Query)? queryBuilder}) {
    Query query = _db.collection(collection);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    return query.snapshots();
  }

  Future<void> setDocument(String collection, String docId, Map<String, dynamic> data, {bool merge = false}) async {
    await _db.collection(collection).doc(docId).set(data, SetOptions(merge: merge));
  }

  Future<DocumentReference> addDocument(String collection, Map<String, dynamic> data) async {
    return await _db.collection(collection).add(data);
  }

  Future<void> updateDocument(String collection, String docId, Map<String, dynamic> data) async {
    await _db.collection(collection).doc(docId).update(data);
  }

  Future<void> deleteDocument(String collection, String docId) async {
    await _db.collection(collection).doc(docId).delete();
  }

  // --- Métodos para Subcolecciones (Ej. Vehículos) ---

  Future<QuerySnapshot> getSubCollection(String parentCollection, String parentDocId, String subCollection) async {
    return await _db.collection(parentCollection).doc(parentDocId).collection(subCollection).get();
  }

  Stream<QuerySnapshot> streamSubCollection(String parentCollection, String parentDocId, String subCollection) {
    return _db.collection(parentCollection).doc(parentDocId).collection(subCollection).snapshots();
  }

  Future<DocumentReference> addSubCollectionDocument(String parentCollection, String parentDocId, String subCollection, Map<String, dynamic> data) async {
    return await _db.collection(parentCollection).doc(parentDocId).collection(subCollection).add(data);
  }

   Future<void> updateSubCollectionDocument(String parentCollection, String parentDocId, String subCollection, String docId, Map<String, dynamic> data) async {
    await _db.collection(parentCollection).doc(parentDocId).collection(subCollection).doc(docId).update(data);
  }

  Future<void> deleteSubCollectionDocument(String parentCollection, String parentDocId, String subCollection, String docId) async {
    await _db.collection(parentCollection).doc(parentDocId).collection(subCollection).doc(docId).delete();
  }
}