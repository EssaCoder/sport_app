import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:sport_app/src/core/network/error/failure.dart';

typedef Lazy<T> = T Function();

/// The either class used in the app.
///
/// This is a class that contains the either class used in the app.
/// It is used to handle the either class used in the app.
///
///
@immutable
sealed class Either<L, R> {
  const Either();

  bool get isLeft => this is Left<L, R>;

  bool get isRight => this is Right<L, R>;

  L get left => this.fold<L>(
    (value) => value,
    (right) =>
        throw Exception('Illegal use. You should check isLeft before calling'),
  );

  R get right => this.fold<R>(
    (left) =>
        throw Exception('Illegal use. You should check isRight before calling'),
    (value) => value,
  );

  T fold<T>(T Function(L left) fnL, T Function(R right) fnR);

  static Future<Either<L, R>> tryEither<L extends Object, R>(
    L Function(L l) onLeft,
    Future<dynamic> Function() onRight,
  ) async {
    try {
      final result = await onRight();
      return Right(result as R);
    } catch (e) {
      return Left(onLeft(e as L));
    }
  }

  static Future<Either<Failure, R>> guard<R>(
    Future<R> Function() onRight,
  ) async {
    try {
      final result = await onRight();
      return Right(result);
    } catch (e) {
      if (e is DioException) {
        return Left(
          Failure(e.response?.statusCode ?? 500, e.message ?? e.toString()),
        );
      }
      return Left(Failure(500, e.toString()));
    }
  }

  @override
  bool operator ==(Object other) {
    return this.fold(
      (left) => other is Left && left == other.value,
      (right) => other is Right && right == other.value,
    );
  }

  @override
  int get hashCode => fold((left) => left.hashCode, (right) => right.hashCode);
}

/// Used for "failure"
class Left<L, R> extends Either<L, R> {
  const Left(this.value);

  final L value;

  @override
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR) {
    return fnL(value);
  }
}

/// Used for "success"
class Right<L, R> extends Either<L, R> {
  const Right(this.value);

  final R value;

  @override
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR) {
    return fnR(value);
  }
}
