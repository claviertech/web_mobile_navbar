library web_mobile_navbar;

import 'package:flutter/material.dart';

/// A responsive and flexible navbar for web and mobile applications.
class WebMobileNavbar extends StatelessWidget {
  final List<NavItem> items;
  final Color backgroundColor;
  final Color itemColor;
  final Color selectedItemColor;
  final double height;
  final double fontSize;

  const WebMobileNavbar({
    Key? key,
    required this.items,
    this.backgroundColor = Colors.white,
    this.itemColor = Colors.black87,
    this.selectedItemColor = Colors.blue,
    this.height = 60.0,
    this.fontSize = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) => _buildNavItem(item, context)).toList(),
      ),
    );
  }

  Widget _buildNavItem(NavItem item, BuildContext context) {
    return InkWell(
      onTap: item.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              item.icon,
              color: item.isSelected ? selectedItemColor : itemColor,
            ),
            SizedBox(height: 4),
            Text(
              item.label,
              style: TextStyle(
                color: item.isSelected ? selectedItemColor : itemColor,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  NavItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isSelected = false,
  });
}
