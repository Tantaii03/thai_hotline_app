import 'package:flutter/material.dart';
import '../models/hotline_model.dart';

class HotlineData {
  // --- หมวด A: การเดินทาง (สีน้ำเงิน Indigo) ---
  static List<Hotline> travelHotlines = [
    Hotline(
        name: "กรมทางหลวงชนบท",
        number: "1146",
        imagePath: "assets/images/1146.png",
        themeColor: const Color(0xFF1A237E)),
    Hotline(
        name: "ตำรวจท่องเที่ยว",
        number: "1155",
        imagePath: "assets/images/1155.png",
        themeColor: const Color(0xFF1A237E)),
    Hotline(
        name: "ตำรวจทางหลวง",
        number: "1193",
        imagePath: "assets/images/1193.png",
        themeColor: const Color(0xFF1A237E)),
    Hotline(
        name: "ข้อมูลจราจร",
        number: "1197",
        imagePath: "assets/images/1197.jpg",
        themeColor: const Color(0xFF1A237E)),
    Hotline(
        name: "ขสมก.",
        number: "1348",
        imagePath: "assets/images/1348.png",
        themeColor: const Color(0xFF1A237E)),
    Hotline(
        name: "บขส.",
        number: "1490",
        imagePath: "assets/images/1490.png",
        themeColor: const Color(0xFF1A237E)),
    Hotline(
        name: "เส้นทางบนทางด่วน",
        number: "1543",
        imagePath: "assets/images/1543.png",
        themeColor: const Color(0xFF1A237E)),
    Hotline(
        name: "การรถไฟแห่งประเทศไทย",
        number: "1690",
        imagePath: "assets/images/1690.png",
        themeColor: const Color(0xFF1A237E)),
    Hotline(
        name: "กรมทางหลวง",
        number: "1586",
        imagePath: "assets/images/1586.png",
        themeColor: const Color(0xFF1A237E)),
  ];

  // --- หมวด B: อุบัติเหตุ-เหตุฉุกเฉิน (สีแดง Crimson) ---
  static List<Hotline> emergencyHotlines = [
    Hotline(
        name: "เหตุด่วนเหตุร้าย",
        number: "191",
        imagePath: "assets/images/191.png",
        themeColor: const Color(0xFFD32F2F)),
    Hotline(
        name: "แจ้งไฟไหม้/สัตว์เข้าบ้าน",
        number: "199",
        imagePath: "assets/images/199.png",
        themeColor: const Color(0xFFD32F2F)),
    Hotline(
        name: "สายด่วนรถหาย",
        number: "1192",
        imagePath: "assets/images/1192.png",
        themeColor: const Color(0xFFD32F2F)),
    Hotline(
        name: "อุบัติเหตุทางน้ำ",
        number: "1196",
        imagePath: "assets/images/1196.jpg",
        themeColor: const Color(0xFFD32F2F)),
    Hotline(
        name: "แจ้งคนหาย",
        number: "1300",
        imagePath: "assets/images/1300.jpg",
        themeColor: const Color(0xFFD32F2F)),
    Hotline(
        name: "ศูนย์ปลอดภัยคมนาคม",
        number: "1356",
        imagePath: "assets/images/1356.png",
        themeColor: const Color(0xFFD32F2F)),
    Hotline(
        name: "หน่วยแพทย์กู้ชีพ",
        number: "1554",
        imagePath: "assets/images/1554.jpg",
        themeColor: const Color(0xFFD32F2F)),
    Hotline(
        name: "ศูนย์เอราวัณ",
        number: "1646",
        imagePath: "assets/images/1646.jpg",
        themeColor: const Color(0xFFD32F2F)),
    Hotline(
        name: "เจ็บป่วยฉุกเฉิน (สพฉ.)",
        number: "1669",
        imagePath: "assets/images/1669.jpg",
        themeColor: const Color(0xFFD32F2F)),
  ];

  // --- หมวด C: ธนาคาร (สีเขียว Emerald) ---
  static List<Hotline> bankHotlines = [
    Hotline(
        name: "ธนาคารกรุงเทพ",
        number: "1333",
        imagePath: "assets/images/1333.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารออมสิน",
        number: "1115",
        imagePath: "assets/images/1115.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารกสิกรไทย",
        number: "028888888",
        imagePath: "assets/images/028888888.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารกรุงไทย",
        number: "021111111",
        imagePath: "assets/images/021111111.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารกรุงศรี",
        number: "1572",
        imagePath: "assets/images/1572.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารไทยพาณิชย์",
        number: "027777777",
        imagePath: "assets/images/027777777.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารธนาชาติ",
        number: "1428",
        imagePath: "assets/images/1428.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "citibank",
        number: "1588",
        imagePath: "assets/images/1588.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "LHBANK",
        number: "1327",
        imagePath: "assets/images/1327.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารอาคารสงเคราะห์",
        number: "026459000",
        imagePath: "assets/images/026459000.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารเกียรตินาคินภัทร",
        number: "021655555",
        imagePath: "assets/images/021655555.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารซีไอเอ็มบีไทย",
        number: "026267777",
        imagePath: "assets/images/026267777.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารไทยเครดิต",
        number: "026975454",
        imagePath: "assets/images/026975454.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "UOB",
        number: "022851555",
        imagePath: "assets/images/022851555.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "TISCO",
        number: "026336000",
        imagePath: "assets/images/026336000.png",
        themeColor: const Color(0xFF2E7D32)),
    Hotline(
        name: "ธนาคารอิสลาม แห่งประเทศไทย",
        number: "022042766",
        imagePath: "assets/images/022042766.png",
        themeColor: const Color(0xFF2E7D32)),
  ];

  // --- หมวด D: สาธารณูปโภค (สีส้ม Amber) ---
  static List<Hotline> utilityHotlines = [
    Hotline(
        name: "ไฟฟ้านครหลวง",
        number: "1130",
        imagePath: "assets/images/1130.png",
        themeColor: const Color(0xFFFF8F00)),
    Hotline(
        name: "ไฟฟ้าส่วนภูมิภาค",
        number: "1129",
        imagePath: "assets/images/1129.png",
        themeColor: const Color(0xFFFF8F00)),
    Hotline(
        name: "ไฟฟ้าฝ่ายผลิต",
        number: "1416",
        imagePath: "assets/images/1416.png",
        themeColor: const Color(0xFFFF8F00)),
    Hotline(
        name: "การประปานครหลวง",
        number: "1125",
        imagePath: "assets/images/1125.png",
        themeColor: const Color(0xFFFF8F00)),
    Hotline(
        name: "การประปาส่วนภูมิภาค",
        number: "1662",
        imagePath: "assets/images/1662.png",
        themeColor: const Color(0xFFFF8F00)),
    Hotline(
        name: "True",
        number: "1242",
        imagePath: "assets/images/1242.png",
        themeColor: const Color(0xFFFF8F00)),
    Hotline(
        name: "Dtac",
        number: "1678",
        imagePath: "assets/images/1678.png",
        themeColor: const Color(0xFFFF8F00)),
    Hotline(
        name: "AIS",
        number: "1175",
        imagePath: "assets/images/1175.png",
        themeColor: const Color(0xFFFF8F00)),
    Hotline(
        name: "TOT/NT",
        number: "1100",
        imagePath: "assets/images/1100.png",
        themeColor: const Color(0xFFFF8F00)),
  ];
}
