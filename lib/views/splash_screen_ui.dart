import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'introduction_call_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const IntroductionCallUI(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    /// สีหลัก
    const Color myMainTextColor = Color(0xFFF97316);
    const Color mySubTextColor = Color(0xFFFDE047);
    const Color myIndicatorColor = Color(0xFFFDE047);

    ///ขนาดโลโก้
    double customLogoSize = 375.0;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF020617),
              Color(0xFF0F172A),
              Color(0xFF1E293B),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            /// 🔥 Floating Icons
            Positioned(
              top: 140,
              left: 40,
              child: Icon(
                Icons.local_fire_department,
                size: 30,
                color: Colors.red.withAlpha(35),
              ),
            ),

            Positioned(
              bottom: 200,
              right: 60,
              child: Icon(
                Icons.local_police,
                size: 32,
                color: Colors.blue.withAlpha(35),
              ),
            ),

            Positioned(
              top: 260,
              right: 50,
              child: Icon(
                Icons.local_hospital,
                size: 30,
                color: Colors.green.withAlpha(35),
              ),
            ),

            /// Main Content
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// --- โลโก้ (นิ่งตามที่ต้องการ) ---
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withAlpha(80),
                          blurRadius: 50,
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/splashscapp.png',
                      width: customLogoSize,
                      height: customLogoSize,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => Icon(
                        Icons.contact_phone_rounded,
                        size: customLogoSize * 0.7,
                        color: const Color(0xFFF8FAFC),
                      ),
                    ),
                  ),

                  const SizedBox(height: 48),

                  /// --- Title (Glow Text) ---
                  Text(
                    'THAI HOTLINE',
                    style: GoogleFonts.kanit(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2.5,
                      color: myMainTextColor,
                      shadows: [
                        Shadow(
                          color: myMainTextColor.withAlpha(110),
                          blurRadius: 14,
                        ),
                        Shadow(
                          color: myMainTextColor.withAlpha(60),
                          blurRadius: 28,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// --- Subtitle ---
                  Text(
                    'สายด่วนไทย อุ่นใจทุกการเชื่อมต่อ',
                    style: GoogleFonts.kanit(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                      color: mySubTextColor,
                      shadows: [
                        Shadow(
                          color: mySubTextColor.withAlpha(80),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 80),

                  /// --- Loading ---
                  const SizedBox(
                    width: 28,
                    height: 28,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(myIndicatorColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
