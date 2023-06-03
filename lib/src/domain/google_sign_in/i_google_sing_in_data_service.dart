import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';

abstract class IGoogleSignInDataService {
  GoogleSignInAccount get user;

  bool get isUser;

  FutureOr<void> signIn();

  FutureOr<void> signOut();
}
