import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/user_bloc_dart_bloc.dart';
import 'package:flutter_application_1/utils/date_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddEmployeePage extends StatefulWidget {
  final Map? user;
  const AddEmployeePage({Key? key, this.user}) : super(key: key);

  @override
  State<AddEmployeePage> createState() => _AddEmployeePageState();
}

class _AddEmployeePageState extends State<AddEmployeePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _employeeNameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  List role = [
    "Product Designer",
    "Flutter Developer",
    "QA Tester",
    "Product Owner"
  ];

  late DateTime firstPickDate;
  late DateTime secondPickDate;

  @override
  void initState() {
    if (widget.user != null) {
      _employeeNameController.text = widget.user!['name'];
      _roleController.text = widget.user!['role'];
      _startDateController.text = DateFormat('dd MMM yyyy')
          .format(DateTime.parse(widget.user!['startDate']));
      _endDateController.text = DateFormat('dd MMM yyyy')
          .format(DateTime.parse(widget.user!['endDate']));
      firstPickDate = DateTime.parse(widget.user!['startDate']);
      secondPickDate = DateTime.parse(widget.user!['endDate']);
    }
    // widget.user != null
    //     ? _employeeNameController.text = widget.user['name']
    //     : null;
    // widget.user != null ? _roleController.text = widget.user['role'] : null;
    // widget.user != null
    //     ? _startDateController.text = DateFormat('dd MMM yyyy')
    //         .format(DateTime.parse(widget.user['startDate']))
    //     : null;
    // widget.user != null
    //     ? _endDateController.text = DateFormat('dd MMM yyyy')
    //         .format(DateTime.parse(widget.user['endDate']))
    //     : null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Employee Details'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              kTextFormField(
                  controller: _employeeNameController,
                  label: 'Employee Name',
                  icons: Icons.person_outline,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter employee name';
                    }
                    return null;
                  }),
              const SizedBox(height: 16.0),
              kTextFormField(
                  controller: _roleController,
                  label: 'Select Role',
                  icons: Icons.work_outline,
                  sufIcons: Icons.arrow_drop_down,
                  hintText: 'Select Role',
                  readOnly: true,
                  onTap: () => kshowModalBottomSheet(context),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select role';
                    }
                    return null;
                  }),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: kTextFormField(
                        controller: _startDateController,
                        label: 'Today',
                        hintText: 'Today',
                        icons: Icons.calendar_month,
                        readOnly: true,
                        onTap: () => datePicker(context),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter date';
                          }
                          return null;
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.arrow_forward, color: Colors.blue),
                  ),
                  Expanded(
                    child: kTextFormField(
                        controller: _endDateController,
                        label: 'No date',
                        hintText: 'No date',
                        icons: Icons.calendar_month,
                        readOnly: true,
                        onTap: () => datePicker2(context),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter date';
                          }
                          return null;
                        }),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        cancelButton(context),
        const SizedBox(width: 8.0),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              var userData = {
                "name": _employeeNameController.text,
                "role": _roleController.text,
                "startDate": firstPickDate.toIso8601String(),
                "endDate": secondPickDate.toIso8601String(),
                "id": widget.user != null
                    ? widget.user!['id']
                    : UniqueKey().toString()
              };

              if (widget.user != null) {
                BlocProvider.of<UserBloc>(context).add(UserBlocEvent.updateUser(
                    userData, userData['id']!,
                    context: context));
              } else {
                BlocProvider.of<UserBloc>(context)
                    .add(UserBlocEvent.saveUser(userData, context: context));
              }
            }
            Navigator.of(context).pop();
          },
          child: const Text(
            'Save',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(width: 8.0),
      ],
    );
  }

  ElevatedButton cancelButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffEDF8FF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Cancel', style: TextStyle(color: Colors.blue)),
    );
  }

  datePicker(BuildContext context) async {
    DateTime? dateTime = await showDialog(
        context: context,
        builder: (_) {
          return const CustomDatePicker();
        });

    if (dateTime != null) {
      firstPickDate = dateTime;
      _startDateController.text = DateFormat('dd MMM yyyy').format(dateTime);
    }
  }

  datePicker2(BuildContext context) async {
    DateTime? dateTime = await showDialog(
        context: context,
        builder: (_) {
          return CustomDatePicker(firstDate: firstPickDate);
        });

    if (dateTime != null) {
      _endDateController.text = DateFormat('dd MMM yyyy').format(dateTime);
      secondPickDate = dateTime;
    }
  }

  Future<dynamic> kshowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => ListView.separated(
        shrinkWrap: true,
        itemCount: role.length,
        separatorBuilder: (context, index) => const Divider(thickness: 0.5),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              _roleController.text = role[index];
              Navigator.pop(context);
            },
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                role[index],
                style: const TextStyle(fontSize: 16),
              ),
            )),
          );
        },
      ),
    );
  }

  Widget kTextFormField(
      {TextEditingController? controller,
      String? label,
      IconData? icons,
      IconData? sufIcons,
      bool readOnly = false,
      String? hintText,
      void Function()? onTap,
      String? Function(String?)? validator}) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onTap: onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE5E5E5))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE5E5E5))),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE5E5E5))),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE5E5E5))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE5E5E5))),
        prefixIcon: Icon(icons, color: Colors.blue),
        suffixIcon:
            sufIcons == null ? null : Icon(sufIcons, color: Colors.blue),
        labelStyle: const TextStyle(
            color: Color(0xff949C9E), fontWeight: FontWeight.w400),
        hintStyle: const TextStyle(
            color: Color(0xff949C9E), fontWeight: FontWeight.w400),
        hintText: hintText,
        labelText: label,
      ),
      validator: validator,
    );
  }
}
