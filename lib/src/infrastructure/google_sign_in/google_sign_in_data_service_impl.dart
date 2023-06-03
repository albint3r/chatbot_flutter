import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/google_sign_in/i_google_sing_in_data_service.dart';

class GoogleSignInDataServiceImpl implements IGoogleSignInDataService {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  late GoogleSignInAccount? _user;

  @override
  GoogleSignInAccount get user => _user!;

  @override
  bool get isUser => _user != null;

  @override
  FutureOr<void> signIn() async {
    final googleUser = await googleSignIn.signIn();
    if (!isUser) return;
    _user = googleUser;
    final googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  FutureOr<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
