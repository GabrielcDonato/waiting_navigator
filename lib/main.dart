import 'package:flutter/material.dart';
import 'package:navigation_manager/pages/details2_page.dart';
import 'package:navigation_manager/pages/details_page.dart';

import 'core/navigator_observer_custom.dart';
import 'pages/details3_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      // onGenerateRoute: (RouteSettings settings) {
      //   if (settings.name == '/') {
      //     return MaterialPageRoute(
      //       settings: settings,
      //       builder: (r) => const HomePage(),
      //     );
      //   }
      //   if (settings.name == '/details') {
      //     String parameter = settings.arguments as String;
      //     return MaterialPageRoute(
      //       settings: settings,
      //       builder: (r) => DetailsPage(param: parameter ?? 'Without params'),
      //     );
      //   }
      // },
      routes: {
        '/': (context) => HomePage(),
        '/details2': (context) => Details2Page(),
        '/details3': (context) => Details3Page(),
      },
    );
  }
}
