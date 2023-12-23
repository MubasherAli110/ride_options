import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
              top: 130.h,
              left: 50.w,
              child: Text(
                "Contact Us",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold),
              )),
        ]),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Enter your Name"),
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
                          hintText: "Muhammad Ali",
                          hintStyle: TextStyle(color: Colors.black12),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Text("Enter your Contact Number"),
                  SizedBox(height: 10.h),
                  Container(
                    height: 60.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xff290D4A))),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "000000000000",
                          hintStyle: TextStyle(color: Colors.black12),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
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
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Text("Enter your Feedback"),
                  SizedBox(height: 10.h),
                  Container(
                    height: 150.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xff290D4A))),
                    child: const TextField(
                      maxLines: 3,
                      minLines: 2,
                      decoration: InputDecoration(
                          hintText: "How can I help you?",
                          hintStyle: TextStyle(color: Colors.black12),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                  
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          backgroundColor: Colors.yellow),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => ,
                        // ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Send",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          const Icon(Icons.arrow_forward)
                        ],
                      ))),
            ],
          ),
        )
      ]),
    ));
  }
}
