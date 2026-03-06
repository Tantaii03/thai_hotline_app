import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    // 🎨 ดึงโค้ดสีจาก SplashScreen มาใช้
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
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
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
                    Shadow(
                      offset: Offset(2, 2), // ระยะห่าง ให้มีความบาลานซ์
                      color: Color(0xFFC2410C), // สีส้มเข้ม (Shadow Layer)
                    ),
                  ],
                  color: Colors
                      .white, // สีหลักของตัวอักษรเป็นสีขาวเพื่อให้เด่นบนพื้นเข้ม
                ),
              ),

              const SizedBox(height: 30),

              // --- 2. โลโก้มหาวิทยาลัย (เพิ่มความฟุ้งที่บาลานซ์กับโปรไฟล์) ---
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(15),
                  borderRadius: BorderRadius.circular(12),
                  // เพิ่ม Shadows เพื่อสร้างความฟุ้ง (Glow) รอบกรอบโลโก้
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withAlpha(30), // ฟุ้งสีขาวจางๆ
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: myMainTextColor.withAlpha(
                          20), // เพิ่มโทนส้มจางๆ เข้าไปเพื่อให้เข้าคู่กับโปรไฟล์
                      blurRadius: 25,
                      spreadRadius: -2,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/Logosau.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image, size: 50, color: Colors.white24),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                'มหาวิทยาลัยเอเชียอาคเนย์',
                style: GoogleFonts.kanit(
                  fontSize: 18,
                  color: Colors.white.withAlpha(200),
                ),
              ),

              const SizedBox(height: 40),

              // --- 3. รูปโปรไฟล์ (เรืองแสงสีแดงระเรื่อตามเดิม) ---
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withAlpha(100),
                      blurRadius: 30,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.white10,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),

              const SizedBox(height: 40),

              // --- 4. กลุ่มข้อมูลนักศึกษา (จัดวางกลาง ตามเดิม) ---
              _buildSimpleInfo('รหัสนักศึกษา', '6619410001', mySubTextColor),
              _buildSimpleInfo(
                  'ชื่อ-สกุลนักศึกษา', 'นาย ธัชชัย ขุนศรีเจริญ', Colors.white),
              _buildSimpleInfo(
                  'อีเมล์นักศึกษา', 's6619410001@sau.ac.th', Colors.white),
              _buildSimpleInfo(
                  'ชื่อสาขาวิชา', 'วิศวกรรมคอมพิวเตอร์', myMainTextColor),
              _buildSimpleInfo('ชื่อคณะ', 'คณะวิศวกรรมศาสตร์', myMainTextColor),

              const SizedBox(height: 50),
            ],
          ),
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
