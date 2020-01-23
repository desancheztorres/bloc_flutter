import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:fultter_ultralifestyle/src/presentation/widgets/text_widget.dart';

const Color _kKeyUmbraOpacity = Color(0x3300000);
const Color _kKeyPenumbraOpacity = Color(0x3300000);
const Color _kKeyAmbientShadowOpacity = Color(0x3300000);

class Data {
  static List<String> pagesTitle = [
    "dashboard",
    "workouts",
    "nutrition",
    "news"
  ];

  static List<charts.Series> seriesList = createSampleData();
  static List activityDetails = [
    [8, 10],
    [10, 11],
    [13, 21],
    [14, 17],
    [15, 14],
    [16, 26],
  ];

  /// Create one series with sample hard coded data.
  static List<charts.Series<ActivityData, String>> createSampleData() {
    List<ActivityData> data = new List<ActivityData>(25);
    ActivityData item = new ActivityData('2', 34);
    for (int i = 0; i <= 24; i++) {
      item = ActivityData(i.toString(), 0);
      data[i] = item;
    }
    for (int i = 0; i < activityDetails.length; i++) {
      data[activityDetails[i][0]].activityDuration = activityDetails[i][1];
    }
    return [
      charts.Series<ActivityData, String>(
        id: 'Activity',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (ActivityData activityDuration, _) => activityDuration.time,
        measureFn: (ActivityData activityDuration, _) =>
            activityDuration.activityDuration,
        data: data,
      )
    ];
  }

  static List<CircularStackEntry> data(double percentage) {
    return <CircularStackEntry>[
      CircularStackEntry(
        <CircularSegmentEntry>[
          CircularSegmentEntry(
            percentage,
            Color(0xFFED4041),
            rankKey: 'completed',
          ),
          CircularSegmentEntry(
            percentage,
            Color(0xFFFFFFFF),
            rankKey: 'remaining',
          ),
        ],
        rankKey: 'progress',
      ),
    ];
  }

  static List<String> trainingLevel = [
    'beginner',
    'intermediate',
    'professional'
  ];

  static List<String> ethnicGroup = [
    "Not stated",
    "White",
    "Black Caribbean",
    "Black African",
    "Indian",
    "Pakistani",
    "Bangladeshi",
    "Chinese",
    "Middle Eastern",
    "Mixed",
    "Other"
  ];

  static List<String> weeklyTrainingDays = [
    '1 day',
    '2 days',
    '3 days',
    '4 days',
    '5 days',
    '6 days',
    '7 days'
  ];

  static List<String> daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  static List days = [
    ["S", false],
    ["M", false],
    ["T", true],
    ["W", false],
    ["TH", false],
    ["F", false],
    ["S", false]
  ];

  static List<Map<Object, dynamic>> homeBottomBarItems = [
    {
      "name": "Home",
      "icon": "home",
    },
    {
      "name": "News",
      "icon": "comment",
    },
    {
      "name": "Health",
      "icon": "fastfood",
    },
    {
      "name": "Training",
      "icon": "fitness_center",
    },
    {
      "name": "Profile",
      "icon": "person",
    },
  ];

  static List userInfo = [
    ["FIRST NAME", "Cristian"],
    [
      "LAST NAME",
      "Torres",
    ],
    ["EMAIL", "desancheztorres@gmail.com"],
    ["GENDER", "Male"]
  ];

  static List<String> bodyParts = [
    "Any body part",
    "Core",
    "Arms",
    "Black",
    "Chest",
    "Legs",
    "Shoulders",
    "Other",
    "Olympic",
    "Full body",
    "Cardio"
  ];

  static List<String> categories = [
    "Any category",
    "Barbell",
    "Dumbbell",
    "Machine/Other",
    "Weighted bodyweight",
    "Assisted body",
    "Reps only",
    "Cardio exercise",
    "Duration"
  ];

  static List<String> newsCategories = [
    "latest",
    "workouts",
    "nutrition",
    "style",
    "sport"
  ];

  static List<BoxShadow> shadow1 = [
    BoxShadow(
      offset: Offset(0.0, 1.0),
      blurRadius: 1.0,
      spreadRadius: -1.0,
      color: _kKeyUmbraOpacity,
    ),
    BoxShadow(
      offset: Offset(0.0, 1.0),
      blurRadius: 1.0,
      spreadRadius: 0.0,
      color: _kKeyPenumbraOpacity,
    ),
    BoxShadow(
      offset: Offset(0.0, 1.0),
      blurRadius: 1.0,
      spreadRadius: 0.0,
      color: _kKeyAmbientShadowOpacity,
    ),
  ];

  static final List<Tab> tabs = [
    Tab(
      child: text(
        caption: "details".toUpperCase(),
      ),
    ),
    Tab(
      child: text(
        caption: "material & care".toUpperCase(),
      ),
    )
  ];

  static String welcomeMessage =
      "Note: Age, Weight, Height are required to calculate your BMI (Body Mass index) and track your progress";

  static String genderInfo =
      "For children, BMI centile is gender specific. For both children and adults, we give more personalised information based on whether you are male or female.";

  static String measurementsInfo =
      "We use this information to calculate your BMI and customize parts of the app";

  static String ethnicInfo =
      "Black, Asian and other minority ethnic groups with a BMI of 23 or more have a higher risk of getting type 2 diabetes and other long term illnesses";

  static List<dynamic> recipes = [
    {
      "id": 1,
      "name": "Panko Parmesan Salmon",
    },
    {
      "id": 2,
      "name": "Million-Dollar Spaghetti",
    },
    {
      "id": 3,
      "name": "Lemon Panko Crusted Salmon",
    },
    {
      "id": 4,
      "name": "Buttered Biscuits",
    },
    {
      "id": 5,
      "name": "Cinnamon Bread I",
    },
    {
      "id": 6,
      "name": "Asian Salmon",
    },
    {
      "id": 7,
      "name": "Garlic Lemon Butter Salmon",
    },
    {
      "id": 8,
      "name": "Salmon Dip",
    },
    {
      "id": 9,
      "name": "Chicken Marsala Florentine",
    },
    {
      "id": 10,
      "name": "Grilled Bacon-Wrapped Chicken Tenders",
    },
    {
      "id": 11,
      "name": "Ginger-Chicken Stir Fry",
    },
    {
      "id": 12,
      "name": "Grilled Chile-Cilantro-Lime Chicken",
    },
    {
      "id": 13,
      "name": "Sofrito Chicken",
    }
  ];

  static List<dynamic> exercises = [
    {
      "id": 26,
      "name": "Bycicle Crunch",
    },
    {
      "id": 27,
      "name": "Box Jump",
    },
    {
      "id": 28,
      "name": "Box Squat (Barbell)",
    },
    {
      "id": 29,
      "name": "Bulgarian Split Squat",
    },
    {
      "id": 30,
      "name": "Burpee",
    },
    {
      "id": 31,
      "name": "Cable Crossover",
    },
    {
      "id": 32,
      "name": "Cable Crunch",
    },
    {
      "id": 33,
      "name": "Cable Kickback",
    },
    {
      "id": 34,
      "name": "Cable Pull Through",
    },
    {
      "id": 35,
      "name": "Cable Twist",
    },
    {
      "id": 36,
      "name": "Calf Press on Leg Press",
    },
    {
      "id": 37,
      "name": "Calf Press on Seated Leg Press",
    },
    {
      "id": 38,
      "name": "Chest Dip",
    },
    {
      "id": 39,
      "name": "Chest Dip (Assisted)",
    },
    {
      "id": 40,
      "name": "Chest Fly",
    },
    {
      "id": 41,
      "name": "Chest Fly (Band)",
    },
    {
      "id": 42,
      "name": "Chest Press (Machine)",
    },
    {
      "id": 43,
      "name": "Chin Up",
    },
    {
      "id": 44,
      "name": "Chin Up (Assisted)",
    },
    {
      "id": 45,
      "name": "Clean (Barbell)",
    },
    {
      "id": 46,
      "name": "Clean and Jerk (Barbell)",
    },
    {
      "id": 47,
      "name": "Climbing",
    },
    {
      "id": 48,
      "name": "Concentration Curl (Dumbbell)",
    },
    {
      "id": 49,
      "name": "Cross Body Crunch",
    },
    {
      "id": 50,
      "name": "Crunch",
    },
    {
      "id": 51,
      "name": "Crunch (Machine)",
    },
    {
      "id": 52,
      "name": "Crunch (Stability Ball)",
    },
    {
      "id": 53,
      "name": "Cycling",
    },
    {
      "id": 54,
      "name": "Cycling (indoor)",
    },
    {
      "id": 55,
      "name": "Deadlift (Band)",
    },
    {
      "id": 56,
      "name": "Deadlift (Barbell)",
    },
    {
      "id": 57,
      "name": "Deadlift (Dumbbell)",
    },
    {
      "id": 58,
      "name": "Deadlift (Smith machine)",
    },
    {
      "id": 59,
      "name": "Deadlift High Pull (Barbell)",
    },
    {
      "id": 60,
      "name": "Decline Bench Press (Barbell)",
    },
    {
      "id": 61,
      "name": "Decline Bench Press (Dumbbell)",
    },
    {
      "id": 62,
      "name": "Decline Bench Press (Smith machine)",
    },
    {
      "id": 63,
      "name": "Decline Crunch",
    },
    {
      "id": 64,
      "name": "Deficit Deadlift (Barbell)",
    },
    {
      "id": 65,
      "name": "Eliptical Machine",
    },
    {
      "id": 66,
      "name": "Face Pull (Cable)",
    },
    {
      "id": 67,
      "name": "Flat Knee Raise",
    },
    {
      "id": 68,
      "name": "Flat Leg Raise",
    },
    {
      "id": 69,
      "name": "Floor Press (Barbell)",
    },
    {
      "id": 70,
      "name": "Front Raise (Band)",
    },
    {
      "id": 71,
      "name": "Front Raise (Barbell)",
    },
    {
      "id": 72,
      "name": "Front Raise (Cable)",
    },
    {
      "id": 73,
      "name": "Front Raise (Dumbbell)",
    },
    {
      "id": 74,
      "name": "Front Raise (Plate)",
    },
    {
      "id": 75,
      "name": "Front Squat (Barbell)",
    },
    {
      "id": 76,
      "name": "Glute Ham Raise",
    },
    {
      "id": 77,
      "name": "Glute Kickback (Machine)",
    },
    {
      "id": 78,
      "name": "Goblet Squat (Kettlebell)",
    },
    {
      "id": 79,
      "name": "Goo Morning (Barbell)",
    },
    {
      "id": 80,
      "name": "Hack Squat",
    },
    {
      "id": 81,
      "name": "Hack Squat (Barbell)",
    },
    {
      "id": 82,
      "name": "Hammer Curl (Band)",
    },
    {
      "id": 83,
      "name": "Hammer Curl (Cable)",
    },
    {
      "id": 84,
      "name": "Hammer Curl (Dumbbell)",
    },
    {
      "id": 85,
      "name": "Handstand Push Up",
    },
    {
      "id": 86,
      "name": "Hang Clean (Barbell)",
    },
    {
      "id": 87,
      "name": "Hang Snatch (Barbell)",
    },
    {
      "id": 88,
      "name": "Hanging Leg Raise",
    },
    {
      "id": 89,
      "name": "Hanging Leg Raise",
    },
    {
      "id": 90,
      "name": "High Knee Skips",
    },
    {
      "id": 91,
      "name": "Hiking",
    },
    {
      "id": 92,
      "name": "Hip Adductor (Machine)",
    },
    {
      "id": 93,
      "name": "Hip Adductor (Barbell)",
    },
    {
      "id": 94,
      "name": "Hip Thrust (Barbell)",
    },
    {
      "id": 95,
      "name": "Hip Thrust (Bodyweight)",
    },
    {
      "id": 96,
      "name": "Incline Bench Press (Barbell)",
    },
    {
      "id": 97,
      "name": "Incline Bench Press (Cable)",
    },
    {
      "id": 98,
      "name": "Incline Bench Press (Dumbbell)",
    },
    {
      "id": 99,
      "name": "Incline Bench Press (Smith Machine)",
    },
    {
      "id": 100,
      "name": "Incline Chest Press (Machine)",
    },
    {
      "id": 101,
      "name": "Incline Curl (Dumbbell)",
    },
    {
      "id": 102,
      "name": "Incline Row (Bodyweight)",
    },
    {
      "id": 103,
      "name": "Iso-Lateral Chest Press (Machine)",
    },
    {
      "id": 104,
      "name": "Iso-Lateral Row (Machine)",
    },
    {
      "id": 105,
      "name": "Jackknife Sit Up",
    },
    {
      "id": 106,
      "name": "Jump Rope",
    },
    {
      "id": 107,
      "name": "Jump Shrug (Barbell)",
    },
    {
      "id": 108,
      "name": "Jump Squat",
    },
    {
      "id": 109,
      "name": "Jumping Jack",
    },
    {
      "id": 110,
      "name": "Kettlebell Swing",
    },
    {
      "id": 111,
      "name": "Kettlebell Turkish Get Up",
    },
    {
      "id": 112,
      "name": "Kipping Pull Up",
    },
    {
      "id": 113,
      "name": "Knee Raise (Captain's Chair)",
    },
    {
      "id": 114,
      "name": "Kneeling Pulldown (Band)",
    },
    {
      "id": 115,
      "name": "Knees to Elbows",
    },
    {
      "id": 116,
      "name": "Lat Pulldown (Cable)",
    },
    {
      "id": 117,
      "name": "Lat Pulldown (Machine)",
    },
    {
      "id": 118,
      "name": "Lat Pulldown (Single Arm)",
    },
    {
      "id": 119,
      "name": "Lat Pulldown - Underhand (Band)",
    },
    {
      "id": 120,
      "name": "Lat Pulldown Underhand (Cable)",
    },
    {
      "id": 121,
      "name": "Lat Pulldown - Wide Grip (Cable)",
    },
    {
      "id": 122,
      "name": "Lateral Box Jump",
    },
    {
      "id": 123,
      "name": "Lateral Raise (Cable)",
    },
    {
      "id": 124,
      "name": "Lateral Raise (Dumbbell)",
    },
    {
      "id": 125,
      "name": "Lateral Raise (Machine)",
    },
    {
      "id": 126,
      "name": "Leg Extension (Machine)",
    },
    {
      "id": 127,
      "name": "Leg Press",
    },
    {
      "id": 128,
      "name": "Lunge (Barbell)",
    },
    {
      "id": 129,
      "name": "Lunge (Bodyweight)",
    },
    {
      "id": 130,
      "name": "Lunge (Dumbbell)",
    },
    {
      "id": 131,
      "name": "Lying Leg Curl (Machine)",
    },
    {
      "id": 132,
      "name": "Mountain CLimber",
    },
    {
      "id": 133,
      "name": "Muscle Up",
    },
    {
      "id": 134,
      "name": "Oblique Crunch",
    },
    {
      "id": 135,
      "name": "Overhead Press (Barbell)",
    },
    {
      "id": 136,
      "name": "Overhead Press (Cable)",
    },
    {
      "id": 137,
      "name": "Overhead Press (Dumbbell)",
    },
    {
      "id": 138,
      "name": "Overhead Press (Smith Machine)",
    },
    {
      "id": 139,
      "name": "Overhead Squat (Barbell)",
    },
    {
      "id": 140,
      "name": "Peck Deck (Machine)",
    },
    {
      "id": 141,
      "name": "Pendlay Row (Barbell)",
    },
    {
      "id": 142,
      "name": "Pistol Squat",
    },
    {
      "id": 143,
      "name": "Plank",
    },
    {
      "id": 144,
      "name": "Power Clean",
    },
    {
      "id": 145,
      "name": "Power Snatch (Barbell)",
    },
    {
      "id": 146,
      "name": "Preacher Curl (Barbell)",
    },
    {
      "id": 147,
      "name": "Preacher Curl (Machine)",
    },
    {
      "id": 148,
      "name": "Press under (Barbell)",
    },
    {
      "id": 149,
      "name": "Pull Up",
    },
    {
      "id": 150,
      "name": "Pull Up (Band)",
    },
    {
      "id": 151,
      "name": "Pull Up (Assisted)",
    },
    {
      "id": 152,
      "name": "Pullover (Machine)",
    },
    {
      "id": 153,
      "name": "Push Up (Band)",
    },
    {
      "id": 154,
      "name": "Push Up",
    },
    {
      "id": 155,
      "name": "Push Up (Knees)",
    },
    {
      "id": 156,
      "name": "Rock Pull (Barbell)",
    },
    {
      "id": 157,
      "name": "Reverse Crunch",
    },
    {
      "id": 158,
      "name": "Reverse Curl (Band)",
    },
    {
      "id": 159,
      "name": "Reverse Curl (Barbell)",
    },
    {
      "id": 160,
      "name": "Reverse Curl (Dumbbell)",
    },
    {
      "id": 161,
      "name": "Reverse Fly (Cable)",
    },
    {
      "id": 162,
      "name": "Reverse Fly (Dumbbell)",
    },
    {
      "id": 163,
      "name": "Reverse Fly (Machine)",
    },
    {
      "id": 164,
      "name": "Reverse Grip Concentration Curl",
    },
    {
      "id": 165,
      "name": "Reverse Plank",
    },
    {
      "id": 166,
      "name": "Romanian Deadlift (Barbell)",
    },
    {
      "id": 167,
      "name": "Romanian Deadlift (Dumbbell)",
    },
    {
      "id": 168,
      "name": "Rowing (Machine)",
    },
    {
      "id": 169,
      "name": "Running",
    },
    {
      "id": 170,
      "name": "Running (Treadmil)",
    },
    {
      "id": 171,
      "name": "Russian Twist",
    },
    {
      "id": 172,
      "name": "Seated Calf Raise (Machine)",
    },
    {
      "id": 173,
      "name": "Seated Calf Raise (Plate Loaded)",
    },
    {
      "id": 174,
      "name": "Seated Leg Curl (Machine)",
    },
    {
      "id": 175,
      "name": "Seated Leg Press (Machine)",
    },
    {
      "id": 176,
      "name": "Seated Overhead Press (Barbell)",
    },
    {
      "id": 177,
      "name": "Seated Overhead Press (Dumbbell)",
    },
    {
      "id": 178,
      "name": "Seated Palms Up Wrist Curl (Dumbbell)",
    },
    {
      "id": 179,
      "name": "Seated Row (Cable)",
    },
    {
      "id": 180,
      "name": "Seated Row (Machine)",
    },
    {
      "id": 181,
      "name": "Seated Wide-Grip Row (Cable)",
    },
    {
      "id": 182,
      "name": "Shoulder Press (Machine)",
    },
    {
      "id": 183,
      "name": "Shoulder Press (Plate Loaded)",
    },
    {
      "id": 184,
      "name": "Shrug (Barbell)",
    },
    {
      "id": 185,
      "name": "Shrug (Machine)",
    },
    {
      "id": 186,
      "name": "Shrug (Smith Machine)",
    },
    {
      "id": 187,
      "name": "Side Bend (Band)",
    },
    {
      "id": 188,
      "name": "Side Bend (Cable)",
    },
    {
      "id": 189,
      "name": "Side Bend (Dumbbell)",
    },
    {
      "id": 190,
      "name": "Side Plank",
    },
    {
      "id": 191,
      "name": "Single Leg Bridge",
    },
    {
      "id": 192,
      "name": "Sit Up",
    },
    {
      "id": 193,
      "name": "Skating",
    },
    {
      "id": 194,
      "name": "Skiing",
    },
    {
      "id": 195,
      "name": "Skullcrusher (Barbell)",
    },
    {
      "id": 196,
      "name": "Skullcrusher (Dumbbell)",
    },
    {
      "id": 197,
      "name": "snatch (Barbell)",
    },
    {
      "id": 198,
      "name": "Snatch Pull (Barbell)",
    },
    {
      "id": 199,
      "name": "Snowboarding",
    },
    {
      "id": 200,
      "name": "Split Jerk (Barbell)",
    },
    {
      "id": 201,
      "name": "Squat (Band)",
    },
    {
      "id": 202,
      "name": "Squat (Barbell)",
    },
    {
      "id": 203,
      "name": "Squat (Bodyweight)",
    },
    {
      "id": 204,
      "name": "Squat (Dumbbell)",
    },
    {
      "id": 205,
      "name": "Squat (Machine)",
    },
    {
      "id": 206,
      "name": "Squat (Smith Machine)",
    },
    {
      "id": 207,
      "name": "Squat Row (Band)",
    },
    {
      "id": 208,
      "name": "Standing Calf Raise (Barbell)",
    },
    {
      "id": 209,
      "name": "Standing Calf Raise (Bodyweight)",
    },
    {
      "id": 210,
      "name": "Standing Calf Raise (Dumbbell)",
    },
    {
      "id": 211,
      "name": "Standing Calf Raise (Machine)",
    },
    {
      "id": 212,
      "name": "Standing Calf Raise (Smith Machine)",
    },
    {
      "id": 213,
      "name": "Step-up",
    },
    {
      "id": 214,
      "name": "Stiff Leg Deadlift (Barbell)",
    },
    {
      "id": 215,
      "name": "Stiff Leg Deadlift (Dumbbell)",
    },
    {
      "id": 216,
      "name": "Straight Leg Deadlift (Band)",
    },
    {
      "id": 217,
      "name": "Stretching",
    },
    {
      "id": 218,
      "name": "Strict Military Press (Barbell)",
    },
    {
      "id": 219,
      "name": "Sumo Deadlift (Barbell)",
    },
    {
      "id": 220,
      "name": "Sumo Deadlift High Pull (Barbell)",
    },
    {
      "id": 221,
      "name": "Superman",
    },
    {
      "id": 222,
      "name": "Swimming",
    },
    {
      "id": 223,
      "name": "T Bar Row",
    },
    {
      "id": 224,
      "name": "Thruster (Barbell)",
    },
    {
      "id": 225,
      "name": "Thruster (Kettlebell)",
    },
    {
      "id": 226,
      "name": "Toes to Bar",
    },
    {
      "id": 227,
      "name": "Torso Rotation (Machine)",
    },
    {
      "id": 228,
      "name": "Trap Bar Deadlift",
    },
    {
      "id": 229,
      "name": "Triceps Dip",
    },
    {
      "id": 230,
      "name": "Tricpes Dip (Assisted)",
    },
    {
      "id": 231,
      "name": "Triceps Extension",
    },
    {
      "id": 232,
      "name": "Triceps Extension (Barbell)",
    },
    {
      "id": 233,
      "name": "Triceps Extension (Cable)",
    },
    {
      "id": 234,
      "name": "Triceps Extension (Machine)",
    },
    {
      "id": 235,
      "name": "Triceps Pushdown",
    },
    {
      "id": 236,
      "name": "Upright Row (Barbell)",
    },
    {
      "id": 237,
      "name": "Upright Row (Cable)",
    },
    {
      "id": 238,
      "name": "Upright Row (Dumbbell)",
    },
    {
      "id": 239,
      "name": "V Up",
    },
    {
      "id": 240,
      "name": "Vertical Bench Press",
    },
    {
      "id": 241,
      "name": "Walking",
    },
    {
      "id": 242,
      "name": "Wide Pull Up",
    },
    {
      "id": 243,
      "name": "Wrist Roller",
    },
    {
      "id": 244,
      "name": "Yoga",
    },
    {
      "id": 245,
      "name": "Zercher Squat (Barbell)",
    },
    {
      "id": 1,
      "name": "Ab Wheel",
    },
    {
      "id": 2,
      "name": "Aerobics",
    },
    {
      "id": 3,
      "name": "Arm curl",
    },
    {
      "id": 4,
      "name": "Arm machine",
    },
    {
      "id": 5,
      "name": "Arnold Press (Dumbbell)",
    },
    {
      "id": 6,
      "name": "Around the World",
    },
    {
      "id": 7,
      "name": "Back Extension",
    },
    {
      "id": 8,
      "name": "Back Extension (Machine)",
    },
    {
      "id": 9,
      "name": "Ball Slams",
    },
    {
      "id": 10,
      "name": "Battle Ropes",
    },
    {
      "id": 11,
      "name": "Bench Dip",
    },
    {
      "id": 12,
      "name": "Bench Press (Cable)",
    },
    {
      "id": 13,
      "name": "Bench Press (Dumbbell)",
    },
    {
      "id": 14,
      "name": "Bench Press (Smith Machine)",
    },
    {
      "id": 15,
      "name": "Bench Press - Close Grip (Barbell)",
    },
    {
      "id": 16,
      "name": "Bench Press - Wide Grip (Barbell)",
    },
    {
      "id": 17,
      "name": "Bent Over One Arm Row",
    },
    {
      "id": 18,
      "name": "Bent Over Row (Band)",
    },
    {
      "id": 19,
      "name": "Bent Over Row (Barbell)",
    },
    {
      "id": 20,
      "name": "Ben tOver Row (Dumbbell)",
    },
    {
      "id": 21,
      "name": "Bent Over Row - Underhand",
    },
    {
      "id": 22,
      "name": "Bicep Curl (Barbell)",
    },
    {
      "id": 23,
      "name": "Bicep Curl (Cable)",
    },
    {
      "id": 24,
      "name": "Bicep Curl (Dumbbell)",
    },
    {
      "id": 25,
      "name": "Bicep Curl (Machine)",
    }
  ];
}

/// Sample ordinal data type.
class ActivityData {
  String time;
  int activityDuration;
  ActivityData(this.time, this.activityDuration);
}
