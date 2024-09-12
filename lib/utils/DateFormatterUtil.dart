import 'package:intl/intl.dart';

class DateFormatterUtil {
  static String formatDate(DateTime date) {
    return DateFormat('dd/MM').format(date);
  }
}
