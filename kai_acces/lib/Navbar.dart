
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTapChanged;

  const Navbar ({
    Key? key,
    required this.currentIndex,
    required this.onTapChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTapChanged,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue[700],
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          // activeIcon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.train_outlined),
          // activeIcon: Icon(Icons.train),
          label: 'Kereta',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.confirmation_number_outlined),
          // activeIcon: Icon(Icons.confirmation_number),
          label: 'Tiket Saya',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer_outlined),
          // activeIcon: Icon(Icons.local_offer),
          label: 'Promo',
        ),
        BottomNavigationBarItem(  
          icon: Icon(Icons.person_outline),
          // activeIcon: Icon(Icons.person),
          label: 'Akun',
        ),
      ],
    );
  }
}

