import 'dart:convert';
import 'package:epredik_app/services/config/constantConfig.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  Future<String> signUp(String email, String studentID, String password,
      String school, String strand) async {
    try {
      final http.Response res = await http.post(
        Uri.parse('${constant.uri}/api/user/create'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
          'studentID': studentID,
          'school': school,
          'strand': strand,
        }),
      );

      if (res.statusCode == 201) {
        print('Registration Successful');
        return 'success';
      } else {
        final Map<String, dynamic> responseBody = jsonDecode(res.body);
        String errorMessage = responseBody['error'] ?? 'Failed to register';
        print('Failed to register: $errorMessage');
        return errorMessage;
      }
    } catch (err) {
      if (err is http.ClientException) {
        print('Network error occurred. Please check your connection.');
        return 'Server error. Please try again later.';
      } else {
        print('An unexpected error occurred: $err');
        return 'An unexpected error occurred. Please try again.';
      }
    }
  }

  Future<String> login(String studentID, String password) async {
  try {
    final http.Response res = await http.post(
      Uri.parse('${constant.uri}/api/user/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'studentID': studentID,
        'password': password,
      }),
    );

    if (res.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(res.body);
      String role = responseBody['role']; // Retrieve role from the response
      print('Login Successful. Role: $role');
      return 'success with role: $role'; // Return role with success
    } else {
      final Map<String, dynamic> responseBody = jsonDecode(res.body);
      String errorMessage = responseBody['error'] ?? 'Failed to login';
      print('Failed to login: $errorMessage');
      return errorMessage;
    }
  } catch (err) {
    if (err is http.ClientException) {
      print('Network error occurred. Please check your connection.');
      return 'Network error. Please try again later.';
    } else {
      print('An unexpected error occurred: $err');
      return 'An unexpected error occurred. Please try again.';
    }
  }
}

}
