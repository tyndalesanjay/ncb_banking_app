import 'package:flutter/material.dart';
import 'package:ncb_banking_app/pages/login/loginpage.dart';

void main(List<String> args) {
  runApp(const ncb_Banking());
}

// ignore: camel_case_types
class ncb_Banking extends StatelessWidget {
const ncb_Banking({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NCB Banking',
      theme: ThemeData.light(
        useMaterial3: true
      ),
      home: const login_page(title: 'Login',)
    );
  }
}