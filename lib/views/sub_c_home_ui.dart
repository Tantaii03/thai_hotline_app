import 'package:flutter/material.dart';
import '../widgets/hotline_card.dart';

class SubCHomeUI extends StatelessWidget {
  const SubCHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ธนาคาร")),
      body: ListView(
        children: const [
          HotlineCard(name: "Bangkok Bank", phone: "1333"),
          HotlineCard(name: "Government Savings", phone: "1115"),
          HotlineCard(name: "Kasikorn", phone: "028888888"),
          HotlineCard(name: "Krungthai", phone: "021111111"),
          HotlineCard(name: "Krungsri", phone: "1572"),
          HotlineCard(name: "TTB", phone: "1428"),
          HotlineCard(name: "Citibank", phone: "1588"),
          HotlineCard(name: "LH Bank", phone: "1327"),
          HotlineCard(name: "SCB", phone: "027777777"),
        ],
      ),
    );
  }
}
