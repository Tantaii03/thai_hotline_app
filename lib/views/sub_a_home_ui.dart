import 'package:flutter/material.dart';
import '../widgets/hotline_card.dart';

class SubAHomeUI extends StatelessWidget {
  const SubAHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("การเดินทาง")),
      body: ListView(
        children: const [
          HotlineCard(name: "กรมทางหลวงชนบท", phone: "1146"),
          HotlineCard(name: "ตำรวจท่องเที่ยว", phone: "1155"),
          HotlineCard(name: "ตำรวจทางหลวง", phone: "1193"),
          HotlineCard(name: "ข้อมูลจราจร", phone: "1197"),
          HotlineCard(name: "ขสมก.", phone: "1348"),
          HotlineCard(name: "บขส.", phone: "1490"),
          HotlineCard(name: "ทางด่วน", phone: "1543"),
          HotlineCard(name: "กรมทางหลวง", phone: "1586"),
          HotlineCard(name: "การรถไฟแห่งประเทศไทย", phone: "1690"),
        ],
      ),
    );
  }
}
