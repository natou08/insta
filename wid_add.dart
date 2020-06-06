import 'package:flutter/material.dart';

class Wid_Add extends StatelessWidget {
  const Wid_Add({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }
}