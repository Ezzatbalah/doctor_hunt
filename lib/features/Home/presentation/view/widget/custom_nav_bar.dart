import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  BottomNavigationBarItem buildNavItem(
    String assetPath,
    String label,
    int index,
  ) {
    bool isSelected = selectedIndex == index;
    return BottomNavigationBarItem(
      icon: isSelected
          ? Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color(0xff0EBE7F),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                assetPath,
                height: 24,
                width: 24,
                color: Colors.white,
              ),
            )
          : Image.asset(assetPath, height: 24, width: 24, color: Colors.grey),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: const Color(0xff0EBE7F),
        unselectedItemColor: Colors.grey,

        elevation: 0,
        showUnselectedLabels: true,
        items: [
          buildNavItem("assets/images/home.png", "Home", 0),
          buildNavItem("assets/images/fav.png", "Favorites", 1),
          buildNavItem("assets/images/book.png", "Book", 2),
          buildNavItem("assets/images/message.png", "Message", 3),
        ],
      ),
    );
  }
}
