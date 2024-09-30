import 'package:flutter/material.dart';
import 'package:kuis_124220021/login.dart';

class home extends StatefulWidget {
  final String username;
  const home({super.key, required this.username});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hallo, ${widget.username} \nMau makan apa hari ini?'),
        backgroundColor: const Color.fromARGB(255, 140, 217, 255),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => loginPage()));
              },
              child: Text('Logout'))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Image.network(
              'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/banner/bg_banner.webp',
              height: 150,
              width: 300,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Makanan',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            Expanded(
                child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: <Widget>[
                Image.network(
                    'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/menu_img/img_noodle_menu.webp',
                    height: 10),
                Image.network(
                    'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/menu_img/img_noodle_menu.webp',
                    height: 10),
                Image.network(
                    'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/menu_img/img_noodle_menu.webp',
                    height: 10),
                Image.network(
                    'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/menu_img/img_noodle_menu.webp',
                    height: 10),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
