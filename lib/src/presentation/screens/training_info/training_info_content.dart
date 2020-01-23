import 'package:flutter/material.dart';

// Packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Utils
import 'package:fultter_ultralifestyle/src/presentation/utils/images_path.dart';

// Widgets
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show iconInfo, primaryButton, scheduleCard;

// Screens
import 'package:fultter_ultralifestyle/src/presentation/screens/screens.dart';

class TrainingInfoContent extends StatefulWidget {
  const TrainingInfoContent({Key key}) : super(key: key);

  @override
  _TrainingInfoContentState createState() => _TrainingInfoContentState();
}

class _TrainingInfoContentState extends State<TrainingInfoContent> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Container(
          child: Image.network(
            "https://i.ytimg.com/vi/mQMA88jJrFc/maxresdefault.jpg",
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16.5),
            height: _mediaQuery.size.height,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 23.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Easy Chest",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28.0,
                            fontFamily: "Avenir Heavy",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Keeps your waist in shape",
                        style: TextStyle(
                          color: Color(0xFFA4A2A2),
                          fontFamily: "Avenir Book",
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: RatingBar(
                              itemSize: 20.0,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          Container(
                            child: Text(
                              "(286) Reviews",
                              style: TextStyle(
                                color: Color(0xFFA4A2A2),
                                fontFamily: "Avenir Book",
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 35.0),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: iconInfo(
                                color: Color(0xFF47B2BF),
                                caption: "Level",
                                icon: "subject",
                                value: 1,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: iconInfo(
                                color: Color(0xFF7082E9),
                                caption: "Weeks",
                                icon: "calendar_today",
                                value: 1,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: iconInfo(
                                color: Color(0xFFF7CA02),
                                caption: "Mins",
                                icon: "subject",
                                value: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Divider(),
                    SizedBox(height: 20.0),
                    Container(
                      child: Text(
                        "Complete beginners should start here! This bundle will teach you basic chest exercises to build up from",
                        style: TextStyle(
                          color: Color(0xFF7E7D7D),
                          fontFamily: "Avenir Book",
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FlatButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(ScheduleScreen.routeName),
                        child: Text(
                          "Schedule",
                          style: TextStyle(
                            fontFamily: "Avenir Heavy",
                            color: Color(0xFFFF8C00),
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Color(0xFFFF8C00),
                      endIndent: _mediaQuery.size.width * 0.60,
                      thickness: 2.0,
                    ),
                    SizedBox(height: 20.0),
                    scheduleCard(
                      day: 1,
                      name: "Easy Strength",
                      duration: 11,
                      image: ImagesPath.scheduleTest,
                      handler: () => Navigator.of(context)
                          .pushNamed(ScheduleScreen.routeName),
                    ),
                    SizedBox(height: 20.0),
                    primaryButton(
                      caption: "Start Workout",
                      context: context,
                      submit: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
