import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_options/pages/contact_page.dart';
import 'package:ride_options/pages/trips_page.dart';
import 'package:ride_options/pages/wallet_page.dart';
import 'package:ride_options/pages/welcome_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 20,
      child: ListView(
        children: [
          Padding(
            padding: REdgeInsets.all(16.0),
            //
            child: Column(
              children: [
                SizedBox(
                  height: 80.h,
                  width: 80.w,
                  child: const CircleAvatar(
                      backgroundColor: Colors.yellow,
                      child: Icon(size: 60, Icons.person_outline)),
                ),
                Text("Muhammad Ali",
                    style: TextStyle(
                      fontSize: 20.sp,
                    )),
                Text(
                  "+92 00000000000",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff9EA1B1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          ListTile(
            leading: const Icon(
              Icons.emoji_transportation_outlined,
              color: Color(0xff290D4A),
            ),
            title: Text("Trips",
                style: TextStyle(
                  fontSize: 16.sp,
                )),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TripsPage(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.wallet,
              color: Color(0xff290D4A),
            ),
            title: Text("Wallet",
                style: TextStyle(
                  fontSize: 16.sp,
                )),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const WalletPage(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.email,
              color: Color(0xff290D4A),
            ),
            title: Text("Contact Us",
                style: TextStyle(
                  fontSize: 16.sp,
                )),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ContactPage(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.quiz_sharp,
              color: Color(0xff290D4A),
            ),
            title: Text("Helps & FAQs",
                style: TextStyle(
                  fontSize: 16.sp,
                )),
            //     onTap: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const ContactPage(),
            //   ),
            // ),
          ),
          ListTile(
            leading: const Icon(
              Icons.policy,
              color: Color(0xff290D4A),
            ),
            title: Text("Policy",
                style: TextStyle(
                  fontSize: 16.sp,
                )),
            //     onTap: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const ContactPage(),
            //   ),
            // ),
          ),
          SizedBox(height: 100.h),
          Container(
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: ListTile(
              iconColor: Colors.white,
              leading: const Icon(
                Icons.power_settings_new_rounded,
                color: Color(0xff290D4A),
              ),
              title: Text("Log Out",
                  style: TextStyle(
                      fontSize: 16.sp, color: const Color(0xff290D4A))),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WelcomePage(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
