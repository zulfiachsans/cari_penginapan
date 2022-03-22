import 'package:cari_penginapan/pages/utilities/constant.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int indexBottomBar = 0;

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      unselectedItemColor: greyColor,
      selectedItemColor: purpleColor,
      showUnselectedLabels: true,
      currentIndex: indexBottomBar,
      onTap: (index) {
        setState(
          () {
            indexBottomBar = index;
          },
        );
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded), label: 'Beranda'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined), label: 'Kegiatan'),
      ],
    );
  }

  List<Widget> page = const [
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      body: page[indexBottomBar],
    );
  }
}
