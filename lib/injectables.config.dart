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

import 'src/application/auth/auth_bloc.dart' as _i13;
import 'src/application/chat/chat_bloc.dart' as _i14;
import 'src/domain/auth/i_auth_data_service.dart' as _i3;
import 'src/domain/auth/i_auth_facade.dart' as _i9;
import 'src/domain/auth/i_google_sing_in_data_service.dart' as _i7;
import 'src/domain/chat/i_chat_facade.dart' as _i11;
import 'src/domain/chat/i_chat_form.dart' as _i5;
import 'src/infrastructure/auth/auth_facade_impl.dart' as _i10;
import 'src/infrastructure/auth/fire_base_auth.dart' as _i4;
import 'src/infrastructure/auth/google_sign_in_data_service_impl.dart' as _i8;
import 'src/infrastructure/chat/chat_facade_impl.dart' as _i12;
import 'src/infrastructure/chat/chat_form_impl.dart' as _i6;

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
  gh.factory<_i3.IAuthDataService>(() => _i4.Auth());
  gh.factory<_i5.IChatForm>(() => _i6.ChatFormImpl());
  gh.factory<_i7.IGoogleSignInDataService>(
      () => _i8.GoogleSignInDataServiceImpl());
  gh.factory<_i9.IAuthFacade>(() => _i10.AuthFacadeImpl(
        googleSingIn: gh<_i7.IGoogleSignInDataService>(),
        auth: gh<_i3.IAuthDataService>(),
      ));
  gh.factory<_i11.IChatFacade>(
      () => _i12.ChatFacadeImpl(chatForm: gh<_i5.IChatForm>()));
  gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(gh<_i9.IAuthFacade>()));
  gh.factory<_i14.ChatBloc>(
      () => _i14.ChatBloc(facade: gh<_i11.IChatFacade>()));
  return getIt;
}
