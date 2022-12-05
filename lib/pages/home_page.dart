import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pageViews/first_page.dart';
import 'package:flutter_application_1/pages/pageViews/second_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  setIndexBottomNav(index) => setState(() {
        indexBottomNavigationBar = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('eitaaa'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Wesley'),
              accountEmail: Text('wesley@lencione.com.br'),
              currentAccountPicture: CircleAvatar(
                child: Text('W'),
              ),
            ),
            ListTile(
              title: const Text('item1'),
              trailing: const Icon(Icons.arrow_back),
              onTap: () {
                _pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('item2'),
              trailing: const Icon(Icons.arrow_back_ios_sharp),
              onTap: () {
                _pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => setIndexBottomNav(index),
        children: const [
          FirstPage(),
          SecondPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,
        onTap: (int index) {
          setIndexBottomNav(index);
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInCirc,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bluetooth_connected),
            label: 'Um',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bluetooth_connected),
            label: 'Dois',
          ),
        ],
      ),
    );
  }
}
