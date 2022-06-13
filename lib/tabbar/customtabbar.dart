import 'package:flutter/material.dart';

class customTabbar extends StatefulWidget {
  const customTabbar({Key? key}) : super(key: key);

  @override
  State<customTabbar> createState() => _customTabbarState();
}

class _customTabbarState extends State<customTabbar> {
  int _selectedIndex = 0;
  List<String> image=["images/y1.png","images/y2.png","images/y3.png"];
  List<String> name=["AYancht","BYancht","CYancht"];
  List<String> price=["111","222","333"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 240,
            width: 100,
            child: NavigationRail(

              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: [
                NavigationRailDestination(
                  label: Text("asd"), icon: Icon(Icons.center_focus_strong),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bookmark_border),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Second'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Third'),
                ),
              ],
            ),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Container(
              height: 200,
              child: Center(
                child: Text('selectedIndex: $_selectedIndex'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
