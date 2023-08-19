
import 'dart:developer';

DateTime today = DateTime.now();

int currentMonthNumber = today.month;

List<String> monthList = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'November',
  'December'
];

List<String> daysList = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
];

String getSelectedMonth (int monthNumber){

  log(monthList[monthNumber-1], name: 'Month');

  return monthList[monthNumber-1];


}

List<DateTime> getListOfDate () {

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime(2023,12,31);

  List<DateTime> days = [];
  for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
    days.add(startDate.add(Duration(days: i)));
  }

  log(days.toString(), name: 'List of dates');

  return days;
}