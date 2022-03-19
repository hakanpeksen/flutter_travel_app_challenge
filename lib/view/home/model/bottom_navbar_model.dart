part of home_view;

class BottomNavigatorModel {
  final IconData icon;
  final String title;

  BottomNavigatorModel(this.icon, this.title);
}

class BottomNavigatorListModel {
  late final List<BottomNavigatorModel> _items;
  BottomNavigatorListModel() {
    _items = [
      BottomNavigatorModel(Icons.home, '.'),
      BottomNavigatorModel(Icons.notifications, '.'),
      BottomNavigatorModel(Icons.bookmark, '.'),
      BottomNavigatorModel(Icons.person, '.')
    ];
  }

  List<BottomNavigationBarItem> toWidgets() {
    return _items.map((e) => BottomNavigationBarItem(icon: Icon(e.icon), label: e.title)).toList();
  }
}
