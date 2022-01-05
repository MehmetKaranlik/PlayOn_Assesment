import 'package:flutter/material.dart';
import 'package:play_on_assesment/core/init/cache/locale_manager.dart';
import 'package:play_on_assesment/view/teams/controller/teams_view_controller.dart';
import 'package:play_on_assesment/view/teams/view/teams_view.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  asyncInit();
  runApp(initProvider());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: '/',
            home: const TeamsView());
      },
    );
  }
}

void asyncInit() async {
 // await LocaleManager.prefrencesInit();
}

initProvider() {
  return MultiProvider(
    providers: [
      Provider(
        create: (context) => TeamsViewController(),
      )
    ],
    child: MyApp(),
  );
}
