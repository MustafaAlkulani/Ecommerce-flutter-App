import 'package:ecomm/provider/app_provider.dart';
import 'package:ecomm/screens/home.dart';
import 'package:ecomm/screens/login.dart';
import 'package:ecomm/screens/mainScreen.dart';
import 'package:ecomm/screens/notification.dart';
import 'package:ecomm/screens/payment.dart';
import 'package:ecomm/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'generated/i18n.dart';
import 'provider/user_provider.dart';

// import 'package:intl/intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        // ChangeNotifierProvider(create: (_) => AdvertizerProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
        builder: (context, model, child) => GetMaterialApp(
            debugShowCheckedModeBanner: false,

            theme: ThemeData(
              primaryColor: Colors.blue,
              accentColor: Colors.red,
            ),
            localizationsDelegates: [
              I18n.delegate,
              // GeneratedLocalizationsDelegate()

              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            locale: Locale('ar'),
            supportedLocales: I18n.delegate.supportedLocales,
            home: ScreensController(),
            getPages: [
              GetPage(name: '/notification', page: () => MyNotifications()),
              GetPage(name: '/payment', page: () => Payment()),
              // GetPage(name: '/payment', page: () => Payment()),
              // GetPage(name: '/payment', page: () => Payment()),
            ]));
  }
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserProvider>(context);
    final user = Status.Authenticating;

    switch (user) {
      case Status.Uninitialized:
        return Splash();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return MainScreen();
      case Status.Authenticated:
        return HomePage();
      default:
        return Login();
    }
  }
}
