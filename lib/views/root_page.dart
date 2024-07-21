import 'package:flowers/theme/colors.dart';
import 'package:flowers/views/home/home_page.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 2;
  List pages = const [
    HomePage(),
    Scaffold(),
    HomePage(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: CircleBorder(),
        backgroundColor: primary,
        child: Image.asset(
          "assets/icons/sc.png",
          color: Colors.white,
          height: 27,
          width: 30,
          fit: BoxFit.cover,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(Icons.grid_view_outlined,
                  size: 25,
                  color: currentIndex == 0 ? primary : Colors.grey.shade600),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icon(Icons.favorite_border,
                  size: 25,
                  color: currentIndex == 1 ? primary : Colors.grey.shade600),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: Icon(Icons.shopping_cart_outlined,
                  size: 25,
                  color: currentIndex == 3 ? primary : Colors.grey.shade600),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(Icons.person,
                  size: 25,
                  color: currentIndex == 4 ? primary : Colors.grey.shade600),
            ),
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
