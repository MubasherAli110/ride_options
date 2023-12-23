import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoneRidePage extends StatefulWidget {
  const DoneRidePage({super.key});

  @override
  State<DoneRidePage> createState() => _DoneRidePageState();
}

class _DoneRidePageState extends State<DoneRidePage> {
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
                  readOnly: true,
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
                    hintText: "Rawalpindi",
                    hintStyle: TextStyle(color: Colors.black),
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
                  readOnly: true,
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
                    hintText: "Islamabad",
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Stack(children: [
            SizedBox(
              height: 610.h,
              child: Image.asset(
                "assets/images/getridemap.png",
                width: double.maxFinite,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                bottom: 0,
                child: SingleChildScrollView(
                  child: Container(
                    width: 360,
                    height: 150.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.r),
                          topRight: Radius.circular(50.r)),
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
                      SizedBox(height: 10.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            Column(
                              children: [
                                SizedBox(
                                  height: 80.sp,
                                  width: 80.sp,
                                  child: CircleAvatar(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/bike.png",
                                          height: 50.h,
                                          width: 50.w,
                                        ),
                                        const Text("Bike")
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                const Text(
                                  "PKR 100",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(width: 10.w),
///////

                            Column(
                              children: [
                                SizedBox(
                                  height: 80.sp,
                                  width: 80.sp,
                                  child: CircleAvatar(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/Rickshaw.png",
                                          height: 50.h,
                                          width: 50.w,
                                        ),
                                        const Text("Rickshaw",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                const Text(
                                  "PKR 150",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(width: 10.w),

///////

                            Column(
                              children: [
                                SizedBox(
                                  height: 80.sp,
                                  width: 80.sp,
                                  child: CircleAvatar(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/Mini.png",
                                          height: 50.h,
                                          width: 50.w,
                                        ),
                                        const Text("Mini")
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                const Text(
                                  "PKR 200",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(width: 10.w),

////////

                            Column(
                              children: [
                                SizedBox(
                                  height: 80.sp,
                                  width: 80.sp,
                                  child: CircleAvatar(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/RideGo.png",
                                          height: 50.h,
                                          width: 50.w,
                                        ),
                                        const Text("RideGo")
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                const Text(
                                  "PKR 380",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(width: 10.w),

/////

                            Column(
                              children: [
                                SizedBox(
                                  height: 80.sp,
                                  width: 80.sp,
                                  child: CircleAvatar(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/car.png",
                                          height: 50.h,
                                          width: 50.w,
                                        ),
                                        const Text("Ride X")
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                const Text(
                                  "PKR 400",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ))
          ]),
        ]),
      ),
    );
  }
}
