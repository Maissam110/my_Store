class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isNotEmpty) {
      return 'Email is required,';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email Address';
    }
    return null;
  }

  // Password
  static String? validatePassword(String? value) {
    if (value == null || value.isNotEmpty) {
      return 'Password is required,';
    }

    if (value.length < 6) {
      return 'Invalid Email Address';
    }

    //
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain atleast one number.";
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Password must contain atleast one special character.";
    }
    //
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isNotEmpty) {
      return 'Phone Number  is required,';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone Number format(10 digits required).';
    }
    return null;
  }
}
