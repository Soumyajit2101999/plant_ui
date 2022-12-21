import 'package:flutter/material.dart';
import 'package:plat_app_ui_practice/screens/home/components/home_screen.dart';
import 'package:plat_app_ui_practice/utils/constants.dart';
import 'package:plat_app_ui_practice/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: MyRoutes.root,
      routes: {MyRoutes.root: (context) => const Homescreen()},
    );
  }
}
