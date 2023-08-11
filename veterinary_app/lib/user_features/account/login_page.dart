import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:veterinary_app/user_features/home/home_page.dart';
import 'package:veterinary_app/utils/snackBar.dart';
import '../../provider/student.dart';
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
  SharedPreferences? sharedPreferences;
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController userPinController = TextEditingController();
  // UserAuthService userAuthService = UserAuthService();
  final _loginFormKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool _isUserLoggedIn = false;
  String? accessToken;
  bool _mounted = true;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{ 
     sharedPreferences = await SharedPreferences.getInstance();
      var accessToken =  sharedPreferences!.getString('accessToken');
      print(accessToken);
      if(accessToken != null){ 
        _isUserLoggedIn = true;
        getRefreshToken();
        }

    });
  }

  void signInUser() async {
    if(mounted){
  setState(() {
      _isLoading = true;
    });
    }
   await login(
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
    _mounted = false;
    super.dispose();
    userNameTextEditingController.dispose();
    userPinController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
          (_isUserLoggedIn == true)? GestureDetector(
            onTap: () {
              if (_loginFormKey.currentState!.validate()) {
                 
                signInUser();
                
              }
            },
            child:  Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.all(27),
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
                          style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
                        )),
            )
          ): Column(children: [
              MaterialButton(
                color: Colors.blue,
                child: Text('Logout'),
                onPressed: (){
                  sharedPreferences!.remove('accessToken');
                  setState(() {
                    _isUserLoggedIn == false; 
                  });
                }),
                 MaterialButton(
                color: Colors.blue,
                child: Text('Load Data'),
                onPressed: () => getRefreshToken() )
            ],),
        ]),
      ),
    );
  }
   login({
    required BuildContext context,
    required pin,
    required id
  }) async{
    if(kDebugMode){
    print("Student Id : ${userNameTextEditingController.text}");
    print("Student Pin: ${userPinController.text}");
    }
    Dio dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 20);
    dio.options.receiveTimeout = const Duration(seconds: 20);

    try{
       Response response  = await dio.post("$uri/auth", 
      data: jsonEncode({'id': id, 'pin': pin}));
  if(response.statusCode ==200){
        var responseData = response.data as Map<String, dynamic>;
        String jsonData = jsonEncode(responseData);
        Provider.of<StudentProvider>(context, listen: false).setStudent(jsonData);
    await sharedPreferences!.setString('accessToken', responseData['accessToken']);
    setState(() {
      _isUserLoggedIn == true;
    });
      print(responseData['accessToken']);
    Navigator.pushNamedAndRemoveUntil(context, HomePage.routeName, (route) => false);
  }else{

  }
      
      
    }on DioException catch(err){
      SnackBarGlobal.showSnackBar(context, err.toString());
    }
}

  void getRefreshToken() async{
     Dio dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 20);
    dio.options.receiveTimeout = const Duration(seconds: 20);
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers['Authorization'] = 'Bearer $accessToken';

    try{
      if(_mounted){
           Response response  = await dio.get("$uri/refresh");
          if(response.statusCode ==200){
            print(response.data);
  }   else{

  }
      }
      
      
      
    }on DioException catch(err){
      if(_mounted){
      SnackBarGlobal.showSnackBar(context, {err.response!.data}.toString());
      }
    }
  }
}

