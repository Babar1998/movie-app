import 'package:dartz/dartz.dart';
import 'package:movies_riverpod/models/domain/movies.dart';
import 'package:movies_riverpod/models/genres.dart';
import 'package:movies_riverpod/shared/util/app_exception.dart';

abstract class HomeRepository {
  Future<Either<AppException, Movies>> fetchAndCacheMovies(
      {required int page, required String type});

  Future<Either<AppException, Genres>> fetchAndCacheGenres();

  Future<Either<AppException, Genres>> fetchCachedGenres();

  Future<Either<AppException, Movies>> fetchCachedMovies(
      {required String type});
}
