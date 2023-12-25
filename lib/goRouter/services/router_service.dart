import 'package:go_router/go_router.dart';

import '../screens/dashboard_screen.dart';
import '../screens/profile_screen.dart';

class RouterService {
  //

  static GoRouter router = GoRouter(
    //  to call first/initial/start page
    //  initialLocation: '/profile',

    //  all routes will be define like this
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const DashboardScreen(),
      ),
      //  Passing parameters with route
      GoRoute(
        path: "/profile/:name",
        builder: (context, state) => ProfileScreen(
          name: state.pathParameters["name"]!,
        ),
      ),
    ],
  );
}
