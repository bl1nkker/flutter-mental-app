import 'package:flutter/material.dart';
import 'package:flutter_mental_app/color_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyles.primaryColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // Greetings Row
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
                            style: TextStyle(color: ColorStyles.accentColor))
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
              ],
            ),
          ),
        ));
  }
}
