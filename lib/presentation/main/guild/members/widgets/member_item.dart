import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/presentation/common/extensions/hex_color_extension.dart';
import 'package:valkyrie_app/presentation/common/widgets/avatar_with_badge.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/profile/profile_bottom_sheet.dart';

class MemberItem extends StatelessWidget {
  final Member member;

  const MemberItem({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final guildId = context.watch<CurrentGuildCubit>().state;
    final guild = context.read<GuildListCubit>().getCurrentGuild(guildId);
    return ListTile(
      visualDensity: const VisualDensity(
        vertical: -2,
      ),
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (_) => ProfileBottomSheet(
            guild: guild,
            member: member,
            ctx: context,
          ),
        );
      },
      leading: getAvatarWithBadge(member.image, isOnline: member.isOnline),
      title: Text(
        member.nickname ?? member.username,
        style: TextStyle(
          color: member.color != null ? HexColor(member.color!) : null,
        ),
      ),
    );
  }
}
