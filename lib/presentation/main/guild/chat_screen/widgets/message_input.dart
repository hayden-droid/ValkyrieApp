import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/application/messages/upload_image/upload_image_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/get_channel_name.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class MessageInput extends HookWidget {
  final String channelId;
  final bool isDM;
  const MessageInput({required this.channelId, required this.isDM});

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();
    return BlocListener<CreateMessageCubit, CreateMessageState>(
      listener: (context, state) {
        state.messageFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (_) => {},
            (_) {
              context.read<CreateMessageCubit>().resetMessageText();
              _controller.clear();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.photo),
              iconSize: 25.0,
              color: Colors.white,
              onPressed: () => _selectImage(context, channelId),
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  context.read<CreateMessageCubit>().messageTextChanged(value);
                },
                keyboardType: TextInputType.multiline,
                controller: _controller,
                decoration: InputDecoration(
                  hintText:
                      'Message ${isDM ? "@${getDMUsername(context, channelId)}" : "#${getChannelName(context, channelId)}"}',
                  fillColor: ThemeColors.messageInput,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                ),
                maxLines: null,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: ThemeColors.themeBlue,
              radius: 22,
              child: IconButton(
                icon: const Icon(Icons.send),
                iconSize: 20.0,
                color: Colors.white,
                onPressed: () {
                  context.read<CreateMessageCubit>().createMessage(channelId);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectImage(BuildContext context, String channelId) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      context.read<UploadImageCubit>().uploadImage(channelId, pickedFile);
    }
  }
}
