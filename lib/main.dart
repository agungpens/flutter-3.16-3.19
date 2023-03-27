import 'package:flutter/material.dart';
import 'package:flutter_3_16_3_19/secondScreen.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Screen width : ${screenSize.width.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Text(
            'Orientation : ${orientation == Orientation.portrait ? 'Portrait' : 'Landscape'}',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}


// Second Page===============

// class MyHomePage extends StatelessWidget {
//   final String message = 'Pesan Dari halaman pertama';

//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => SecondScreen(message)));
//           },
//           child: const Text('Go to second screen'),
//         ),
//       ),
//     );
//   }
// }
