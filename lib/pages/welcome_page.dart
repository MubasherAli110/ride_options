import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_options/pages/vefification_code_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static const List<String> codes = ['+92', '+62', '+82', '+1'];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Image.asset(
              "assets/images/Background.png",
            ),
            Positioned(
              top: 90.h,
              left: 20.w,
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText(
                    "Welcome to Ride options",
                    speed: const Duration(milliseconds: 200),
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ]),
          SizedBox(height: 40.h),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, nice to meet you!",
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  "Join our Company!",
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60.h),
                const Text("Enter your Mobile Number"),
                SizedBox(height: 10.h),
                Center(
                  child: Container(
                    height: 60.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xff290D4A))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 3),
                          child: DropdownButton(
                              underline: const AbsorbPointer(),
                              icon: const Icon(
                                Icons.expand_more,
                                color: Color(0xff290D4A),
                              ),
                              value: _selectedIndex,
                              items: codes
                                  .map((e) => DropdownMenuItem(
                                        value: codes.indexOf(e),
                                        child: Text(e),
                                      ))
                                  .toList(),
                              onChanged: (v) {
                                _selectedIndex = v ?? 0;
                                setState(() {});
                              }),
                        ),
                        Expanded(
                            child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                              hintText: "00000000000",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "By creating an account, you agree to our",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      TextSpan(
                        text: " Terms of Service ",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "and",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      TextSpan(
                        text: " Privacy Policy",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            backgroundColor: Colors.yellow),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const VefificationCodePage(),
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Continue",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            const Icon(Icons.arrow_forward)
                          ],
                        ))),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
