import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/icons_utils.dart';

class SettingWidget extends StatelessWidget {
  final Map<String, dynamic> option;
  const SettingWidget({
    Key key,
    @required this.option,
  })  : assert(option != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 36.0,
            width: 36.0,
            color: Color(option["color"]),
            child: getIcon(
              iconName: option["icon"],
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          option["name"],
          style: TextStyle(fontSize: 17.0, fontFamily: "Avenir Medium"),
        ),
        trailing: IconButton(
          icon: Icon(Icons.chevron_right),
          onPressed: () {},
        ),
      ),
    );
  }
}
