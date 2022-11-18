import 'package:dartz/dartz.dart';
import 'package:iitu_web/core/error/excepteion.dart';
import 'package:iitu_web/core/error/failure.dart';
import 'package:iitu_web/core/platform/network_info.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/features/home/data/datasource/club_remote_ds.dart';
import 'package:iitu_web/features/home/data/model/club_dto.dart';

abstract class ClubRepository {
  Future<Either<Failure, List<ClubDTO>>> getClubs();
}

class ClubRepositoryImpl implements ClubRepository {
  final ClubRemoteDS remoteDS;
  // final AuthLocalDS localDS;
  // final NetworkInfo networkInfo;

  ClubRepositoryImpl({
    required this.remoteDS,
    // required this.localDS,
    // required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<ClubDTO>>> getClubs() async {
    try {
      final List<ClubDTO> clubs = await remoteDS.getClubs();

      return Right(clubs);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }
}
