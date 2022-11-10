import 'package:flutter/material.dart';
import 'package:test/packageTest/quickalert/quickalert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: profile(),
      // home: HomePage1(),
      // home: HomePage2(),
      // home: About(),
      // home: TopSkills(),
      // home: SharedPreference(),
      // home: HttpPackage(),
      // home: ProviderHome(),
      home: QuickAlertPackage(),
      // home: BannerWidget(),
      // home: BottomSheetWidget(),
      // home: ReorderableListViewWidget(),
      // home: CheckBoxWidget(),
      // home: ContextMenuWidget(),
      // home: TableWidget(),
      // home: AlertDialogWidget(),
      // home: CardWidget(),
      // home: DatePickerWidget(),
      // home: TimePickerWidget(),
      // home: DateRangePickerWidget(),
      // home: SlideToDeleteWidget(),
      // home: DrawerWidget(),
      // home: PopUpMenuButtonWidget(),
      // home: FloatingActionButtonWidget(),
      // home: FormWidget(),
      // home: TextFormFieldWidget(),
      // home: ChoiceChipWidget(),
      // home: FadeInImageWidget(),
      // home: FutureBuilderWidget(),
      // home: GridViewWidget(),
      // home: GridTileWidget(),
      // home: ListViewWidget(),
      // home: ListTileWidget(),
      // home: NavigationBarWidget(),
      // home: SwitchWidget(),
      // home: TabBarWidget(),
      // home: RadioListTileWidget(),
      // home: RefreshIndicatorWidget(),
      // home: SelectableWidget(),
      // home: SnackbarWidget(),
      // home: LayoutBuilderWidget(),
      // home: FittedBoxWidget(),
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
