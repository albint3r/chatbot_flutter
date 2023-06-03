import 'dart:async';

abstract class IGoogleSignInDataService {
  FutureOr<void> signIn();
  FutureOr<void> signOut();
}
