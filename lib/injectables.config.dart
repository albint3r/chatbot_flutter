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

import 'src/application/auth/auth_bloc.dart' as _i11;
import 'src/domain/auth/i_auth_data_service.dart' as _i4;
import 'src/domain/auth/i_auth_facade.dart' as _i9;
import 'src/domain/auth/i_google_sing_in_data_service.dart' as _i6;
import 'src/infrastructure/auth/auth_facade_impl.dart' as _i10;
import 'src/infrastructure/auth/fire_base_auth.dart' as _i5;
import 'src/infrastructure/auth/google_sign_in_data_service_impl.dart' as _i7;
import 'src/presentation/core/router/app_router.dart' as _i3;
import 'src/presentation/core/router/router_no_users.dart' as _i8;

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
  gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
  gh.factory<_i4.IAuthDataService>(() => _i5.Auth());
  gh.factory<_i6.IGoogleSignInDataService>(
      () => _i7.GoogleSignInDataServiceImpl());
  gh.factory<_i8.RouterNoUsers>(() => _i8.RouterNoUsers());
  gh.factory<_i9.IAuthFacade>(() => _i10.AuthFacadeImpl(
        googleSingIn: gh<_i6.IGoogleSignInDataService>(),
        auth: gh<_i4.IAuthDataService>(),
      ));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i9.IAuthFacade>()));
  return getIt;
}
