import 'package:flutter/material.dart';
import 'package:test/carouselSlider/home_page.dart';

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
      home: MySlider(),
    );

    //  for bloc screen

    // return BlocProvider(
    //   create: (context) => InternetBloc(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: BlocHome(),
    //   ),
    // );

    //  for cubit screen

    // return BlocProvider(
    //   create: (context) => InternetCubit(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: CubitHome(),
    //   ),
    // );
  }
}
