import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/hotline_model.dart';

class SubHomeUI extends StatelessWidget {
  final String categoryTitle;
  final List<Hotline> hotlineList;
  final Color themeColor;
  final String bannerImage;

  const SubHomeUI({
    super.key,
    required this.categoryTitle,
    required this.hotlineList,
    required this.themeColor,
    required this.bannerImage,
  });

  // ฟังก์ชันสำหรับกดโทรออก
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A), // พื้นหลังสีมืดขับสีหมอกให้เด่น
      appBar: AppBar(
        automaticallyImplyLeading: false, // ปิดปุ่มย้อนกลับแน่นอน
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
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 10),
            // หัวข้อหมวดหมู่พร้อมเงาฟุ้งด้านหลังตัวอักษร
            Text(
              categoryTitle,
              style: GoogleFonts.kanit(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(color: themeColor.withAlpha(200), blurRadius: 20),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Banner ด้านบนพร้อมเงาสีตามธีม
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

            // รายการเบอร์โทรแบบ Card เลเยอร์
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: hotlineList.length,
              itemBuilder: (context, index) {
                final item = hotlineList[index];

                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E293B), // สีการ์ดเข้ม
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.white.withAlpha(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(150),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    // --- ส่วนหมอกสีฟุ้งหลังโลโก้ ---
                    leading: SizedBox(
                      width: 65,
                      height: 65,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // ชั้นหมอก (Glow)
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: themeColor.withAlpha(220),
                                  blurRadius: 25,
                                  spreadRadius: 10,
                                ),
                              ],
                            ),
                          ),
                          // ชั้นรูปโลโก้
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: ClipOval(
                                child: Image.asset(
                                  item.imagePath,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Icon(Icons.contact_phone,
                                          color: themeColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      item.name,
                      style: GoogleFonts.kanit(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // แก้ไข EdgeInsets.only ตามที่แจ้ง Error
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        item.number,
                        style: GoogleFonts.kanit(
                          color: themeColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    // ปุ่มโทรดีไซน์วงกลมมีเลเยอร์
                    trailing: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [themeColor, themeColor.withAlpha(150)],
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: themeColor.withAlpha(100), blurRadius: 8),
                        ],
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.call,
                            color: Colors.white, size: 26),
                        onPressed: () => _makePhoneCall(item.number),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 120), // เผื่อที่ให้ Bottom Nav
          ],
        ),
      ),
    );
  }
}
