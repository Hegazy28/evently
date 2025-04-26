import 'package:evently/core/constatnts.dart/app_assets.dart';
import 'package:evently/core/constatnts.dart/app_colors.dart';
import 'package:evently/core/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _switchValue = false;


  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Switch(
      
      value: _switchValue,
      onChanged: (value) {
        setState(() {
          _switchValue = value;
          settingsProvider.toggleTheme();
        });

      },
      trackColor: WidgetStateProperty.all(Colors.transparent),
      trackOutlineColor: WidgetStateProperty.all(AppColors.primaryColor),
      trackOutlineWidth: WidgetStateProperty.all(2),
      thumbColor: WidgetStateProperty.all(Colors.transparent),
      activeThumbImage: const AssetImage(AppAssets.egypt),
      inactiveThumbImage: const AssetImage(AppAssets.us),
    );
  }

  
}