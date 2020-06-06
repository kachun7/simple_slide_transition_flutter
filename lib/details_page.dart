import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = '/details';

  final Animation<double> animation;

  DetailsPage({Key key, this.animation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _animChild(Offset(0.0, -1.0), Offset.zero, 0.0, 0.3, Container(color: Colors.red)),
            ),
            Expanded(
              child: _animChild(Offset(1.0, 0.0), Offset.zero, 0.2, 0.4, Container(color: Colors.blue)),
            ),
            Expanded(
              child: _animChild(Offset(-1.0, 0.0), Offset.zero, 0.5, 0.8, Container(color: Colors.green)),
            ),
            Expanded(
              child: _animChild(Offset(0.0, 1.0), Offset.zero, 0.7, 1.0, Container(color: Colors.yellow)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _animChild(Offset beginOffset, Offset endOffset, double beginInterval, double endInterval, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, animChild) {
        return SlideTransition(
          position: Tween<Offset>(begin: beginOffset, end: endOffset).animate(
            CurvedAnimation(parent: animation, curve: Interval(beginInterval, endInterval)),
          ),
          child: animChild,
        );
      },
      child: child,
    );
  }
}
