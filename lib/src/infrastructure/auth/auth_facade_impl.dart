import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_data_service.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/i_google_sing_in_data_service.dart';

@Injectable(as: IAuthFacade)
class AuthFacadeImpl implements IAuthFacade {
  AuthFacadeImpl({
    required this.googleSingIn,
    required this.auth,
  });

  final IGoogleSignInDataService googleSingIn;
  final IAuthDataService auth;


  @override
  User? get currentUser => auth.currentUser;

  @override
  Future<void> signInWithGoogle() async {
    await googleSingIn.signIn();
  }

  @override
  Future<void> signOut() async {
    await auth.signOut();
  }


}
