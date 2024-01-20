import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget {
  final DateTime? firstDate;
  const CustomDatePicker({Key? key, this.firstDate}) : super(key: key);

  @override
  CustomDatePickerState createState() => CustomDatePickerState();
}

class CustomDatePickerState extends State<CustomDatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: const Color(0xffEDF8FF),
                      onPressed: () {
                        setState(() {
                          selectedDate = DateTime.now();
                        });
                      },
                      child: const Text(
                        'Today',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: const Color(0xffEDF8FF),
                      onPressed: () {
                        DateTime mostRecentWeekday(
                                DateTime date, int weekday) =>
                            DateTime(date.year, date.month,
                                date.day + (date.weekday - weekday) % 7);
                        setState(() {
                          selectedDate = mostRecentWeekday(selectedDate, 0);
                        });
                      },
                      child: const Text(
                        'Next Monday',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: const Color(0xffEDF8FF),
                      onPressed: () {
                        DateTime mostRecentWeekday(
                                DateTime date, int weekday) =>
                            DateTime(date.year, date.month,
                                date.day + (date.weekday - weekday) % 7);
                        setState(() {
                          selectedDate = mostRecentWeekday(selectedDate, -1);
                        });
                      },
                      child: const Text(
                        'Next Tuesday',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: const Color(0xffEDF8FF),
                      onPressed: () {
                        setState(() {
                          selectedDate =
                              DateTime.now().add(const Duration(days: 7));
                        });
                      },
                      child: const Text(
                        'After 1 week',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              CalendarDatePicker(
                initialDate: selectedDate,
                firstDate: widget.firstDate ?? DateTime(1949),
                lastDate: DateTime(2099),
                onDateChanged: (DateTime date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                      '${selectedDate.day} ${DateFormat('MMM').format(DateTime(0, selectedDate.month))} ${selectedDate.year}'),
                  const SizedBox(width: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        elevation: 0,
                        color: const Color(0xffEDF8FF),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, selectedDate);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
