import 'package:flutter/material.dart';
import 'package:mental_health_app/utils/emoticon_face.dart';
import 'package:mental_health_app/utils/exercide_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: Column(
                children: [
                  // Heading - Greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Jovis
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi Jovis!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "09 Oct, 2022",
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  // How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  // 4 Different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '🙁'),
                          SizedBox(height: 8.0),
                          Text(
                            'Badly',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // feel fine
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '🙂'),
                          SizedBox(height: 8.0),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      // fell well
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '😀'),
                          SizedBox(height: 8.0),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      // excellent
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '🤩'),
                          SizedBox(height: 8.0),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35.0),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 45.0, right: 45.0, top: 45.0),
                      child: Column(
                        children: [
                          // Exercise Heading
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Exercises',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          const SizedBox(height: 30.0),
                          // Listview of exercises

                          Expanded(
                            child: ListView(
                              children: const [
                                ExerciseTile(
                                  icon: Icons.favorite,
                                  exerciseName: "Speaking skills",
                                  numberOfExercises: 16,
                                  color: Colors.orange,
                                ),
                                ExerciseTile(
                                  icon: Icons.person,
                                  exerciseName: "Reading skills",
                                  numberOfExercises: 8,
                                  color: Colors.green,
                                ),
                                ExerciseTile(
                                    icon: Icons.star,
                                    exerciseName: "Writing skills",
                                    numberOfExercises: 20,
                                    color: Colors.pink),
                                ExerciseTile(
                                  icon: Icons.favorite,
                                  exerciseName: "Speaking skills",
                                  numberOfExercises: 16,
                                  color: Colors.orange,
                                ),
                                ExerciseTile(
                                  icon: Icons.person,
                                  exerciseName: "Reading skills",
                                  numberOfExercises: 8,
                                  color: Colors.green,
                                ),
                                ExerciseTile(
                                    icon: Icons.star,
                                    exerciseName: "Writing skills",
                                    numberOfExercises: 20,
                                    color: Colors.pink),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
