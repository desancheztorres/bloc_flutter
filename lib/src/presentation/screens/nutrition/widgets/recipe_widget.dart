import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/images_path.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Image.asset(
            ImagesPath.recipe2,
          )
        ],
      ),
    );
  }
}
