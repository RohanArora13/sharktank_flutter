import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharktank/constants/firebase_constants.dart';
import 'package:sharktank/model/company_model.dart';
import 'package:sharktank/provider/firebase_provider.dart';

final EpisodeRepositoryProvider = Provider(
    (ref) => EpisodeRepository(firestore: ref.watch(FireStoreProvider)));

class EpisodeRepository {
  FirebaseFirestore _firestore;

  EpisodeRepository({required FirebaseFirestore firestore})
      : _firestore = firestore;

  CollectionReference get _episode =>
      _firestore.collection(FirebaseConstants.stiCollection);

  Future<List<Company>> getCompanyInfo() {
    return _episode
        .orderBy("order", descending: true)
        .snapshots()
        .map((event) => event.docs
            .map((e) => Company.fromMap(e.data() as Map<String, dynamic>))
            .toList())
        .first;
  }
}
