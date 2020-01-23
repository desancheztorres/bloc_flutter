import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'home': Icons.home,
  'add': Icons.add,
  'pages': Icons.pages,
  'accessibility': Icons.accessibility,
  'fastfood': Icons.fastfood,
  'edit': Icons.edit,
  'shop': Icons.shop,
  'cart': Icons.shopping_cart,
  'exit_to_app': Icons.exit_to_app,
  'close': Icons.close,
  'cancel': Icons.cancel,
  'news': Icons.fiber_new,
  'mail': Icons.mail,
  'list': Icons.list,
  'add_shopping_cart': Icons.add_shopping_cart,
  'arrow_downward': Icons.arrow_downward,
  'arrow_upward': Icons.arrow_upward,
  'account_box': Icons.account_box,
  'notifications': Icons.notifications,
  'lock': Icons.lock,
  'people': Icons.people,
  'language': Icons.language,
  'book': Icons.book,
  'delete': Icons.delete,
  'subject': Icons.subject,
  'calendar_today': Icons.calendar_today,
  'person': Icons.person,
  'fitness_center': Icons.fitness_center,
  'comment': Icons.comment,
};

Icon getIcon({@required String iconName, Color color, double size}) {
  return Icon(
    _icons[iconName],
    color: color,
    size: size,
  );
}
