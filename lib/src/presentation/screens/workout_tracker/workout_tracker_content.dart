import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/images_path.dart';
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart';

class WorkoutTrackerContent extends StatefulWidget {
  final double appBarSize;
  const WorkoutTrackerContent({
    Key key,
    @required this.appBarSize,
  })  : assert(appBarSize != null),
        super(key: key);

  @override
  _WorkoutTrackerContentState createState() => _WorkoutTrackerContentState();
}

class _WorkoutTrackerContentState extends State<WorkoutTrackerContent> {
  bool _complete = false;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: (_size.height * 0.55) - widget.appBarSize,
            child: Image.asset(
              ImagesPath.video,
              fit: BoxFit.fill,
            ),
          ),
          Container(
              height: (_size.height * 0.45) - widget.appBarSize,
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            color: Color(0xFFF7F6FC),
                            height: 67.0,
                            width: 67.0,
                            child: IconButton(
                              icon: Icon(
                                Icons.play_arrow,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Container(
                          child: Text(
                            "Dynamic Workout",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "Avenir Heavy",
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: primaryButton(
                      context: context,
                      caption: _complete ? "Complete" : "Set Tracker",
                      submit: () {
                        setState(() {
                          _complete = true;
                        });
                      },
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
