import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
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
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 130.h,
                left: 50.w,
                child: Row(
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/images/boy3.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      "Muhammad Ali",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          const Center(child: Text("Today")),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 70,
                      child: Card(
                        color: Colors.yellow,
                        child: Center(
                          child: Text(
                            "Hi",
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "12:32",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "12:34",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: Card(
                        color: const Color(0xff290D4A),
                        child: Center(
                          child: Text(
                            "How Are You",
                            style:
                                TextStyle(fontSize: 18.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.yellow,
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
