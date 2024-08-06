

import 'package:my_demo_app/common/functions/validation.dart';

import '../resources/app_strings.dart';

String? validateEmail(String value) {
  if(value.isEmpty){
    return AppStrings.textfield_addEmail_emptyField_error;
  } else if(!isEmailValid(value)) {
    return AppStrings.textfield_addEmail_invalid_error;
  } else {
    return null;
  }
}

String? validatePassword(String value) {
  if(value.isEmpty){
    return AppStrings.textfield_addPassword_emptyField_error;
  } else if(!isPasswordValid(value)){
    return AppStrings.textfield_addPassword_invalid_error;
  } else {
    return null;
  }
}