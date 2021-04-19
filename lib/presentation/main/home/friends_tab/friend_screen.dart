import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/friend_socket_hook.dart';

import '../../../../injection.dart';
import 'friend_item.dart';

class FriendListScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    use(FriendSocketHook(context));
    return BlocProvider(
      create: (context) => getIt<GetFriendsCubit>()..getFriends(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Friends"),
          automaticallyImplyLeading: false,
          backgroundColor: ThemeColors.dmBackground,
          actions: [
            IconButton(
              icon: const Icon(Icons.person_add_alt_1),
              onPressed: () {},
            ),
          ],
        ),
        body: BlocBuilder<GetFriendsCubit, GetFriendsState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadSuccess: (friends) {
                final online =
                    context.read<GetFriendsCubit>().getOnlineFriends();
                final offline =
                    context.read<GetFriendsCubit>().getOfflineFriends();
                return ListView(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "ONLINE — ${online.length}",
                        style: const TextStyle(
                          color: Colors.white24,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (var friend in online) FriendItem(friend: friend),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "OFFLINE — ${offline.length}",
                        style: const TextStyle(
                          color: Colors.white24,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (var friend in offline) FriendItem(friend: friend),
                  ],
                );
              },
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
