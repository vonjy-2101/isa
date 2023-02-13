import 'package:intl/intl.dart';

class NumberFormatter
{
  static String formatter(var number)
  {
    String numberFormater = "";
    numberFormater = NumberFormat.currency(locale: 'eu', symbol: '',decimalDigits: 0).format(number);
    //numberFormater = numberFormater.replaceAll('.', ' ');
    return numberFormater;
  }
}