import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_google_sing_in_data_service.dart';

@Injectable(as: IGoogleSignInDataService)
class GoogleSignInDataServiceImpl implements IGoogleSignInDataService {
  final GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  late GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  bool get isUser => _user != null;

  @override
  Future<void> signIn() async {
    _user = await googleSignIn.signIn();
    final googleAuth = await _user?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
