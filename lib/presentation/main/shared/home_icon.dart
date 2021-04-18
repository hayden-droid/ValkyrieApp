import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/current_guild_pill.dart';

class HomeIconWidget extends StatelessWidget {
  final bool isHome;
  const HomeIconWidget({Key? key, this.isHome = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CurrentGuildCubit>().resetGuildId();
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (isHome)
            CurrentGuildPill()
          else
            const SizedBox(
              width: 7,
            ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isHome ? 20 : 50),
              color:
                  isHome ? ThemeColors.themeBlue : ThemeColors.guildBackground,
            ),
            width: 50,
            height: 50,
            child: const Icon(
              AppIcons.commentalt,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 7,
          ),
        ],
      ),
    );
  }
}
