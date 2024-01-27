import 'package:flutter/material.dart';
import 'package:master_plan/index.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_setting,
      child: TextWidget(menu_setting),
    );
  }
}
