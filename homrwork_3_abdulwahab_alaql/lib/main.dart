import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('جبال المملكة العربية السعودية'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            MountainCard(
              imagePath: 'images/img1.jpg',
              text: 'جبل النور الذي كان يتعبد فيه رسول الله',
            ),
            MountainCard(
              imagePath: 'images/img2.jpg',
              text: 'جبل السيدة الذي فيه مقبرة المعلاة التي دفنت فيه السيدة خديجة',
            ),
            MountainCard(
              imagePath: 'images/img3.jpg',
              text: 'جبل ثور الذي مكث فيه رسول الله مع صاحبه في وقت الهجرة',
            ),
            MountainCard(
              imagePath: 'images/img4.jpg',
              text: 'جبل الرحمة أو ماهو متعارف هليه جبل عرفة الذي تكون فيه وقفة يوم عرفة',
            ),
            MountainCard(
              imagePath: 'images/img5.jpg',
              text: 'جبل أحد الذي فيه حدثة معركة أحد ودفن فيها الشهداء من ضمنهم سيد الشهداء الحمزة',
            ),
            MountainCard(
              imagePath: 'images/img6.jpg',
              text: '☺️ جبل القارة مافيه شي بس واسطة',
            ),
          ],
        ),
      ),
    );
  }
}

class MountainCard extends StatelessWidget {
  final String imagePath;
  final String text;

  MountainCard({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
