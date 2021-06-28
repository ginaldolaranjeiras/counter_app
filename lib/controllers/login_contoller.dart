import 'package:counter_app/controllers/auth/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  final authConroller = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        //'https://www.googleapis.com/auths/contacts.readonly',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      authConroller.setUser(context, response);
      //print(response);
    } catch (error) {
      authConroller.setUser(context, null);
    }
  }
}
