part of home_view;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomClipRect(
        child: BottomNavigationBar(
            elevation: 5,
            currentIndex: _selectedIndex,
            onTap: onTap,
            items: BottomNavigatorListModel().toWidgets()));
  }
}
