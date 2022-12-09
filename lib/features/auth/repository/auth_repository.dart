import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:iitu_web/core/error/excepteion.dart';
import 'package:iitu_web/core/error/failure.dart';
import 'package:iitu_web/features/auth/data/auth_local_ds.dart';
import 'package:iitu_web/features/auth/model/user_dto.dart';

const _tag = 'IAuthRepository';

abstract class IAuthRepository {
  Future<Either<Failure, UserDTO>> login({
    required String password,
    required String email,
  });

  Future<Either<Failure, UserDTO>> registration({
    required String password,
    required String email,
    required String name,
  });

  Either<Failure, UserDTO> getUser();

  Future<Either<Failure, String>> exit();
}

class AuthRepositoryImpl extends IAuthRepository {
  final AuthLocalDS localDS;

  AuthRepositoryImpl({
    // required this.remoteDS,
    required this.localDS,
  });

  @override
  Future<Either<Failure, UserDTO>> login({
    required String password,
    required String email,
  }) async {
    try {
      final CollectionReference clubsReference = FirebaseFirestore.instance.collection('User');

      final QuerySnapshot<Object?> snapshot = await clubsReference.get();
      final List<QueryDocumentSnapshot<Object?>> queryDocumentSnapshot = snapshot.docs;

      for (int i = 0; i < queryDocumentSnapshot.length; i++) {
        log('${queryDocumentSnapshot[i].id} => ${queryDocumentSnapshot[i].data()}', name: _tag);
      }

      final List<UserDTO> users = queryDocumentSnapshot
          .map((e) => UserDTO.fromJson(e.data()! as Map<String, dynamic>).copyWith(id: e.id))
          .toList();

      UserDTO? user;

      for (int i = 0; i < users.length; i++) {
        if (users[i].email == email && users[i].password == password) {
          user = users[i];
        }
      }

      if (user != null) {
        await localDS.saveUserToCache(user: user);
        return Right(user);
      } else {
        return Left(ServerFailure(message: 'Invalid password or email address'));
      }
    } catch (e) {
      log('login $e', name: _tag);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserDTO>> registration({
    required String password,
    required String email,
    required String name,
  }) async {
    try {
      final CollectionReference usersReference = FirebaseFirestore.instance.collection('User');

      final QuerySnapshot<Object?> tempSnapshot = await usersReference.get();
      final List<QueryDocumentSnapshot<Object?>> tempDocumentSnapshot = tempSnapshot.docs;

      // for (int i = 0; i < queryDocumentSnapshot.length; i++) {
      //   log('${queryDocumentSnapshot[i].id} => ${queryDocumentSnapshot[i].data()}', name: _tag);
      // }

      final List<UserDTO> temp = tempDocumentSnapshot
          .map((e) => UserDTO.fromJson(e.data()! as Map<String, dynamic>).copyWith(id: e.id))
          .toList();

      for (int i = 0; i < temp.length; i++) {
        if (temp[i].email == email) {
          return Left(ServerFailure(message: 'This email is already busy'));
        }
      }

      await _addUser(
        email: email,
        name: name,
        password: password,
      );

      final QuerySnapshot<Object?> snapshot = await usersReference.get();

      final List<QueryDocumentSnapshot<Object?>> queryDocumentSnapshot = snapshot.docs;

      for (int i = 0; i < queryDocumentSnapshot.length; i++) {
        log('${queryDocumentSnapshot[i].id} => ${queryDocumentSnapshot[i].data()}', name: _tag);
      }

      final List<UserDTO> users = queryDocumentSnapshot
          .map((e) => UserDTO.fromJson(e.data()! as Map<String, dynamic>).copyWith(id: e.id))
          .toList();

      UserDTO? user;

      for (int i = 0; i < users.length; i++) {
        if (users[i].email == email && users[i].password == password) {
          user = users[i];
        }
      }

      if (user != null) {
        await localDS.saveUserToCache(user: user);
        return Right(user);
      } else {
        return Left(ServerFailure(message: 'Invalid password or email address'));
      }
    } catch (e) {
      log('login $e', name: _tag);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  Future<void> _addUser({
    required String name,
    required String email,
    required String password,
  }) async {
    final CollectionReference usersReference = FirebaseFirestore.instance.collection('User');

    await usersReference
        .add({
          'password': password,
          'name': name,
          'email': email,
        })
        .then((value) => log("User Added", name: _tag))
        .catchError((error) => log("Failed to add user: $error", name: _tag));
  }

  @override
  Either<Failure, UserDTO> getUser() {
    try {
      final UserDTO? user = localDS.getUserFromCacheNull();

      if (user != null) {
        return Right(user);
      } else {
        return Left(CacheFailure(message: 'User not found from cache'));
      }
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.toString()));
    } catch (e) {
      log(e.toString());
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> exit() async {
    await localDS.removeUserFromCache();

    return const Right('Success');
  }
}
