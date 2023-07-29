


import 'package:flutter/material.dart';

import '../widgets/iphone_13.dart';

class FigmaTaskOne extends StatelessWidget {
  const FigmaTaskOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Iphone13(),
    );
  }
}
