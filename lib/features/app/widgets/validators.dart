import 'package:iitu_web/core/extension/extensions.dart';

String? notEmptyValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'The field cannot be empty';
  }
  return null;
}

String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Required field';
  }
  if (!value.emailValidator()) {
    return 'Incorrect email format';
  }
  return null;
}
