import 'package:flutter/material.dart';
import '../data/hotline_data.dart';
import 'sub_template_ui.dart';

class SubCHomeUI extends StatelessWidget {
  const SubCHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SubHomeUI(
      categoryTitle: "ธนาคาร",
      hotlineList: HotlineData.bankHotlines,
      themeColor: const Color(0xFF2E7D32),
      bannerImage: "assets/images/subC_pic.png",
    );
  }
}
