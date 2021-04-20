import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/presentation/common/widgets/avatar_with_badge.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/dm_screen.dart';

class DMChannelItem extends StatelessWidget {
  final DMChannel channel;

  const DMChannelItem({
    Key? key,
    required this.channel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentDMCubit>().state;
    final current = channelId == channel.id;

    return GestureDetector(
      onTap: () {
        context.read<CurrentDMCubit>().setDMChannel(channel.id);
        Navigator.of(context).pushReplacementNamed(DMScreen.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          child: ListTile(
            tileColor: current ? Colors.white10 : Colors.transparent,
            leading: getAvatarWithBadge(
              channel.user.image,
              isOnline: channel.user.isOnline,
            ),
            title: Text(
              channel.user.username,
              style: TextStyle(
                fontSize: 18,
                color: current ? Colors.white : Colors.white38,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
