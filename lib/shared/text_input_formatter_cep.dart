import 'package:flutter/services.dart';

class TextInputFormatterCep extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String cepNumbers = newValue.text.replaceAll(RegExp(r'\D'), "");

    if (cepNumbers.length > 5) {
      String start = cepNumbers.substring(0, 5);
      String end = cepNumbers.substring(
        5,
        cepNumbers.length <= 8 ? cepNumbers.length : 8,
      );

      return newValue.copyWith(
        text: "$start-$end",
        selection: TextSelection.collapsed(
          offset: cepNumbers.length <= 8 ? cepNumbers.length + 1 : 9,
        ),
      );
    }

    return newValue;
  }
}
