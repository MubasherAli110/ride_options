import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_options/pages/done_ride_page.dart';

class GetRidePage extends StatefulWidget {
  const GetRidePage({super.key});

  @override
  State<GetRidePage> createState() => _GetRidePageState();
}

class _GetRidePageState extends State<GetRidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                )),
          ),
          const Text("Get Find"),
          SizedBox(height: 10.h),
          Row(
            children: [
              const SizedBox(width: 10),
              const Icon(
                Icons.location_on,
                color: Color(0xff290D4A),
              ),
              SizedBox(width: 10.h),
              SizedBox(
                height: 50.h,
                width: 300.w,
                child: const TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff290D4A)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff290D4A)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    hintText: "From To?",
                    hintStyle: TextStyle(color: Colors.black12),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              const SizedBox(width: 10),
              const Icon(
                Icons.location_on,
                color: Color(0xff290D4A),
              ),
              SizedBox(width: 10.h),
              SizedBox(
                height: 50.h,
                width: 300.w,
                child: const TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff290D4A)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff290D4A)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    hintText: "Where To?",
                    hintStyle: TextStyle(color: Colors.black12),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Stack(children: [
            SizedBox(
              height: 580.h,
              child: Image.asset(
                "assets/images/map.png",
                width: double.maxFinite,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: 360,
                  height: 120.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r)),
                    color: const Color(0xff290D4A),
                  ),
                  child: Column(children: [
                    SizedBox(height: 5.h),
                    const Divider(
                      color: Colors.white,
                      indent: 120,
                      endIndent: 120,
                      thickness: 3,
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                        width: 200.w,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                backgroundColor: Colors.yellow),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DoneRidePage(),
                              ));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Next",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                                const Icon(Icons.arrow_forward)
                              ],
                            ))),
                  ]),
                ))
          ]),
        ]),
      ),
    );
  }
}
