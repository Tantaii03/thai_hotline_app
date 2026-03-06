import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_ui.dart';

class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  //  สีหลักที่คุมโทนมาจาก SplashScreen
  final Color myMainTextColor = const Color(0xFFF97316);
  final Color mySubTextColor = const Color(0xFFFDE047);
  final Color myBgColor = const Color(0xFF020617);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //  พื้นหลัง Gradient แบบลึก (Deep Gradient)
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0F172A),
              Color(0xFF020617),
              Color(0xFF020617),
              Color(0xFF0F172A),
            ],
          ),
        ),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.transparent,
          pages: [
            _buildPage(
              title: "สะดวกทุกการเดินทาง",
              body:
                  "รวมเบอร์โทรหน่วยงานคมนาคม เช็กจราจร หรือเหตุด่วนบนทางหลวงได้ทันที",
              imagePath: 'assets/images/subA_pic.png',
              accentColor: Colors.blueAccent,
            ),
            _buildPage(
              title: "อุ่นใจเมื่อเกิดเหตุฉุกเฉิน",
              body:
                  "แจ้งเหตุด่วนเหตุร้าย ไฟไหม้ หรือกู้ชีพฉุกเฉิน 24 ชั่วโมง เพื่อความปลอดภัยของคุณ",
              imagePath: 'assets/images/subB_pic.png',
              accentColor: Colors.redAccent,
            ),
            _buildPage(
              title: "จัดการเรื่องเงินได้รวดเร็ว",
              body:
                  "เบอร์ติดต่อธนาคารชั้นนำ แจ้งอายัดบัตร หรือสอบถามบริการทางการเงินได้ง่ายๆ",
              imagePath: 'assets/images/subC_pic.png',
              accentColor: Colors.greenAccent,
            ),
            _buildPage(
              title: "ครบเครื่องเรื่องบริการรัฐ",
              body:
                  "แจ้งไฟฟ้าขัดข้อง น้ำประปาไม่ไหล หรือบริการเครือข่ายมือถือได้ในที่เดียว",
              imagePath: 'assets/images/subD_pic.png',
              accentColor: mySubTextColor,
            ),
          ],
          onDone: () => _onIntroEnd(context),
          onSkip: () => _onIntroEnd(context),
          showSkipButton: true,
          skip: Text('ข้าม',
              style: GoogleFonts.kanit(color: Colors.white.withAlpha(150))),

          //  ปุ่มสามเหลี่ยมขาวล้วน (Minimal Style)
          next: Container(
            padding: const EdgeInsets.all(8),
            child: CustomPaint(
              size: const Size(20, 20),
              painter: TrianglePainter(color: Colors.white),
            ),
          ),

          done: Text('เริ่มใช้งาน',
              style: GoogleFonts.kanit(
                  fontWeight: FontWeight.bold,
                  color: mySubTextColor,
                  fontSize: 18)),

          dotsDecorator: DotsDecorator(
            size: const Size(8.0, 8.0),
            color: Colors.white.withAlpha(50),
            activeSize: const Size(25.0, 8.0),
            activeColor: myMainTextColor,
            activeShape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  //  ฟังก์ชันสร้างหน้าพร้อมปรับความโค้งมนและแสงฟุ้ง
  PageViewModel _buildPage({
    required String title,
    required String body,
    required String imagePath,
    required Color accentColor,
  }) {
    return PageViewModel(
      title: title,
      body: body,
      image: Stack(
        alignment: Alignment.center,
        children: [
          //  ส่วนที่ 1: แสง Aura ด้านหลัง (ปรับให้ฟุ้งกระจายกว้างขึ้น)
          Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: accentColor.withAlpha(45),
                  blurRadius: 120, // เพิ่มความฟุ้งจาก 100 -> 120
                  spreadRadius: 25, // เพิ่มการกระจายจาก 10 -> 25
                ),
              ],
            ),
          ),
          //  ส่วนที่ 2: รูปภาพ (ลบความเป็นสี่เหลี่ยมจัตุรัสด้วยความโค้งมน)
          ClipRRect(
            borderRadius: BorderRadius.circular(35), // ดัดขอบให้โค้งมน 35px
            child: Image.asset(
              imagePath,
              width: 280,
              height: 280,
              fit: BoxFit.cover,
              errorBuilder: (c, e, s) => Icon(
                Icons.contact_phone,
                size: 150,
                color: accentColor.withAlpha(100),
              ),
            ),
          ),
        ],
      ),
      decoration: PageDecoration(
        pageColor: Colors.transparent,
        titleTextStyle: GoogleFonts.kanit(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [Shadow(color: accentColor.withAlpha(150), blurRadius: 20)],
        ),
        bodyTextStyle: GoogleFonts.kanit(
          fontSize: 17,
          color: Colors.white.withAlpha(180),
          fontWeight: FontWeight.w300,
        ),
        imagePadding: const EdgeInsets.only(top: 60),
      ),
    );
  }

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomeUI()),
    );
  }
}

//  Custom Painter สำหรับวาดปุ่มสามเหลี่ยม
class TrianglePainter extends CustomPainter {
  final Color color;
  TrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    final Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
