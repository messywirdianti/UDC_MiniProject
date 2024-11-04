import 'package:flutter/material.dart';
import 'package:udaskului/alquran_screen.dart';
import 'package:udaskului/home_screen.dart';
import 'package:udaskului/kiblat.dart';
import 'package:udaskului/profil_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Color _getIconColor(int index) {
    return tabController.index == index ? Color(0xFF3267E3) : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          HomeScreen(),
          AlquranScreen(),
          KiblatScreen(),
          ProfilScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          labelColor: Color(0xFF3267E3),
          unselectedLabelColor: Colors.grey,
          controller: tabController,
          indicator:  const BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xFF3267E3), width: 3),
            ),
          ),
          tabs: [
            Tab(
              text: 'Home',
              icon: Container(
                margin: const EdgeInsets.only(top: 8),
                child: Image.asset(
                  'assets/home.png',
                  width: 24,
                  height: 24,
                  color: _getIconColor(0),
                ),
              ),
            ),
            Tab(
              text: 'Alquran',
              icon: Container(
                margin: const EdgeInsets.only(top: 8), // Menambahkan margin atas untuk jarak
                child: Image.asset(
                  'assets/alquran.png',
                  width: 24,
                  height: 24,
                  color: _getIconColor(1),
                ),
              ),
            ),
            Tab(
              text: 'Kiblat',
              icon: Container(
                margin: const EdgeInsets.only(top: 8), // Menambahkan margin atas untuk jarak
                child: Image.asset(
                  'assets/kiblat.png',
                  width: 24,
                  height: 24,
                  color: _getIconColor(2),
                ),
              ),
            ),
            Tab(
              text: 'Profil',
              icon: Container(
                margin: const EdgeInsets.only(top: 8), // Menambahkan margin atas untuk jarak
                child: Image.asset(
                  'assets/profil.png',
                  width: 24,
                  height: 24,
                  color: _getIconColor(3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
