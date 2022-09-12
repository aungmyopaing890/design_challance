// ignore_for_file: depend_on_referenced_packages
import 'package:designchallange1/core/viewmodels/home_model.dart';
import 'package:designchallange1/locator.dart';
import 'package:designchallange1/ui/routes.dart';
import 'package:designchallange1/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

bool shouldUseFirestoreEmulator = false;
main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeModel>(
            create: (BuildContext context) => HomeModel(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nike',
          theme: ThemeData(
              brightness: Brightness.light, primaryColor: primaryColor),
          initialRoute: '/',
          routes: routes,
        ));
  }
}
