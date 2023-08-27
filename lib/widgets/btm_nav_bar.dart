import 'package:flutter/material.dart';
import 'package:shopper/screens/choose_plan_screen.dart';
import 'package:shopper/screens/home/home.dart';
import 'package:shopper/screens/international_trasfer.dart';
import 'package:shopper/screens/momo_screen.dart';
import 'package:shopper/screens/wallet_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _DefaultHomePageState();
}

class _DefaultHomePageState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Home(),
    const WalletScreen(),
    const InternationalTransfer(),
    const MomoScreen(),
    const ChoosePlan()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        // bottomAppBar with a notch
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    //color: Colors.black,
                    onPressed: () {
                      _navigateBottomBar(0);
                      // setState(() {
                      //   _selectedIndex = 0;
                      // });
                    },
                    child: ImageIcon(
                      const AssetImage('assets/images/credit-card.png'),
                      size: 35,
                      color: _selectedIndex == 0
                          ? const Color(0xFF008AA7)
                          : Colors.black,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      _navigateBottomBar(1);
                      // setState(() {
                      //   _selectedIndex = 1;
                      // });
                    },
                    child: ImageIcon(
                      const AssetImage('assets/images/dollar.png'),
                      size: 35,
                      color: _selectedIndex == 1
                          ? const Color(0xFF008AA7)
                          : Colors.black,
                    ),
                  )
                ],
              ),

              // Right Tab bar icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      _navigateBottomBar(3);
                      // setState(() {
                      //   _selectedIndex = 2;
                      // });
                    },
                    child: ImageIcon(
                      const AssetImage('assets/images/wallet1.png'),
                      size: 30,
                      color: _selectedIndex == 3
                          ? const Color(0xFF008AA7)
                          : Colors.black,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      _navigateBottomBar(4);
                      // setState(() {
                      //   _selectedIndex = 3;
                      // });
                    },
                    child: ImageIcon(
                      const AssetImage('assets/images/menu.png'),
                      size: 30,
                      color: _selectedIndex == 4
                          ? const Color(0xFF008AA7)
                          : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF008AA7),
        elevation: 0,
        onPressed: () {
          _navigateBottomBar(2);
        },
        child:
            const Image(image: AssetImage('assets/images/GENIOPAY LOGO.png')),
      ),
    );
  }
}
