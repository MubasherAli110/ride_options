import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_options/pages/chats_page.dart';
import 'package:ride_options/pages/get_ride.dart';
import 'package:ride_options/widgets/home_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _selectedIndex = 0;
  final List<String> imageUrls = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const HomeDrawer(),
        appBar: AppBar(
          backgroundColor: const Color(0xff290D4A),
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
        ),
        body:
            _getBody(), // Create a method to return the body based on the selected tab
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'Chat',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: const Color(0xff290D4A),
          selectedItemColor: Colors.yellow,
          onTap: (int index) {
            // Handle navigation to different screens based on the index
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget _getBody() {
    switch (_selectedIndex) {
      case 0:
        return SingleChildScrollView(
          child: Column(
            children: [
              // IconButton(
              //     onPressed: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => const HomeDrawer(),
              //       ));
              //     },
              //     icon: const Icon(Icons.abc)),
              CarouselSlider(
                items: imageUrls.map((url) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.asset(
                        url,
                        fit: BoxFit.cover,
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageUrls.map((url) {
                  int index = imageUrls.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Colors.yellow
                          : const Color(0xff290D4A),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const GetRidePage(),
                            ));
                          },
                          child: Container(
                            height: 100.sp,
                            width: 160.sp,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r)),
                                color: Colors.yellow),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/images/bike.png",
                                      height: 60.h,
                                      width: 60.w,
                                    ),
                                    Image.asset(
                                      "assets/images/car.png",
                                      height: 70.h,
                                      width: 70.w,
                                    ),
                                  ],
                                ),
                                Text(
                                  "Get Ride",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100.sp,
                          width: 160.sp,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.r)),
                              color: Colors.yellow),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/box.png",
                                      height: 50.h,
                                      width: 50.w,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Options",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                        width: double.infinity,
                        height: 190.h,
                        child: Image.asset(
                          "assets/images/map.png",
                          fit: BoxFit.cover,
                        )),
                    SizedBox(height: 10.h),
                    Container(
                      height: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r)),
                        color: const Color(0xff290D4A),
                      ),
                      child: Column(children: [
                        const Divider(
                          color: Colors.white,
                          indent: 120,
                          endIndent: 120,
                          thickness: 3,
                        ),
                        const Text(
                          "Find Location ",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          height: 60.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white)),
                          child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Enter location",
                                hintStyle: TextStyle(color: Colors.white12),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        );

      default:
        return Column(
          children: [
            Stack(children: [
              Image.asset(
                "assets/images/Background2.png",
              ),
              Positioned(
                  top: 30.h,
                  left: 50.w,
                  child: Text(
                    "Chats",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold),
                  )),
            ]),
            SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
//////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////

                      InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ChatsPage(),
                          ),
                        ),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Muhammad Ali",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "How Are You",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      const Divider(
                        color: Colors.black12,
                        indent: 65,
                      ),
                      SizedBox(height: 10.h),
//////

                      Row(
                        children: [
                          SizedBox(
                            height: 50.h,
                            width: 50.w,
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                "assets/images/boy2.png",
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mubasher Ali",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Hello",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),

////

                      SizedBox(height: 10.h),
                      const Divider(
                        color: Colors.black12,
                        indent: 65,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          SizedBox(
                            height: 50.h,
                            width: 50.w,
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                "assets/images/boy1.png",
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Younas",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Hi",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      const Divider(
                        color: Colors.black12,
                        indent: 65,
                      ),
                      SizedBox(height: 10.h),
                    ],
                  )),
            )
          ],
        );
    }
  }
}
