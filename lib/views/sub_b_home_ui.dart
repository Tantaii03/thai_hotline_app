import 'package:flutter/material.dart';
import '../data/hotline_data.dart';
import 'sub_template_ui.dart';

class SubBHomeUI extends StatelessWidget {
  const SubBHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SubHomeUI(
      categoryTitle: "อุบัติเหตุ-เหตุฉุกเฉิน",
      hotlineList: HotlineData.emergencyHotlines,
      themeColor: const Color(0xFFD32F2F),
      bannerImage: "assets/images/subB_pic.png",
    );
  }
}
