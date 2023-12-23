import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_options/pages/home_page.dart';
import 'package:ride_options/pages/tipe.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  bool selected = false;
  Color selectedColor = Colors.blue;
  Color unselectedColor = Colors.grey;
  String? gender;

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
              top: 45.h,
              left: 20.w,
              child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Row(
                    children: [
                      const Icon(Icons.arrow_back),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      )
                    ],
                  )),
            ),
            Positioned(
              left: 90,
              top: 90,
              child: SizedBox(
                height: 110.h,
                width: 110.w,
                child: const InkWell(
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Icon(size: 80, Icons.camera_enhance),
                  ),
                ),
              ),
            )
          ]),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GenderContainer(
                      gender: "Customer",
                    ),
                    GenderContainer(
                      gender: "Driver",
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                const Text("Enter your First Name"),
                SizedBox(height: 10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xff290D4A))),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Muhammad",
                            hintStyle: TextStyle(color: Colors.black12),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const Text("Enter your Last Name"),
                    SizedBox(height: 10.h),
                    Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xff290D4A))),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Ali ",
                            hintStyle: TextStyle(color: Colors.black12),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const Text("Enter your Email"),
                    SizedBox(height: 10.h),
                    Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xff290D4A))),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "muhammadali@gmail.com",
                            hintStyle: TextStyle(color: Colors.black12),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.h),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            backgroundColor: Colors.yellow),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomePage(),
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
