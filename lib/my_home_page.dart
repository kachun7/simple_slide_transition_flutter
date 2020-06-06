import 'package:flutter/material.dart';
import 'package:simple_slide_transition/details_page.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main')),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(DetailsPage.routeName),
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
