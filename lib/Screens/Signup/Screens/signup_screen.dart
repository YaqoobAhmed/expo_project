import 'package:expo_project/Screens/Login/Screens/login_screen.dart';
import 'package:expo_project/Screens/Login/widgets/login_button.dart';
import 'package:expo_project/Screens/home/screen/home_screen.dart';
import 'package:expo_project/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailcontroller = TextEditingController();

  TextEditingController passcontroller = TextEditingController();

  registeruser() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passcontroller.text,
      );
      Navigator.push(
          context as BuildContext,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

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
                  child: Image.asset("assets/images/signup image.png")),
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
                        "Registration",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            label: Text("Name"),
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: "Yaqoob Ahmed",
                            suffixIcon: Icon(
                              Icons.person,
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
                          controller: emailcontroller,
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
                          controller: passcontroller,
                          decoration: InputDecoration(
                            label: Text("Password"),
                            labelStyle: TextStyle(color: Colors.black),
                            suffixIcon: Icon(
                              Icons.password,
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
                        height: MediaQuery.of(context).size.height * 0.16,
                      ),
                      GestureDetector(
                        onTap: () {
                          registeruser();
                        },
                        child: LoginButton(
                          text: "SignUp",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an Account ?"),
                            GestureDetector(
                              onTap: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  )),
                              child: Text(
                                " Login",
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
