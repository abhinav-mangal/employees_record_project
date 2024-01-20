import 'dart:convert';

import 'package:flutter_application_1/bloc/user_bloc_dart_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

class UserRepository {
  final box = GetStorage();
  Future<void> saveUser(user, {context}) async {
    try {
      var data = await box.read('user');
      if (data == null) {
        var users = [];
        users.add(user);
        await box.write('user', jsonEncode(users));
      } else {
        var users = jsonDecode(data);
        users.add(user);
        await box.write('user', jsonEncode(users));
      }
      BlocProvider.of<UserBloc>(context).add(const UserBlocEvent.getUser());
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future getUsers() async {
    try {
      var userList = box.read('user');
      if (userList != null) {
        var list = jsonDecode(userList);
        return list;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future deleteUser(String id, {context}) async {
    try {
      var userList = box.read('user');
      if (userList != null) {
        List list = jsonDecode(userList);
        list.removeWhere((element) => element['id'] == id);
        await box.write('user', jsonEncode(list));
        return list;
      }
      BlocProvider.of<UserBloc>(context).add(const UserBlocEvent.getUser());
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future updateUser(Map user, String id, {context}) async {
    try {
      print(id);
      var userList = box.read('user');
      if (userList != null) {
        List list = jsonDecode(userList);
        int index = list.indexWhere((element) => element['id'] == id);
        list[index] = user;
        await box.write('user', jsonEncode(list));
        return list;
      }
      BlocProvider.of<UserBloc>(context).add(const UserBlocEvent.getUser());
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
