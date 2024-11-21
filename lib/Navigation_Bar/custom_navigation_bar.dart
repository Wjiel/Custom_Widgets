import 'package:flutter/material.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

final ScrollController scrollController = ScrollController();
final PageController pageController = PageController();

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  final Color selectedColor = Colors.pink;
  final Color unSelectedColor = Colors.pink;
  int indexNavigationBar = 0;

// Scaffold  extendbody: true

  void change(int index) {
    setState(() {
      indexNavigationBar = index;

      // pageController.animateToPage(
      //   indexNavigationBar,
      //   duration: const Duration(milliseconds: 300),
      //   curve: Curves.easeInOutExpo,
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> itemsSelected = [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: selectedColor,
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(20),
            left: Radius.circular(20),
          ),
        ),
        child: const Icon(Icons.home_filled),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: selectedColor,
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(20),
            left: Radius.circular(20),
          ),
        ),
        child: const Icon(Icons.home_filled),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: selectedColor,
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(20),
            left: Radius.circular(20),
          ),
        ),
        child: const Icon(Icons.home_filled),
      ),
    ];

    List<Widget> itemUnSelected = [
      const Icon(
        Icons.home,
      ),
      const Icon(
        Icons.home,
      ),
      const Icon(
        Icons.home,
      ),
    ];

    final size = MediaQuery.of(context).size;

    return ScrollToHide(
      duration: const Duration(milliseconds: 300),
      scrollController: scrollController,
      hideDirection: Axis.vertical,
      height: 90 + 10 * (size.width / 1080),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                blurRadius: 15.4,
                spreadRadius: 1,
                color: Color(0x41000000),
              ),
            ],
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            iconSize: 28,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            backgroundColor: Colors.transparent,
            currentIndex: indexNavigationBar,
            onTap: (index) {
              change(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: indexNavigationBar == 0
                    ? itemsSelected[0]
                    : itemUnSelected[0],
                label: '',
                tooltip: 'Дом',
              ),
              BottomNavigationBarItem(
                icon: indexNavigationBar == 1
                    ? itemsSelected[1]
                    : itemUnSelected[1],
                label: '',
                tooltip: 'Мероприятия',
              ),
              BottomNavigationBarItem(
                icon: indexNavigationBar == 2
                    ? itemsSelected[2]
                    : itemUnSelected[2],
                label: '',
                tooltip: 'Аккаунт',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
