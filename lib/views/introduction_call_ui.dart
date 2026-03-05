import 'package:flutter/material.dart';

class IntroductionCallUI extends StatelessWidget {
  const IntroductionCallUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hotline"),
      ),
      body: const Center(
        child: Text(
          "เลือกสายด่วนเพื่อโทร",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
