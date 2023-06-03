import 'package:auto_route/auto_route.dart';

import '../google_sign_in/sign_in_page.dart';
import '../home/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  //https://medium.com/@CavinMac/the-ultimate-flutter-navigator-2-0-series-using-auto-route-in-flutter-part-2-3590b9d889ef
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: SignInRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
        )
      ];
}
