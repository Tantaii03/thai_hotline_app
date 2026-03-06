import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // ควบคุมการหมุนของฟันเฟือง
    _controller = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color myMainTextColor = Color(0xFFF97316);
    const Color mySubTextColor = Color(0xFFFDE047);
    const Color myBgColor = Color(0xFF0F172A);

    return Scaffold(
      backgroundColor: myBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'สายด่วน THAILAND',
          style: GoogleFonts.kanit(
            color: const Color(0xffBFB8B8),
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ),
      body: Stack(
        children: [
          // --- 1. Background Icons (ใช้ withAlpha ทั้งหมด) ---

          // ไอคอนไฟ (มุมซ้ายบน)
          _buildBackgroundIcon(Icons.local_fire_department,
              top: 80, left: -20, size: 130, alpha: 15, angle: -0.3),

          // ไอคอนคอมพิวเตอร์ (มุมขวาล่าง)
          _buildBackgroundIcon(Icons.terminal,
              bottom: 50, right: -20, size: 160, alpha: 12, angle: 0.2),

          // ฟันเฟืองหมุน (กลางจอเยื้องขวา)
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return _buildBackgroundIcon(
                Icons.settings,
                top: 300,
                right: -50,
                size: 220,
                alpha: 10,
                angle: _controller.value * 2 * math.pi,
              );
            },
          ),

          // --- 2. Main Content ---
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    'ผู้จัดทำ',
                    style: GoogleFonts.kanit(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                      shadows: const [
                        Shadow(offset: Offset(2, 2), color: Color(0xFFC2410C)),
                      ],
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // โลโก้มหาวิทยาลัย
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(15),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(25), blurRadius: 15),
                        BoxShadow(
                            color: myMainTextColor.withAlpha(20),
                            blurRadius: 25,
                            spreadRadius: -2),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/Logosau.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                          Icons.image,
                          size: 50,
                          color: Colors.white24),
                    ),
                  ),

                  const SizedBox(height: 15),
                  Text(
                    'มหาวิทยาลัยเอเชียอาคเนย์',
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Colors.white.withAlpha(180),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // รูปโปรไฟล์
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red.withAlpha(80),
                            blurRadius: 35,
                            spreadRadius: 2),
                      ],
                    ),
                    child: const CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.white10,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // ข้อมูลนักศึกษา
                  _buildSimpleInfo(
                      'รหัสนักศึกษา', '6619410001', mySubTextColor),
                  _buildSimpleInfo('ชื่อ-สกุลนักศึกษา',
                      'นาย ธัชชัย ขุนศรีเจริญ', Colors.white),
                  _buildSimpleInfo(
                      'อีเมล์นักศึกษา', 's6619410001@sau.ac.th', Colors.white),
                  _buildSimpleInfo(
                      'ชื่อสาขาวิชา', 'วิศวกรรมคอมพิวเตอร์', myMainTextColor),
                  _buildSimpleInfo(
                      'ชื่อคณะ', 'คณะวิศวกรรมศาสตร์', myMainTextColor),

                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //อันนี้เอาไว้สร้างไอคอมพื้นหลังที่หมุนได้ด้วย
  Widget _buildBackgroundIcon(IconData icon,
      {double? top,
      double? left,
      double? right,
      double? bottom,
      required double size,
      required int alpha,
      required double angle}) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Transform.rotate(
        angle: angle,
        child: Icon(
          icon,
          size: size,
          color: Colors.white.withAlpha(alpha),
        ),
      ),
    );
  }

  Widget _buildSimpleInfo(String label, String value, Color valueColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text(
            label,
            style: GoogleFonts.kanit(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: GoogleFonts.kanit(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
