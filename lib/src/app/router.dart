import 'package:auto_route/auto_route.dart';
import 'package:template_project_flutter_with_riverpod/src/features/product/view/product_page.dart';

import '../features/profile/view/profile_page.dart';
import '../features/product/view/product_page.dart';
import '../home/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, path: '/'),
        AutoRoute(page: ProductRoute.page, path: '/product'),
        AutoRoute(page: ProfileRoute.page, path: '/profile'),
      ];
}
