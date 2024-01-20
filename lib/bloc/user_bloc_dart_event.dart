part of 'user_bloc_dart_bloc.dart';

@freezed
class UserBlocEvent with _$UserBlocEvent {
  const factory UserBlocEvent.saveUser(Map user, {context}) = _SaveUser;
  const factory UserBlocEvent.getUser() = _GetUser;
  const factory UserBlocEvent.updateUser(Map user, String id, {context}) =
      _UpdateUser;
  const factory UserBlocEvent.deleteUser(String id, {context}) = _DeleteUser;
}
