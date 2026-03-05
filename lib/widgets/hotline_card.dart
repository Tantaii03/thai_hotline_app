import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotlineCard extends StatelessWidget {
  final String name;
  final String phone;

  const HotlineCard({super.key, required this.name, required this.phone});

  callNumber() async {
    final Uri uri = Uri.parse("tel:$phone");

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(name),
        subtitle: Text(phone),
        trailing: IconButton(
          icon: const Icon(Icons.call, color: Colors.green),
          onPressed: callNumber,
        ),
      ),
    );
  }
}
