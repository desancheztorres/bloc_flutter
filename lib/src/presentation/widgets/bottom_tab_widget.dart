import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/icons_utils.dart';

class BottomTabWidget extends StatelessWidget {
  final Function onTabTapped;
  final int currentIndex;
  final List<Map<Object, dynamic>> items;

  BottomTabWidget({
    @required this.items,
    @required this.onTabTapped,
    @required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Color(0xFFE4E4E4),
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Color(0xFFFF8C00),
            textTheme: Theme.of(context).textTheme.copyWith(
                  caption: TextStyle(
                    color: Color(0xFFB7B4B4),
                  ),
                ),
          ), // sets the inactive color of the `BottomNavigationBar`

          child: Container(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: onTabTapped,
              currentIndex: currentIndex,
              items: _createItems(),
            ),
          ),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _createItems() {
    final List<BottomNavigationBarItem> options = [];

    items.forEach((item) {
      options.add(
        BottomNavigationBarItem(
          icon: getIcon(
            iconName: item["icon"],
          ),
          title: Text("${item["name"]}"),
        ),
      );
    });

    return options;
  }
}
