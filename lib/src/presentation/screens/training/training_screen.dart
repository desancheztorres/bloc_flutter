import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/screens/training_info/training_info_screen.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/images_path.dart';
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show HomeHeader, homeAppBar;

class TrainingScreen extends StatelessWidget {
  static const String routeName = "training";

  const TrainingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HomeHeader(
          colors: [
            Color(0xFFA4BDC7),
            Color(0xFF123D6865),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: homeAppBar(title: "Training"),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      child: Card(
                        child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(TrainingInfo.routeName),
                          child: Container(
                            child: Image.network(
                              "https://cdn2.coachmag.co.uk/sites/coachmag/files/styles/16x9_480/public/2018/07/beginner-strength-workout.jpg",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Essentials For Beginners",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Avenir Heavy",
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            color: Color(0xFFA4A2A2),
                            fontFamily: "Avenir Heavy",
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Image.asset(ImagesPath.workout1),
                        SizedBox(width: 10.0),
                        Image.asset(ImagesPath.workout1),
                        SizedBox(width: 10.0),
                        Image.asset(ImagesPath.workout1),
                        SizedBox(width: 10.0),
                        Image.asset(ImagesPath.workout1),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
