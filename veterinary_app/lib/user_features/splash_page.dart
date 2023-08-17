import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:veterinary_app/utils/global_variables.dart';

import 'account/login_page.dart';
import 'home/home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    _checkAccessToken();
  }

  Future<void> _checkAccessToken() async {
    bool hasAccessToken = await loadingPage();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => hasAccessToken ? const HomePage() : const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: loginColor,
      child: const Center(
        child: CircularProgressIndicator(
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}

Future<bool> loadingPage() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  dynamic accessToken = sharedPreferences.get("accessToken");
  print("AccessToken: $accessToken");
  return accessToken != null && accessToken.isNotEmpty;
}

