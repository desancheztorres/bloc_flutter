import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/images_path.dart';
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show CategoryCard, HomeHeader, RecipeWidget, homeAppBar;

class NutritionScreen extends StatelessWidget {
  static const String routeName = "nutrition";

  const NutritionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);

    return Stack(
      children: <Widget>[
        HomeHeader(
          colors: [
            Color(0xFFA3C364),
            Color(0xFFA3C364),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: homeAppBar(title: "Health Tips"),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: CategoryCard(name: "Vegan"),
                        ),
                        Expanded(
                          child: CategoryCard(name: "Vegetarian"),
                        ),
                        Expanded(
                          child: CategoryCard(name: "Meat"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    child: Card(
                      elevation: 0.0,
                      color: Colors.transparent,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(ImagesPath.mainRecipe)),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Hot Topics",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontFamily: "Avenir, Heavy",
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            color: Color(0xFFA4A2A2),
                            fontSize: 15.0,
                            fontFamily: "Avenir, Book",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 100.0,
                    width: _mediaQuery.size.width * 1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return RecipeWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
