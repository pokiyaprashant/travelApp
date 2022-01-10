import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/afterloginpage.dart';
import 'package:travel_app/widgets/app_text_button.dart';

class OnBoard3 extends StatefulWidget {
  const OnBoard3({Key? key}) : super(key: key);

  @override
  _OnBoard3State createState() => _OnBoard3State();
}

class _OnBoard3State extends State<OnBoard3> {
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
  // String emailError = '';
  // String passwordError = '';
  final _formKey = GlobalKey<FormState>();
  bool check = false;
  double w = 100;
  double h = 200;
  bool _obscureText = true;

  late String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // void initState() {
  //   _emailController.addListener(() {
  //     print(_emailController.text);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width > 600);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: Image.asset('assets/images/Group.png'),
          ),
          Positioned(
            top: 55,
            right: 17,
            child: Image.asset(
              'assets/images/triangle.png',
            ),
          ),
          Positioned(
            top: 65,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome AirFly",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Lets Enjoy",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.8),
                    fontSize: MediaQuery.of(context).size.width > 600 ? 18 : 15,
                  ),
                ),
              ],
            ),
          ),
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextFormField(
                      // controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                .hasMatch(value)) {
                          return 'Valid Email!';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextFormField(
                      // controller: _passwordController,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: _toggle,
                          child: Container(
                            height: 20,
                            width: 20,
                            alignment: Alignment.centerLeft,
                            // color: Colors.amber,
                            child: Text(
                              _obscureText ? "Show" : "Hide",
                            ),
                          ),
                        ),
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                .hasMatch(value)) {
                          return 'Valid Password!';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) => _password = val!,
                      obscureText: _obscureText,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: this.check,
                              onChanged: (val) {
                                setState(() {
                                  this.check = val!;
                                });
                              }),
                          Text(
                            "Remember me",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 35,
                  ),

                  AppTextButton(
                      buttonText: 'Login',
                      onPress: () {
                        // _toggle();
                        if (_formKey.currentState!.validate()) {
                          print('skillqode');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AfterLoginPage()));
                        }
                      })
                  // AppTextButton(
                  //   buttonText: 'asd',
                  //   onPress: () {
                  //     print("Pressed");
                  //   },
                  // ),
                  // AnimatedContainer(
                  //   duration: Duration(milliseconds: 700),
                  //   color: Colors.green,
                  //   height: w,
                  //   width: h,
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
