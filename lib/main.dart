import 'package:flutter/material.dart';
import 'package:test/slidingUpPanel/sliding_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SharedPreference(),
      // home: HttpPackage(),
      // home: ProviderHome(),
      // home: QuickAlertPackage(),
      // home: PickImgFromGallery(),
      home: SlidingUpScreen(),
    );

    //  for bloc method
    // return BlocProvider(
    //   create: (context) => InternetBloc(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: BlocHome(),
    //   ),
    // );

    //  for cubit mehtod
    // return BlocProvider(
    //   create: (context) => InternetCubit(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: CubitHome(),
    //   ),
    // );

    //  for go router method
    // return MaterialApp.router(
    //   debugShowCheckedModeBanner: false,
    //   routerConfig: RouterService.router,
    // );
  }
}
