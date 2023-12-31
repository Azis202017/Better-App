import 'package:intl/intl.dart';

class FormattedDate {
  String formattedDateToString({required DateTime dateTime}) {
    return dateTime.toIso8601String();
  }

  String formattingDate(DateTime dateTime) {
    return DateFormat(" d MMMM  yyy", "id_ID").format(
      dateTime,
    );
  }
}
