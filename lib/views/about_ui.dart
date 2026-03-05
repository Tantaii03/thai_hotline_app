import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ผู้จัดทำ")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100),
            SizedBox(height: 20),
            Text(
              "Thatchai Khunsricharoen",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 10),
            Text("Computer Engineering Student")
          ],
        ),
      ),
    );
  }
}
