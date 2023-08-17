

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:veterinary_app/provider/selectedFileProvider.dart';
import 'package:veterinary_app/provider/student.dart';
import 'package:veterinary_app/router_generator.dart';
import 'package:veterinary_app/services/user_services/auth_services.dart';
import 'package:veterinary_app/user_features/account/login_page.dart';
import 'package:veterinary_app/user_features/home/home_page.dart';
import 'package:veterinary_app/user_features/splash_page.dart';
import 'package:veterinary_app/utils/snackBar.dart';

import 'model/student.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => SelectedFileProvider()),
    ChangeNotifierProvider(create: (context) => StudentProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UserAuthService userAuthService = UserAuthService();
  @override
  void initState() {
    super.initState();
    userAuthService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(
      scaffoldMessengerKey: SnackBarGlobal.key,
      title: 'Veterinary Application',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: LoadingPage(),
    );
  }
}





