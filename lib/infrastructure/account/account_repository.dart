import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/account/i_account_repository.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/infrastructure/account/account_dto.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';

@LazySingleton(as: IAccountRepository)
class AccountRepository extends IAccountRepository {
  final Dio _dio;

  AccountRepository(this._dio);

  @override
  Future<Either<AccountFailure, Account>> getAccount() async {
    try {
      final response = await _dio.get('/account');

      if (response.statusCode == 200) {
        final results = jsonDecode(response.data);

        return right(AccountDto.fromMap(results).toDomain());
      }
      return left(const AccountFailure.unexpected());
    } on DioError catch (err) {
      print(err);
      return left(const AccountFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const AccountFailure.unexpected());
    }
  }

  @override
  Future<Either<AccountFailure, Account>> updateAccount({
    required EmailAddress emailAddress,
    required Username username,
  }) async {
    try {
      final response = await _dio.put('/account', data: {
        "username": username.getOrCrash(),
        "email": emailAddress.getOrCrash(),
      });

      if (response.statusCode == 200) {
        final results = jsonDecode(response.data);

        return right(AccountDto.fromMap(results).toDomain());
      }
      return left(const AccountFailure.unexpected());
    } on DioError catch (err) {
      if (err.response?.statusCode == 400) {
        final errors = FieldError.getErrors(err.response!);
        if (errors.isNotEmpty) {
          return left(AccountFailure.badRequest(errors[0].message));
        }
      }

      return left(const AccountFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const AccountFailure.unexpected());
    }
  }
}
