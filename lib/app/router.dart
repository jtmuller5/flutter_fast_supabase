import 'package:auto_route/auto_route.dart';
import 'package:flutter_fast_supabase/features/supabase/ui/supabase_view.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SupabaseRoute.page, initial: true),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}
