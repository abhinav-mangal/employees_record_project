import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/user_bloc_dart_bloc.dart';
import 'package:flutter_application_1/screens/add_employee_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<UserBloc>(context).add(const UserBlocEvent.getUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15, right: 15),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddEmployeePage()));
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: Container(
          height: 75,
          color: const Color(0xffF2F2F2),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Swipe left to delete",
                style: TextStyle(color: Color(0xff949C9E))),
          )),
      body: BlocBuilder<UserBloc, UserBlocState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: state.currentUser.isEmpty && state.previousUser.isEmpty
                ? Center(
                    child:
                        Image.asset('assets/images/no_data.png', height: 300))
                : Column(
                    children: [
                      kListHeader("Current employees"),
                      kListBuilder(state.currentUser),
                      kListHeader("Previous employees"),
                      kListBuilder(state.previousUser, isPrevious: true),
                    ],
                  ),
          );
        },
      ),
    );
  }

  Widget kListHeader(String text) {
    return Container(
      height: 60,
      width: double.infinity,
      color: const Color(0xffF2F2F2),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: const TextStyle(
                color: Color(0xff1DA1F2),
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget kListBuilder(List user, {bool isPrevious = false}) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: user.length,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AddEmployeePage(user: user[index])));
            },
            child: Dismissible(
              direction: DismissDirection.endToStart,
              key: UniqueKey(),
              background: Container(
                color: const Color(0xffF34642),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.delete_outline_rounded, size: 30),
              ),
              onDismissed: (direction) {
                bool isDelete = true;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  duration: const Duration(seconds: 3),
                  content: const Text('Employee data has been deleted'),
                  action: SnackBarAction(
                      label: 'undo',
                      onPressed: () {
                        isDelete = false;
                        BlocProvider.of<UserBloc>(context)
                            .add(const UserBlocEvent.getUser());
                      }),
                ));
                Future.delayed(const Duration(milliseconds: 3500), () {
                  if (isDelete) {
                    BlocProvider.of<UserBloc>(context).add(
                      UserBlocEvent.deleteUser(user[index]['id']),
                    );
                  }
                });
              },
              child: ListTile(
                title: Text(user[index]['name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16)),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user[index]['role']),
                      const SizedBox(height: 5),
                      isPrevious
                          ? Text(
                              "From ${DateFormat('dd MMM, yyyy').format(DateTime.parse(user[index]['startDate']))} - ${DateFormat('dd MMM, yyyy').format(DateTime.parse(user[index]['endDate']))}")
                          : Text(
                              "From ${DateFormat('dd MMM, yyyy').format(DateTime.parse(user[index]['startDate']))}"),
                    ],
                  ),
                ),
                isThreeLine: true,
              ),
            ),
          );
        },
      ),
    );
  }
}
