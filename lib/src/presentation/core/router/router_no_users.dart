import 'package:auto_route/auto_route.dart';
import 'package:chatbot/src/presentation/core/router/app_router.dart';
import 'package:injectable/injectable.dart';

import '../../chat/chat_page.dart';
import '../../home/home_page.dart';
import '../../sign_in/sign_in_page.dart';
import '../../sign_up/sign_up_page.dart';

part 'router_no_users.gr.dart';

@Injectable(as: _$RouterNoUsers)
@AutoRouterConfig()
class RouterNoUsers extends _$RouterNoUsers {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: SignInRoute.page,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        )
      ];
}
