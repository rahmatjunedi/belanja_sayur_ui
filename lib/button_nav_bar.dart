import 'package:belanja_sayuran_ui/eccomer_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({super.key});

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  int selectedIndex = 0;
  late final List<Widget> page;
  @override
  void initState() {
    page = [
      EccomerceHomePage(),
      navBarPage(Icons.local_car_wash_sharp),
      navBarPage(Icons.person),
      navBarPage(Icons.shopping_bag)
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: GNav(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          color: Colors.green,
          textStyle:
              TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          tabBackgroundColor: Colors.green[50]!,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.share_location,
              text: "Location",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.person,
              text: "Profil",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              text: "Keranjang",
              iconSize: 30,
            )
          ],
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
      body: page[selectedIndex],
    );
  }

  navBarPage(iconName) {
    return Center(
      child: Icon(
        iconName,
        size: 100,
        color: Colors.black,
      ),
    );
  }
}
