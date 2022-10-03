import 'package:flutter/material.dart';
import 'package:ncb_banking_app/pages/login/login_utilities.dart';
import 'package:ncb_banking_app/utilities/magic_strings.dart';
import 'package:ncb_banking_app/utilities/widgets.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  image_names.background,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: screenSize.width * 1.1,
                  height: screenSize.height * .25,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius:
                        BorderRadius.vertical(top: Radius.elliptical(185, 155)),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 20.0,
                                ),
                                Text(
                                  'Activate Your Card',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )),
                        verticalLine(),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Icon(
                                Icons.currency_exchange_outlined,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                'Quick Send',
                                style: TextStyle(
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        verticalLine(),
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 20.0,
                                ),
                                Text(
                                  'More..',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 70.0,
            child: ClipPath(
                clipper: LoginClip(),
                child: Container(
                    height: screenSize.height * .4,
                    width: screenSize.width * .94,
                    color: Colors.white,
                    child: LogIn())),
          )
        ],
      ),
    ));
  }
}
