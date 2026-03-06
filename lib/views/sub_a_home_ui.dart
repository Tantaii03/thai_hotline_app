import 'package:flutter/material.dart';
import 'sub_template_ui.dart';
import '../data/hotline_data.dart';

class SubAHomeUI extends StatelessWidget {
  const SubAHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SubHomeUI(
      categoryTitle: "การเดินทาง",
      hotlineList: HotlineData.travelHotlines,
      themeColor: const Color(0xFF1A237E),
      bannerImage: "assets/images/subA_pic.png",
    );
  }
}
