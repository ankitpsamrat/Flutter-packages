import 'package:go_router/go_router.dart';

import '../screens/dashboard_screen.dart';
import '../screens/profile_screen.dart';

class RouterService {
  //

  static const dashboard = 'dashboard';
  static const profile = 'profile';
  static bool isUserLoggedIn = false;

  static GoRouter router = GoRouter(
    //  to call first/initial/start page
    //  initialLocation: '/profile',

    //  redirect router method
    // redirect: (context, state) {
    //   if (isUserLoggedIn) {
    //     return '/dashboard';
    //   } else {
    //     return '/';
    //   }
    // },

    //  all routes will be define like this
    routes: [
      GoRoute(
        name: dashboard, //  its called named route
        path: "/",
        builder: (context, state) => const DashboardScreen(),
      ),
      //  Passing parameters with route
      GoRoute(
        name: profile, //  its called named route
        path: "/profile/:name",
        builder: (context, state) =>
            ProfileScreen(name: state.pathParameters["name"]!),
      ),
    ],
  );
}
