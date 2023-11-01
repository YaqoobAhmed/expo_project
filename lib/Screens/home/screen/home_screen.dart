import 'package:expo_project/Screens/Appoinment/Screens/appoinmentScreen.dart';
import 'package:expo_project/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(36)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            size: 30,
                            color: whiteColor,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage("assets/images/banner.jpg"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(color: whiteColor, fontSize: 18),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            "Lets find ",
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 40),
                          ),
                          Text(
                            "your top doctor!",
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 40),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Text(
                            "Doctor's Inn",
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 40),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: MediaQuery.of(context).size.height * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(vertical: 10),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         height: 70,
                        //         width: 70,
                        //         color: Colors.amber,
                        //       ),
                        //       SizedBox(
                        //         width: MediaQuery.of(context).size.width * 0.05,
                        //       ),
                        //       Container(
                        //         height: 70,
                        //         width: 70,
                        //         color: Colors.amber,
                        //       ),
                        //       SizedBox(
                        //         width: MediaQuery.of(context).size.width * 0.05,
                        //       ),
                        //       Container(
                        //         height: 70,
                        //         width: 70,
                        //         color: Colors.amber,
                        //       ),
                        //       SizedBox(
                        //         width: MediaQuery.of(context).size.width * 0.05,
                        //       ),
                        //       Container(
                        //         height: 70,
                        //         width: 70,
                        //         color: Colors.amber,
                        //       )
                        //     ],
                        //   ),
                        // )
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.black12),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150,
                                    child: Image.asset(
                                      "assets/images/banner.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dr. Maria Waston",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "Heart Surgen, London Eng",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 40),
                                          child: GestureDetector(
                                              onTap: () => Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        AppoinmentScreen(),
                                                  )),
                                              child: Container(
                                                child: Center(
                                                    child: Text(
                                                  "Appoinment",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                height: 50,
                                                width: 120,
                                                decoration: BoxDecoration(
                                                    color: textFieldColor),
                                              )),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        )
                      ],
                    )),
              ))
        ],
      ),
    );
  }
}
