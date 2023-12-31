import 'package:dartz/dartz.dart';
import 'package:movies_riverpod/models/movie_detail.dart';
import 'package:movies_riverpod/models/response/casts_response.dart';
import 'package:movies_riverpod/shared/util/app_exception.dart';

abstract class MovieDetailRemoteDataSource {
  Future<Either<AppException, MovieDetail>> getMovie({required int id});

  Future<Either<AppException, CastsResponse>> getCasts({required int id});
}
