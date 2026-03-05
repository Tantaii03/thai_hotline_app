import 'package:flutter/material.dart';
import '../widgets/hotline_card.dart';

class SubDHomeUI extends StatelessWidget {
  const SubDHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("โทรศัพท์")),
      body: ListView(
        children: const [
          HotlineCard(name: "ไฟฟ้านครหลวง", phone: "1130"),
          HotlineCard(name: "ไฟฟ้าส่วนภูมิภาค", phone: "1129"),
          HotlineCard(name: "ไฟฟ้าฝ่ายผลิต", phone: "1416"),
          HotlineCard(name: "การประปานครหลวง", phone: "1125"),
          HotlineCard(name: "การประปาส่วนภูมิภาค", phone: "1662"),
          HotlineCard(name: "TRUE", phone: "1242"),
          HotlineCard(name: "DTAC", phone: "1678"),
          HotlineCard(name: "AIS", phone: "1175"),
        ],
      ),
    );
  }
}
