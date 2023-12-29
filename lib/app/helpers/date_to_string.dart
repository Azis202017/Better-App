class FormattedDate{
  String formattedDateToString({required DateTime dateTime}) {
    return dateTime.toIso8601String();
  }
}