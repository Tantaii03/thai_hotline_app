import 'package:flutter/material.dart';

class Hotline {
  final String name; // ชื่อหน่วยงาน
  final String number; // เบอร์โทร
  final String imagePath; // เส้นทางรูปภาพใน assets
  final Color themeColor; // สีประจำหมวดหมู่

  Hotline({
    required this.name,
    required this.number,
    required this.imagePath,
    required this.themeColor,
  });
}
