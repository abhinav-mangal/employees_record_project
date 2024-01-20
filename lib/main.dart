import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/user_bloc_dart_bloc.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/service/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(BlocProvider(
    create: (context) => UserBloc(UserRepository()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff1DA1F2),
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xff1DA1F2)),
        // useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
