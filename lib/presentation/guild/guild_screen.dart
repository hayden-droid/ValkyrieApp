import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/cubit/channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/guild/guild_chat.dart';
import 'package:valkyrie_app/presentation/guild/guild_drawer.dart';
import 'package:valkyrie_app/presentation/guild/guild_header.dart';
import 'package:valkyrie_app/presentation/guild/guild_member_list_drawer.dart';

import '../../injection.dart';

class GuildScreenArguments {
  final Guild guild;

  GuildScreenArguments(this.guild);
}

class GuildScreen extends HookWidget {
  final Guild guild;

  const GuildScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    final channelId = context.watch<CurrentChannelCubit>().state;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ChannelCubit>()..getGuildChannels(guild.id),
        ),
        BlocProvider(
          create: (context) => getIt<CreateMessageCubit>(),
        ),
      ],
      child: Scaffold(
        key: _drawerKey,
        appBar: AppBar(
          backgroundColor: const Color(0xff2D3134),
          title: Row(
            children: [
              const Icon(
                Icons.tag,
                color: Colors.white38,
              ),
              GuildHeader(),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => _drawerKey.currentState!.openDrawer(),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.people),
              onPressed: () => _drawerKey.currentState!.openEndDrawer(),
            ),
          ],
        ),
        drawer: GuildDrawer(
          guild: guild,
        ),
        endDrawer: GuildMemberDrawer(
          guild: guild,
        ),
        body: BlocProvider<MessagesCubit>(
          create: (context) =>
              getIt<MessagesCubit>()..getChannelMessages(channelId),
          child: GuildChat(),
        ),
      ),
    );
  }
}
