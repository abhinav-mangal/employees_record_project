import 'dart:async';

import 'package:flutter_application_1/service/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc_dart_event.dart';
part 'user_bloc_dart_state.dart';
part 'user_bloc_dart_bloc.freezed.dart';

class UserBloc extends Bloc<UserBlocEvent, UserBlocState> {
  final UserRepository _userRepository;
  UserBloc(this._userRepository) : super(UserBlocState.initial()) {
    on<_SaveUser>(_addUser);
    on<_GetUser>(_getUser);
    on<_DeleteUser>(_deleteUser);
    on<_UpdateUser>(_updateUser);
  }

  FutureOr<void> _addUser(_SaveUser event, Emitter<UserBlocState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      await _userRepository.saveUser(event.user, context: event.context);
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      e.toString();
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _getUser(_GetUser event, Emitter<UserBlocState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      List data = await _userRepository.getUsers();
      someMethod(data, emit);
    } catch (e) {
      e.toString();
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _deleteUser(
      _DeleteUser event, Emitter<UserBlocState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var data =
          await _userRepository.deleteUser(event.id, context: event.context);
      someMethod(data, emit);
    } catch (e) {
      e.toString();
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _updateUser(
      _UpdateUser event, Emitter<UserBlocState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var data = await _userRepository.updateUser(event.user, event.id,
          context: event.context);
      someMethod(data, emit);
    } catch (e) {
      e.toString();
      emit(state.copyWith(isLoading: false));
    }
  }

  void someMethod(List<dynamic> data, Emitter<UserBlocState> emit) {
    List previousUser = [];
    List currentUser = [];
    for (var i = 0; i < data.length; i++) {
      var endDate = data[i]['endDate'];
      var formattedEndDate = DateTime.parse(endDate);
      var date = formattedEndDate.isBefore(DateTime.now());
      if (date) {
        previousUser.add(data[i]);
      } else {
        currentUser.add(data[i]);
      }
    }
    emit(state.copyWith(
        previousUser: previousUser,
        currentUser: currentUser,
        isLoading: false));
  }
}
