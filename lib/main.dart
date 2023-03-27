import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: ExpendedFlexiblePage(),
    );
  }
}

class ExpendedFlexiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              ExpendedWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: [
              FlexibleWidget(),
              ExpendedWidget(),
            ],
          ),
        ],
      )),
    );
  }
}

class ExpendedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
        height: 100,
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: Colors.blue,
        height: 100,
      ),
    );
  }
}
