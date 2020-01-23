import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final _icons = <String, IconData>{
  'facebookF': FontAwesomeIcons.facebookF,
  'google': FontAwesomeIcons.google,
  'twitter': FontAwesomeIcons.twitter,
  'thumbsUp': FontAwesomeIcons.thumbsUp,
  'fireAlt': FontAwesomeIcons.fireAlt,
  'weight': FontAwesomeIcons.weight,
  'chartBar': FontAwesomeIcons.chartBar,
  'trophy': FontAwesomeIcons.trophy,
  'clock': FontAwesomeIcons.clock,
};

Icon getAwesomeIcon({
  @required String iconName,
  @required Color color,
  double size,
}) {
  return Icon(
    _icons[iconName],
    color: color,
    size: size,
  );
}
