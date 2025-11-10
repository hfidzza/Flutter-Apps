import 'package:flutter/material.dart';
import 'package:coba/auth/login_screen.dart';
import 'package:coba/auth/register_screen.dart';
import 'package:coba/button_screen.dart';
import 'package:coba/cardview_screen.dart';
import 'package:coba/column_screen.dart';
import 'package:coba/custom_scroll_view_screen.dart';
import 'package:coba/dinamis_listview_screen.dart';
import 'package:coba/expended_screen.dart';
import 'package:coba/first_screen.dart';
import 'package:coba/font_screen.dart';
import 'package:coba/grid_screen.dart';
import 'package:coba/images_screen.dart';
import 'package:coba/list_builder.dart';
import 'package:coba/list_separated.dart';
import 'package:coba/list_view.dart';
import 'package:coba/listbuilder.dart';
import 'package:coba/listseparated.dart';
import 'package:coba/row_screen.dart';
import 'package:coba/splash_screen.dart';
import 'package:coba/textfield_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      // home: RowSreen(),
      initialRoute: '/splash',
      routes: {
        '/': (context) => MyHomePage(title: "Text"),
        '/column': (context) => ColumnScreen(),
        '/row': (context) => RowSreen(),
        '/image': (context) => ImageScreen(),
        '/field': (context) => FieldScreen(),
        '/login': (context) => LoginScreen(),
        '/splash': (context) => SplashScreen(),
        '/register': (context) => RegisterScreen(),
        '/customscrollview': (context) => CustomScrollViewScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Title"),
        leading: Text("kIRI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}