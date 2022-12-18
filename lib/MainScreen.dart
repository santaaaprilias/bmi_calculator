import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'enum.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard = Gender.unSelected;
  int sliderValue = 0;
  int weight = 40;
  // ignore: non_constant_identifier_names
  int Age = 10;
  // int height=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 77, 71, 109),
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.male;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 30, 233, 98),
                          ),
                          color: selectedCard == Gender.male
                              ? const Color.fromARGB(255, 169, 197, 186)
                              : const Color.fromARGB(255, 68, 150, 93),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Icon(
                              FontAwesomeIcons.mars,
                              color: Colors.white,
                              size: 75,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'MALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.female;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCard == Gender.female
                              ? const Color.fromARGB(255, 219, 143, 196)
                              : const Color.fromARGB(255, 214, 67, 170),
                          border: Border.all(
                            color: const Color.fromARGB(255, 214, 67, 170),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Icon(
                              FontAwesomeIcons.venus,
                              color: Colors.black,
                              size: 75,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'HEIGHT',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  sliderValue.toString(),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 75),
                                ),
                                const Text(
                                  "CM",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (sliderValue < 250) {
                                        sliderValue++;
                                      }
                                    });
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 4, 4, 10),
                                    radius: 20,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Slider(
                                  value: sliderValue.toDouble(),
                                  min: 0.0,
                                  max: 250.0,
                                  onChanged: (value) {
                                    setState(() {
                                      sliderValue = value.toInt();
                                    });
                                  },
                                  inactiveColor: Colors.white,
                                  activeColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (sliderValue > 0) sliderValue--;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 0, 0, 0),
                                    radius: 20,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.pink,
                                    radius: 25,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (weight > 0) weight--;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.pink,
                                    radius: 25,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 58, 47, 88),
                          border: Border.all(
                            color: Colors.pink,
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$Age',
                              style: const TextStyle(
                                  fontSize: 60,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.pink,
                                    radius: 25,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (Age > 0) Age--;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.pink,
                                    radius: 25,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 58, 47, 88),
                          border: Border.all(
                            color: Colors.pink,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            height: sliderValue,
                            weight: weight,
                            age: Age,
                          )),
                );
              },
              child: Container(
                height: 80,
                width: double.infinity,
                color: const Color.fromARGB(255, 86, 72, 145),
                // ignore: prefer_const_constructors
                child: Center(
                  // ignore: prefer_const_constructors
                  child: Text(
                    'CALCULATE',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
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
