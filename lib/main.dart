import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/screen/banner/weekly_banner.dart';
import 'package:weekly_planner/screen/create_note/create_note.dart';
import 'package:weekly_planner/shared/custom_appbar_widget.dart';
import 'package:weekly_planner/util/height_error.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weekly Planner',
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
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        return Scaffold(
          appBar: PreferredSize(
            child: CustomAppBarWidget(),
            preferredSize: Size.fromHeight(kToolbarHeight),
          ),
          body: MediaQuery.of(context).size.height < 430 ||
                  MediaQuery.of(context).size.width < 930
              ? HeightErrorScreen()
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CreateNote(),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: WeeklyBanner())
                    ],
                  ),
                ),
        );
      },
    );
  }
}
