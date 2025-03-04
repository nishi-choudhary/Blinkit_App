import 'package:blinkit_clone1/repository/widgets/uihelper.dart';
import 'package:blinkit_clone1/screens/bottomnav/bottomnavscreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
          SizedBox(
            height: 30,
          ),
          UiHelper.CustomImage(img: "image 10.png"),
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomText(
              text: "India's last minute app",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold"),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(),
            child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(
                        text: "Nishi",
                        color: Color(0XFF000000),
                        fontweight: FontWeight.w500,
                        fontsize: 14),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text: "8810XXXX",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bottomnavscreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFFE23744),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                  text: "Login with",
                                  color: Color(0XFFFFFFFF),
                                  fontweight: FontWeight.bold,
                                  fontsize: 14,
                                  fontfamily: "bold"),
                              SizedBox(
                                width: 5,
                              ),
                              UiHelper.CustomImage(img: "image 9.png"),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    UiHelper.CustomText(
                        text:
                            "Access your saved address from Zomato automatically",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10),
                    SizedBox(
                      height: 15,
                    ),
                    UiHelper.CustomText(
                        text: "or login with phone number",
                        color: Color(0XFF269237),
                        fontweight: FontWeight.normal,
                        fontsize: 14),
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}
