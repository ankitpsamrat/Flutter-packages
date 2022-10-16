import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/packageTest/bloc/blocs/internet_bloc.dart';
import 'package:test/packageTest/bloc/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  for all screen

    // return  MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   // home: HomePage(),
    //   // home: profile(),
    //   // home: HomePage1(),
    //   // home: HomePage2(),
    //   // home: About(),
    //   // home: TopSkills(),
    //   // home: SharedPreference(),
    //   // home: HttpPackage(),
    //   // home: ProviderHome(),
    //   home: BlocHome(),
    // );

    //  for bloc screen

    return BlocProvider(
      create: (context) => InternetBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocHome(),
      ),
    );
  }
}
