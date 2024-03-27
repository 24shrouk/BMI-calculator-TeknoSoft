import 'package:flutter/material.dart';
import 'package:ibm_tech/screens/result_Screen.dart';
import 'package:ibm_tech/widgets/circuler_image.dart';
import 'package:ibm_tech/widgets/custom_button.dart';
import 'package:ibm_tech/widgets/custom_toggle_switch.dart';
import 'package:ibm_tech/widgets/weigth_slider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int geneder = 0;
  double _heigth = 40.0;
  int _weigth = 40, _previous2 = 0, _next2 = 0;
  int age = 20, previous = 0, next = 0;
  int ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'IBM Calculator',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CirculerImage(image: 'assets/images/male422).png'),
              CirculerImage(
                image: 'assets/images/female.jpg',
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomSwitch(),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Height (cm)',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              SfSlider(
                activeColor: Colors.black,
                min: 10.0,
                max: 220.0,
                value: _heigth,
                interval: 20,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                tooltipShape: const SfPaddleTooltipShape(),
                minorTicksPerInterval: 2,
                onChanged: (dynamic value) {
                  setState(() {
                    _heigth = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 237, 235, 235),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Weight (Kg)',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         Text(
                    //           (_previous2 = _weigth - 1).toString(),
                    //           style: const TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.w500,
                    //               color: Color.fromARGB(255, 185, 184, 184)),
                    //         ),
                    //         Text(
                    //           _weigth.toString(),
                    //           style: const TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.w500,
                    //               color: Colors.black),
                    //         ),
                    //         Text(
                    //           (_next2 = _weigth + 1).toString(),
                    //           style: const TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.w500,
                    //               color: Color.fromARGB(255, 185, 184, 184)),
                    //         )
                    //       ],
                    //     ),
                    //     const SizedBox(
                    //       height: 30,
                    //     ),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         GestureDetector(
                    //           onTap: () {
                    //             setState(() {
                    //               if (_weigth > 1) {
                    //                 --_weigth;
                    //               }
                    //             });
                    //           },
                    //           child: Material(
                    //             elevation: 3,
                    //             borderRadius: BorderRadius.circular(20),
                    //             child: Container(
                    //               height: 20,
                    //               width: 20,
                    //               decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.circular(20),
                    //               ),
                    //               child: const Icon(
                    //                 Icons.remove,
                    //                 size: 15,
                    //                 color: Colors.black,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         GestureDetector(
                    //           onTap: () {
                    //             setState(() {
                    //               ++_weigth;
                    //             });
                    //           },
                    //           child: Material(
                    //             elevation: 3,
                    //             borderRadius: BorderRadius.circular(20),
                    //             child: Container(
                    //               height: 20,
                    //               width: 20,
                    //               decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.circular(20),
                    //               ),
                    //               child: const Icon(
                    //                 Icons.add,
                    //                 size: 15,
                    //                 color: Colors.black,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     )
                    _drawSlider(),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 237, 235, 235),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Age',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          (previous = age - 1).toString(),
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 185, 184, 184)),
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          (next = age + 1).toString(),
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 185, 184, 184)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (age > 1) {
                                --age;
                              }
                            });
                          },
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.remove,
                                size: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              ++age;
                            });
                          },
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Spacer(),
          CustomButton(
              text: 'Calculate',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            weigth: _weigth,
                            heigth: _heigth,
                            gender: CustomSwitch.gender,
                            age: age,
                          )),
                );
              }),
          const Spacer()
        ],
      ),
    );
  }

  Widget _drawSlider() {
    return WeightBackground(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.isTight
              ? Container()
              : WeightSlider(
                  minValue: 30,
                  maxValue: 110,
                  value: _weigth,
                  onChanged: (val) => setState(() => _weigth = val),
                  width: constraints.maxWidth,
                );
        },
      ),
    );
  }
}

class WeightBackground extends StatelessWidget {
  final Widget child;

  const WeightBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(244, 244, 244, 1.0),
            borderRadius: BorderRadius.circular(50),
          ),
          child: child,
        ),
        Image.asset(
          "assets/images/Screenshot (428).png",
          height: 20,
          width: 28,
        ),
      ],
    );
  }
}
