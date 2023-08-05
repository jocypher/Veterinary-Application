import 'package:flutter/material.dart';
import '../../services/user_services/auth_services.dart';
import '../../utils/global_variables.dart';

import 'account_widget/custom_form.dart';
import 'account_widget/custom_login_style.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController userPinController = TextEditingController();
  UserAuthService userAuthService = UserAuthService();
  final _loginFormKey = GlobalKey<FormState>();
  bool _isLoading = false;

 

  void signInUser() async {
    if(mounted){
  setState(() {
      _isLoading = true;
    });
    }
    await userAuthService.signIn(
        context: context,
        id: userNameTextEditingController.text,
        pin: userPinController.text);
    if(mounted){
  setState(() {
      _isLoading = false;
    });
    }
  }

   @override
  void dispose() {
    super.dispose();
    userNameTextEditingController.dispose();
    userPinController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const TopWidget(),
        const Text(
          "Login",
          style: TextStyle(
              fontSize: 42,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              color: loginColor),
        ),
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 10.0)
                ]),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
            child: Form(
              key: _loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "ID",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                    ),
                  ),
                  CustomTextFormField(
                      textEditingController: userNameTextEditingController),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 10.0)
                ]),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text("PIN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                CustomTextFormField(
                    isPassword: true, textEditingController: userPinController),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            if (_loginFormKey.currentState!.validate()) {
              signInUser();
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
                color: loginColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: Center(
                child: _isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                        color: primaryColor,
                      ))
                    : const Text(
                        "Login",
                        style: TextStyle(color: primaryColor, fontSize: 17),
                      )),
          ),
        )
      ]),
    );
  }
}
