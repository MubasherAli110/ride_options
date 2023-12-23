import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                "Trips",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold),
              ))
        ]),
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("No Record"),
            ],
          ),
        )
      ]),
    );
  }
}
