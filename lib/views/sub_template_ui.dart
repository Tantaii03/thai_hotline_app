import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/hotline_model.dart';

class SubHomeUI extends StatelessWidget {
  final String categoryTitle;
  final List<Hotline> hotlineList;
  final Color themeColor;
  final String bannerImage;
  final VoidCallback? onInfoPressed;

  const SubHomeUI({
    super.key,
    required this.categoryTitle,
    required this.hotlineList,
    required this.themeColor,
    required this.bannerImage,
    this.onInfoPressed,
  });

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'สายด่วน THAILAND',
          style: GoogleFonts.kanit(
            color: Colors.white.withAlpha(100),
            fontSize: 16,
            letterSpacing: 2,
          ),
        ),
        actions: [
          IconButton(
            onPressed: onInfoPressed,
            icon: Icon(Icons.info_outline, color: Colors.white.withAlpha(150)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 10),
            // หัวข้อหมวดหมู่พร้อมเงาเรืองแสงตามธีม
            Text(
              categoryTitle,
              style: GoogleFonts.kanit(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(color: themeColor.withAlpha(200), blurRadius: 25)
                ],
              ),
            ),
            const SizedBox(height: 25),
            // Banner ด้านบน
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: themeColor.withAlpha(80),
                    blurRadius: 25,
                    spreadRadius: -5,
                    offset: const Offset(0, 10),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(bannerImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // รายการสายด่วน
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: hotlineList.length,
              itemBuilder: (context, index) {
                final item = hotlineList[index];
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E293B),
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.white.withAlpha(20)),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    leading: _buildLogo(item, themeColor),
                    title: Text(
                      item.name,
                      style:
                          GoogleFonts.kanit(color: Colors.white, fontSize: 16),
                    ),
                    subtitle: Text(
                      item.number,
                      style: GoogleFonts.kanit(
                        color: themeColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ✨ ปุ่มโทรแบบใหม่ (สวยสมบูรณ์แบบ)
                    trailing: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: themeColor.withAlpha(100),
                            blurRadius: 15,
                            spreadRadius: -2,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: themeColor.withAlpha(40),
                        child: IconButton(
                          icon: Icon(Icons.call, color: themeColor, size: 26),
                          onPressed: () => _makePhoneCall(item.number),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }

  // Widget สร้างโลโก้พร้อม Effect เรืองแสง
  Widget _buildLogo(Hotline item, Color themeColor) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(color: themeColor.withAlpha(150), blurRadius: 20)
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Image.asset(item.imagePath, fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }
}
