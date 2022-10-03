import 'package:flutter/material.dart';
import 'package:ncb_banking_app/pages/home/home_page.dart';


// Login Form
class LogIn extends StatefulWidget {
  const LogIn();

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _rememberMe = false;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Form(
                // key: _formKey,
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 45.0, horizontal: 30.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _toggle();
                            },
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off_rounded,
                              color: Colors.grey,
                            ))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                              value: _rememberMe,
                              onChanged: (bool? value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              }),
                          Text('Remember Me')
                        ],
                      ),
                      TextButton(
                          onPressed: () {}, child: Text('Forgot Password?'))
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.yellow)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            label: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 0.0),
                              child: Text(
                                'Touch ID LogIn',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            icon: Icon(Icons.fingerprint_outlined),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 0.0),
                            child: Text('Sign Up'),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}


// Sign Up Form 
