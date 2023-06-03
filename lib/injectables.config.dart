// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/aplication/auth/auth_bloc.dart' as _i3;
import 'src/aplication/google_sign_in/google_sign_in_bloc.dart' as _i4;
import 'src/domain/auth/i_auth_data_service.dart' as _i5;
import 'src/infrastructure/auth/fire_base_auth.dart' as _i6;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.factory<_i4.GoogleSignInBloc>(() => _i4.GoogleSignInBloc());
  gh.factory<_i5.IAuthDataService>(() => _i6.Auth());
  return getIt;
}
