part of 'user_bloc_dart_bloc.dart';

@freezed
class UserBlocState with _$UserBlocState {
  const factory UserBlocState({required bool isLoading, required List currentUser,required List previousUser}) = _Initial;
  factory UserBlocState.initial() => const UserBlocState(isLoading: false, currentUser: [], previousUser: []);
}
