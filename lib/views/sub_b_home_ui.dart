import 'package:flutter/material.dart';
import 'sub_template_ui.dart';
import '../data/hotline_data.dart';

class SubBHomeUI extends StatelessWidget {
  // แก้ตรงนี้ให้เป็น SubB
  const SubBHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SubHomeUI(
      categoryTitle: "อุบัติเหตุ",
      hotlineList: HotlineData.emergencyHotlines,
      themeColor: Colors.redAccent, // หรือสีที่คุณต้องการ
      bannerImage: "assets/images/subB_pic.png",
      onInfoPressed: () => Navigator.pushNamed(context, '/about'),
    );
  }
}
