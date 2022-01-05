import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_on_assesment/core/constants/enums/preferences_keys.dart';
import 'package:play_on_assesment/core/constants/routes/routes_constants.dart';
import 'package:play_on_assesment/core/init/cache/locale_manager.dart';
import 'package:play_on_assesment/view/create_team/view/create_team_view.dart';
import 'package:play_on_assesment/view/teams/controller/teams_view_controller.dart';
import 'package:play_on_assesment/view/teams/view/teams_view.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() async {
  await asyncInit();
  runApp(initProvider());
}

class MyApp extends StatelessWidget {
  final LocaleManager _localeManager = LocaleManager.instance;
  MyApp({Key? key}) : super(key: key);
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
          initialRoute: defineInitialRoute(_localeManager),
          //home: defineInitialRoute(_localeManager),
          routes: {
            Routes.TEAMS: (context) => const TeamsView(),
            Routes.CREATE_TEAM: (context) => const CreateTeamView()
          },
        );
      },
    );
  }
}

Future<void> asyncInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleManager.prefrencesInit();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );
}

initProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => TeamsViewController(),
      )
    ],
    child: MyApp(),
  );
}

String defineInitialRoute(LocaleManager _localeManager) {
  return _localeManager.getBoolValue(PreferencesKeys.IS_LOGIN_FIRST) ? '/create_a_team' : '/teams';
}
