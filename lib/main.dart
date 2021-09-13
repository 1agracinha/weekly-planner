import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weekly_planner/controller/create_note_controller.dart';
import 'package:weekly_planner/screen/banner/weekly_banner.dart';
import 'package:weekly_planner/screen/create_note/create_note.dart';
import 'package:weekly_planner/util/height_error.dart';
import 'package:get/get.dart';

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
            title: Center(
                child: Text(
              "Weekly Planner",
              style: GoogleFonts.getFont('Rochester',
                  color: Colors.white, fontSize: 24),
            )),
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: MediaQuery.of(context).size.height < 430 ||
              MediaQuery.of(context).size.width < 930
          ? HeightErrorScreen()
          : GetBuilder<CreateNoteController>(
              init: CreateNoteController(),
              builder: (createNoteController) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.025),
                          child: CreateNote(createNoteController)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: WeeklyBanner(createNoteController))
                    ],
                  ),
                );
              }),
    );
  }
}
