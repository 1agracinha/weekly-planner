import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0xffDDB8E7),
              offset: Offset(0, 4),
              blurRadius: 6,
            )
          ]),
          child: AppBar(
            backgroundColor: Color(0xffDDB8E7),
            elevation: 0.0,
            title: Center(child: Text("Weekly Planner")),
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: Center(
        child: Text("Weekly PLanner"),
      ),
    );
  }
}
