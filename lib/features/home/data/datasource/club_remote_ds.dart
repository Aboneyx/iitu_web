import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:iitu_web/core/error/excepteion.dart';
import 'package:iitu_web/features/home/data/model/club_dto.dart';

// ignore: unused_element
const _tag = 'ClubRemoteDS';

abstract class ClubRemoteDS {
  Future<List<ClubDTO>> getClubs();
}

class ClubRemoteDsImpl extends ClubRemoteDS {
  // late final Dio dio;
  // final DioWrapper dioWrapper;
  ClubRemoteDsImpl() {
    // dioWrapper.path('');
    // dio = dioWrapper.dio;
  }

  @override
  Future<List<ClubDTO>> getClubs() async {
    try {
      final CollectionReference clubsReference = FirebaseFirestore.instance.collection('Organization');

      final QuerySnapshot<Object?> snapshot = await clubsReference.get();
      final List<QueryDocumentSnapshot<Object?>> queryDocumentSnapshot = snapshot.docs;

      for (int i = 0; i < queryDocumentSnapshot.length; i++) {
        log('${queryDocumentSnapshot[i].id} => ${queryDocumentSnapshot[i].data()}', name: _tag);
      }

      // final CollectionReference collec = FirebaseFirestore.instance.collection('Organization/1/Event');

      // final QuerySnapshot<Object?> collecSnap = await collec.get();

      // print(collecSnap.docs[0].data());

      return queryDocumentSnapshot
          .map((e) => ClubDTO.fromJson(e.data()! as Map<String, dynamic>).copyWith(id: e.id))
          .toList();
    } catch (e) {
      log('getClubs $e', name: _tag);
      throw ServerException(message: e.toString());
    }
  }
}
