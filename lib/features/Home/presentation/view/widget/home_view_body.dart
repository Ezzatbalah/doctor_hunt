import 'package:doctor_hunt/core/utils/app_string.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:doctor_hunt/core/utils/widget/custom_textFild.dart';
import 'package:doctor_hunt/features/Home/presentation/view/widget/custom_appbar_container.dart';
import 'package:doctor_hunt/features/Home/presentation/view/widget/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:doctor_hunt/features/Home/presentation/view/screens/books_screen.dart';
import 'package:doctor_hunt/features/Home/presentation/view/screens/faaveorit_Screen.dart';
import 'package:doctor_hunt/features/Home/presentation/view/screens/home_screen.dart';
import 'package:doctor_hunt/features/Home/presentation/view/screens/messeg_screen.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    FavoritesScreen(),
    BooksScreen(),
    MessegScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/sing.png", fit: BoxFit.cover),
          ),
          pages[selectedIndex],
          Column(
            children: [
              CustomAppBarContainer(),
              Transform.translate(
                offset: const Offset(0, -25),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
