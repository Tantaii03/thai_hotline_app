import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sub_a_home_ui.dart';
import 'sub_b_home_ui.dart';
import 'sub_c_home_ui.dart';
import 'sub_d_home_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _selectedIndex = 0;

  //หน้าจอ
  final List<Widget> _pages = [
    const SubAHomeUI(),
    const SubBHomeUI(),
    const SubCHomeUI(),
    const SubDHomeUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // แสดงหน้าปัจจุบันที่เลือก
      body: _pages[_selectedIndex],

      bottomNavigationBar: Container(
        // ตกแต่งแถบเมนูด้วยสี
        decoration: BoxDecoration(
          color: const Color(0xFF0F172A),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withAlpha(80),
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor:
              Colors.transparent, // โปร่งใสเพื่อโชว์สีจาก Container
          selectedItemColor: Colors.white, // สีข้อความเมื่อถูกเลือก
          unselectedItemColor: const Color(0xFFFFFFFF)
              .withAlpha(100), // สีข้อความเมื่อไม่ได้เลือก
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.kanit(
            fontWeight: FontWeight.bold,
            fontSize: 13, // ขยับขนาดฟอนต์ขึ้นนิดหน่อยให้รับกับไอคอนใหม่
          ),
          unselectedLabelStyle: GoogleFonts.kanit(fontSize: 12),
          items: [
            _buildCustomItem(0, 'assets/images/menu1icon.png', 'การเดินทาง'),
            _buildCustomItem(1, 'assets/images/menu2icon.png', 'อุบัติเหตุ'),
            _buildCustomItem(2, 'assets/images/menu3icon.png', 'ธนาคาร'),
            _buildCustomItem(3, 'assets/images/menu4icon.png', 'สาธารณูปโภค'),
          ],
        ),
      ),
    );
  }

  // คัดตต้อมเมนูบาร์เองจากรูปที่ดาวน์โหลด
  BottomNavigationBarItem _buildCustomItem(
      int index, String imagePath, String label) {
    bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      label: label,
      icon: SizedBox(
        // ปรับความสูงเป็น
        height: 50,
        width: 55,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutBack, // ลูกเล่นการเด้ง
              //  ถ้าเลือกให้ดึงขึ้นบนสุด (0) ถ้าไม่เลือกให้หย่อนลงมา (10)
              top: isSelected ? 0 : 10,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                // ปรับความชัด: เลือก (100%) ไม่เลือก (50%)
                opacity: isSelected ? 1.0 : 0.5,
                child: Image.asset(
                  imagePath,
                  //  ขยายขนาดไอคอนให้เห็นชัดเจนขึ้น
                  width: isSelected ? 55 : 32,
                  height: isSelected ? 55 : 32,
                  fit: BoxFit.contain,
                  //  แสดงสีจริง (ไม่มี ColorFilter ทับ)
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.image_not_supported,
                    color: Colors.white.withAlpha(100),
                    size: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
