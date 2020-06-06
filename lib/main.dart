import 'package:flutter/material.dart';
import 'package:simple_slide_transition/details_page.dart';
import 'package:simple_slide_transition/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _onGenerateRoute,
      title: 'Simple Slide Transition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MyHomePage.routeName,
    );
  }

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    if (settings.name == MyHomePage.routeName) {
      return MaterialPageRoute(builder: (context) => MyHomePage());
    }

    if (settings.name == DetailsPage.routeName) {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => DetailsPage(
          animation: animation,
        ),
        transitionDuration: Duration(milliseconds: 1000),
      );
    }

    return null;
  }
}
