import 'package:flutter/material.dart';
import 'test/first_screen.dart';
import 'test/second_screen.dart';
import 'screens/tab_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            brightness: Brightness.dark,
            textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                headline6:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    primary: Colors.white))),
        home: TabContainer());
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'First App',
//       theme: ThemeData(
//           primarySwatch: Colors.cyan,
//           textButtonTheme: TextButtonThemeData(
//               style: TextButton.styleFrom(backgroundColor: Colors.yellow))),
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.directions_car)),
//                 Tab(icon: Icon(Icons.directions_transit)),
//                 Tab(icon: Icon(Icons.directions_bike))
//               ],
//             ),
//             title: Text('Tabs Demo')
//           ),
//           body: TabBarView(
//             children: [
//               Icon(Icons.directions_car),
//               FirstScreen(),
//               SecondScreen()
//             ],
//           )
//         ),
//       ),
//       routes: {
//         //      '/a': (BuildContext context) => MyPage(title: 'page A'),
//         FirstScreen.routeName: (BuildContext context) => FirstScreen(),
//         SecondScreen.routeName: (ctx) => SecondScreen()
//       },
//     );
//   }
// }
