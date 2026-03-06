import 'package:flutter/material.dart';
import '../data/hotline_data.dart';
import 'sub_template_ui.dart';

class SubDHomeUI extends StatelessWidget {
  const SubDHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SubHomeUI(
      categoryTitle: "สาธารณูปโภค",
      hotlineList: HotlineData.utilityHotlines,
      themeColor: const Color(0xFFFF8F00),
      bannerImage: "assets/images/subD_pic.png",
    );
  }
}
