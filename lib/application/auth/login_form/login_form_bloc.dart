import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/auth/auth_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/auth/i_auth_facade.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

/// LoginFormBloc manages the user's login flow
@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthFacade _authFacade;

  LoginFormBloc(this._authFacade) : super(LoginFormState.initial());

  @override
  Stream<LoginFormState> mapEventToState(
    LoginFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureOrSuccessOption: none(),
        );
      },
      loginPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.login(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
