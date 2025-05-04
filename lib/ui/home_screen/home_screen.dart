import 'package:evently/core/constatnts.dart/app_assets.dart';
import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/constatnts.dart/app_styles.dart';
import 'package:evently/core/widgets/event_tap.dart';
import 'package:evently/models/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Image.asset(AppAssets.sunIcon)),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.lightWhite),
                  child: Text(
                    "EN",
                    style: AppStyles.inter14PrimaryBold,
                  ),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: AppColors.primaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back \u2728",
              style: AppStyles.inter14White,
            ),
            Text(
              "Ayman Hegazy",
              style: AppStyles.inter24WhiteBold,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100.h,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.locationIcon,
                        width: 26,
                        height: 22,
                      ),
                      Text(
                        "Cairo , Egypt",
                        style: AppStyles.inter14White,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  DefaultTabController(
                      length: Event.eventTypes.length,
                      initialIndex: 0,
                      child: TabBar(
                          labelPadding: EdgeInsets.symmetric(horizontal: 8),
                          dividerColor: AppColors.transparent,
                          indicatorColor: AppColors.transparent,
                          isScrollable: true,
                          tabAlignment: TabAlignment.start,
                          onTap: (value) {_current_index = value;
                          setState(() {
                            
                          });
                          } ,
                          tabs: Event.eventTypes.sublist(1).asMap().entries.map((entry) {
                            final e = entry.value;
                            final index = entry.key;
                            
                             return EventTap(
                              image: e["icon"]!,
                              text: e["type"]!,
                              isSelected: (index == _current_index),
                              
                            );
                          }).toList()))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
