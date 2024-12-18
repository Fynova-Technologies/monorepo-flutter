  import 'package:flutter/foundation.dart';

class FormValidator {
  static const emptyFieldText = 'Required';

  static String? passwordValidator(String input) {
    String? text;
    /*r'^
      (?=.*[A-Z])       // should contain at least one upper case
      (?=.*[a-z])       // should contain at least one lower case
      (?=.*?[0-9])      // should contain at least one digit
      (?=.*?[!@#\$&*~]) // should contain at least one Special character
        .{8,}             // Must be at least 8 characters in length
    $*/
    if (input.isEmpty) {
      text = 'Password Required';
    } else if (input.length < 8) {
      text = 'Password Must be 8 Character Long';
    } //
    else {
      bool passwordValid = RegExp(
              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
          .hasMatch(input);
      if (!passwordValid) {
        text = 'Password Must Contain A-Z, a-z, One Special Character,0-9';
      }
    }
    return text;
  }

  static String? emailValidator(String input, {String? message}) {
    String? text;
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(input);

    if (input.isEmpty) {
      text = message ?? "Email Required";
    } else {
      if (!emailValid) {
        text = "Check Your Email";
      }
    }
    return text;
  }

  static String? emailAndPhoneValidator(String input, {String? message}) {
    String? text;
    bool emailValid = RegExp(
            "^\d{10}\t((?>[a-zA-Z\d!#\$%&'*+\-\/=?^_`{|}~]+\x20*|"
            "((?=[\x01-\x7f])[^"
            "\\]|\\[\x01-\x7f])*"
            "\x20*)*(?<angle><))?((?!\.)(?>\.?[a-zA-Z\d!#\$%&'*+\-\/=?^_`{|}~]+)+|"
            "((?=[\x01-\x7f])[^"
            "\\]|\\[\x01-\x7f])*"
            ")@(((?!-)[a-zA-Z\d\-]+(?<!-)\.)+[a-zA-Z]{2,}|\[(((?(?<!\[)\.)(25[0-5]|2[0-4]\d|[01]?\d?\d)){4}|[a-zA-Z\d\-]*[a-zA-Z\d]:((?=[\x01-\x7f])[^\\\[\]]|\\[\x01-\x7f])+)\])(?(angle)>)")
        .hasMatch(input);

    if (input.isEmpty) {
      text = message ?? "Email/PhoneNumber Required";
    } else {
      if (!emailValid) {
        text = "Check Your Email/PhoneNumber";
      }
    }
    return text;
  }

  static String? phoneNumberValidator(String input,
      {String? emptyMessage, String? invalidMessage}) {
    String? text;
    bool phoneValid = RegExp(r"^\+?(98|97)[0-9]{8}$").hasMatch(input);
    if (input.isEmpty) {
      text = emptyMessage ?? emptyFieldText;
    } else {
      if (!phoneValid) {
        text = invalidMessage ?? 'Please enter a valid phone number';
      }
    }
    return text;
  }

  static String? phoneNumberEmptyValidator(String input, {String? message}) {
    String? text;
    bool phoneValid = RegExp(r"^\+?9[0-9 ]{9}$").hasMatch(input);
    if (input.isEmpty) {
      text = message ?? 'Phone Number Required';
      return '';
    } else {
      if (!phoneValid) {
        text = "Check Your Phone number";
        return text;
      }
    }
    return null;
  }

  static String? otpValidator(String otp) {
    String? text;
    if (otp.isEmpty) {
      text = 'OTP Required';
      debugPrint(otp.length.toString());
    } else {
      if (otp.length > 8 || otp.length < 4) {
        text = 'Length Must Be Less Than 8 Digit and greater than 4 digit';
      }
    }
    return text;
  }

  static String? checkEmptyField(var input, {String? message}) {
    String? text;
    if (input.trim().isEmpty == true) {
      text = message ?? emptyFieldText;
    }
    return text;
  }

  static String? confirmPassword(String? input, String originalPassword,
      {String? message}) {
    String? text;
    if (input != originalPassword) {
      text = message ?? 'Password Does not Match';
    }
    return text;
  }
}

String emptyValidationText(String field) => '$field Cannot Be Empty';

String invalidValidationText(String field) => 'Please Enter a Valid $field';
