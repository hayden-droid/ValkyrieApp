import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

part 'get_private_channel_members_state.dart';
part 'get_private_channel_members_cubit.freezed.dart';

@injectable
class GetPrivateChannelMembersCubit
    extends Cubit<GetPrivateChannelMembersState> {
  final IChannelRepository _repository;

  GetPrivateChannelMembersCubit(this._repository)
      : super(const GetPrivateChannelMembersState.initial());

  Future<void> getPrivateChannelMembers(String channelId) async {
    emit(const GetPrivateChannelMembersState.fetchInProgress());
    final failureOrMembers =
        await _repository.getPrivateChannelMembers(channelId);
    emit(
      failureOrMembers.fold(
        (f) => GetPrivateChannelMembersState.fetchFailure(f),
        (members) => GetPrivateChannelMembersState.fetchSuccess(members),
      ),
    );
  }
}