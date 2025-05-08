import 'package:evently/core/constatnts.dart/app_assets.dart';
import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:evently/ui/favourite_screen/favourite.dart';
import 'package:evently/ui/home_screen/home_screen.dart';
import 'package:evently/ui/map_screen/map_screen.dart';
import 'package:evently/ui/profile_screen.dart/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;
  List<Widget> taps = [
    HomeScreen(),
    MapScreen(),
    Favourite(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        clipBehavior: Clip.antiAlias,
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: AppColors.primaryColor,
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.primaryColor,
        shape:  CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildBottomBarItems(
                selectedIcon: AppAssets.homeFillSvg,
                icon: AppAssets.home,
                index: 0,
                text: "Home"),
            buildBottomBarItems(
                selectedIcon: AppAssets.locationFill,
                icon: AppAssets.location,
                index: 1,
                text: "Map"),
            SizedBox(
              width: 18.w,
            ),
            buildBottomBarItems(
                selectedIcon: AppAssets.loveFill,
                icon: AppAssets.love,
                index: 2,
                text: "Love"),
            buildBottomBarItems(
                selectedIcon: AppAssets.profileFill,
                icon: AppAssets.profile,
                index: 3,
                text: "Profile"),
          ],
        ),
      ),
      body: taps[_currentIndex],
    );
  }

  Widget buildBottomBarItems(
      {required String icon,
      required String selectedIcon,
      required text,
      required int index}) {
    return InkWell(
      splashColor: AppColors.transparent,
      onTap: () {
        _currentIndex = index;
        setState(() {});
      },
      child: Column(children: [
        SvgPicture.asset(_currentIndex == index ? selectedIcon : icon,),
       
        Expanded(
          child: Text(
            text,
            style: AppStyles.inter14White,
          ),
        )
      ]),
    );
  }
}
