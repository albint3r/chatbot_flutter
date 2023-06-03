import 'package:auto_route/auto_route.dart';

import '../google_sign_in/sign_in_page.dart';
import '../home/home_or_sign_in_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeOrSignInRoute.page,
        ),
        AutoRoute(
          page: SignInRoute.page,
        ),
      ];
}
