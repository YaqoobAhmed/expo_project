import 'package:expo_project/Screens/Login/widgets/login_button.dart';
import 'package:expo_project/Screens/Signup/Screens/signup_screen.dart';
import 'package:expo_project/Screens/home/screen/home_screen.dart';
import 'package:expo_project/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 30),
                  height: 350,
                  child: Image.asset("assets/images/login image.png")),
            ),
            Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            label: Text("Email"),
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: "ayay@gmail.com",
                            suffixIcon: Icon(
                              Icons.email,
                              color: iconColor,
                              size: 28,
                            ),
                            filled: true,
                            fillColor: textFieldColor,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: textFieldBorderColor,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                        label: Text("Password"),
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.email,
                          color: iconColor,
                          size: 28,
                        ),
                        filled: true,
                        fillColor: textFieldColor,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: textFieldBorderColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.26,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            )),
                        child: LoginButton(
                          text: "Login",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Want to create an Account ?"),
                            GestureDetector(
                              onTap: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupScreen(),
                                  )),
                              child: Text(
                                " SignUp",
                                style: TextStyle(
                                    color: purpleColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
