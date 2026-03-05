import 'package:flutter/material.dart';
import '../widgets/hotline_card.dart';

class SubBHomeUI extends StatelessWidget {
  const SubBHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("เหตุฉุกเฉิน")),
      body: ListView(
        children: const [
          HotlineCard(name: "เหตุด่วนเหตุร้าย", phone: "191"),
          HotlineCard(name: "แจ้งไฟไหม้", phone: "199"),
          HotlineCard(name: "รถหาย", phone: "1192"),
          HotlineCard(name: "อุบัติเหตุทางน้ำ", phone: "1196"),
          HotlineCard(name: "แจ้งคนหาย", phone: "1300"),
          HotlineCard(name: "ศูนย์ปลอดภัยคมนาคม", phone: "1356"),
          HotlineCard(name: "หน่วยแพทย์กู้ชีพ", phone: "1554"),
          HotlineCard(name: "ศูนย์เอราวัณ", phone: "1646"),
          HotlineCard(name: "เจ็บป่วยฉุกเฉิน", phone: "1669"),
        ],
      ),
    );
  }
}
