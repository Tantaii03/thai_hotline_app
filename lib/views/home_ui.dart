import 'package:flutter/material.dart';
import 'sub_a_home_ui.dart';
import 'sub_b_home_ui.dart';
import 'sub_c_home_ui.dart';
import 'sub_d_home_ui.dart';
import 'about_ui.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  Widget menuCard(
      BuildContext context, String title, IconData icon, Widget page) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Icon(icon, size: 35, color: Colors.blue),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thailand Hotline"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            menuCard(context, "การเดินทาง", Icons.directions_car,
                const SubAHomeUI()),
            menuCard(context, "เหตุฉุกเฉิน", Icons.warning, const SubBHomeUI()),
            menuCard(
                context, "ธนาคาร", Icons.account_balance, const SubCHomeUI()),
            menuCard(context, "โทรศัพท์", Icons.phone, const SubDHomeUI()),
            menuCard(context, "ผู้จัดทำ", Icons.person, const AboutUI()),
          ],
        ),
      ),
    );
  }
}
