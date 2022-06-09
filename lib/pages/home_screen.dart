import 'package:flutter/material.dart';
import 'package:flutter_mental_app/color_styles.dart';
import 'package:flutter_mental_app/utils/emoticon_face.dart';
import 'package:flutter_mental_app/utils/exercise_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.monitor), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.donut_large), label: '')
          ],
        ),
        backgroundColor: ColorStyles.primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              // Greetings Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Hi, Jared
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Mark',
                              style: TextStyle(
                                  color: ColorStyles.accentColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('23 Jan, 2022',
                                style: TextStyle(color: Colors.blue[200]))
                          ],
                        ),

                        // Notification
                        Container(
                          decoration: BoxDecoration(
                              color: ColorStyles.secondaryColor,
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: ColorStyles.accentColor,
                            size: 24,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // Search Bar
                    Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: ColorStyles.secondaryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: ColorStyles.accentColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('Search',
                                style:
                                    TextStyle(color: ColorStyles.accentColor))
                          ],
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    // How do you feel?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: ColorStyles.accentColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: ColorStyles.accentColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // 4 Different emos
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        // bad
                        EmoticonFace(
                          emoticon: '😔',
                          text: 'Bad',
                        ),
                        // fine
                        EmoticonFace(emoticon: '😉', text: 'Fine'),
                        // well
                        EmoticonFace(emoticon: '😊', text: 'Well'),
                        // excellent
                        EmoticonFace(emoticon: '😄', text: "Excellent"),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),

              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 25, left: 25, right: 25),
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Exercises',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        // Listview of exercises
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            children: const [
                              ExerciseTile(
                                  icon: Icons.favorite,
                                  iconColor: Colors.amber,
                                  title: "English Skills",
                                  subtitle: '15 Lessons'),
                              ExerciseTile(
                                  icon: Icons.favorite,
                                  iconColor: Colors.green,
                                  title: "Do some math",
                                  subtitle: '4 Lessons'),
                              ExerciseTile(
                                  icon: Icons.favorite,
                                  iconColor: Colors.red,
                                  title: "Programming",
                                  subtitle: '12 Lessons'),
                              ExerciseTile(
                                  icon: Icons.favorite,
                                  iconColor: Colors.blue,
                                  title: "Text to your girlfriend",
                                  subtitle: '21 Lessons'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
