import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/message/i_message_repository.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';
import 'package:valkyrie_app/domain/message/message_value_objects.dart';

part 'upload_image_state.dart';
part 'upload_image_cubit.freezed.dart';

@injectable
class UploadImageCubit extends Cubit<UploadImageState> {
  final IMessageRepository _repository;
  UploadImageCubit(this._repository) : super(UploadImageState.initial());

  Future<void> uploadImage(String channelId, PickedFile image) async {
    Either<MessageFailure, Unit>? failureOrSuccess;

    final file = MessageImage(File(image.path));

    if (file.isValid()) {
      emit(state.copyWith(
        isSubmitting: true,
        messageFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _repository.uploadImage(channelId, image.path);
    } else {
      failureOrSuccess = left(const MessageFailure.fileTooLarge());
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      messageFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
