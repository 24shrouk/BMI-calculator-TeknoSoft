import 'package:flutter/material.dart';
import 'package:ibm_tech/widgets/custom_retry_button.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key,
      required this.weigth,
      required this.heigth,
      required this.age,
      required this.gender});

  final int weigth;
  final double heigth;
  final int age;
  final String gender;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  double bmi = 0;
  String ibmText = 'normal';
  String underWeight =
      'According to your BMI, you fall within the underweight range. It\'s important to maintain a healthy weight to reduce the risk of nutrient deficiencies and other health complications associated with being underweight. Consider consulting with a healthcare professional for guidance on achieving a balanced weight.';
  String normalWeight =
      'According to your BMI, you fall within the normal weight range. This is a positive result as it indicates that your weight is generally healthy. However, it\'s still important to maintain a balanced diet and engage in regular physical activity to support overall well-being.';
  String overWeight =
      'According to your BMI, you fall within the overweight range. It\'s advisable to take steps towards achieving a healthier weight to reduce the risk of obesity-related health issues. Consider consulting with a healthcare professional or a registered dietitian for personalized guidance on nutrition and exercise.';
  String obese =
      'According to your BMI, you fall within the obesity range. It\'s crucial to prioritize your health and take steps towards weight management. Consult with a healthcare professional or a registered dietitian to create a suitable plan for achieving a healthier weight and reducing the risk of obesity-related diseases.';
  String extremlyObsity =
      'According to your BMI, you fall within the extremely obesity range. It\'s crucial to prioritize your health and consult with a healthcare professional or a registered dietitian for personalized guidance on weight management. They can provide tailored advice on nutrition, exercise, and other interventions to support your journey towards a healthier weight. Seeking professional assistance is crucial to ensure your well-being and minimize potential health risks.';
  @override
  Widget build(BuildContext context) {
    bmi = widget.weigth / ((widget.heigth / 100) * (widget.heigth / 100));
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'IBM Result',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Your BMI is',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                (bmi.toStringAsFixed(2)),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: bmi < 18.5
                      ? Colors.blue
                      : bmi < 25
                          ? Colors.green
                          : bmi < 30
                              ? Colors.yellow
                              : bmi < 35
                                  ? Colors.orange
                                  : Colors.red,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '(' +
                    (bmi < 18.5
                        ? ibmText = 'UnderWeight'
                        : bmi < 25
                            ? ibmText = 'Normal weight'
                            : bmi < 30
                                ? ibmText = 'OverWeigth'
                                : bmi < 35
                                    ? ibmText = 'Obese'
                                    : ibmText = 'Extremely Obese') +
                    ')',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: bmi < 18.5
                        ? Colors.blue
                        : bmi < 25
                            ? Colors.green
                            : bmi < 30
                                ? Colors.yellow
                                : bmi < 35
                                    ? Colors.orange
                                    : Colors.red,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16),
                          child: Column(children: [
                            Image.asset(
                              widget.gender == 'Male'
                                  ? 'assets/images/man.png'
                                  : 'assets/images/woman.png',
                              width: 40,
                              height: 40,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.gender,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16),
                          child: Column(children: [
                            Text(
                              widget.age.toString(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16),
                          child: Column(children: [
                            Text(
                              widget.weigth.toString(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'weight',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16),
                          child: Column(children: [
                            Text(
                              (widget.heigth).toInt().toString(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Height',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ]),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/Screenshot (433).png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      bmi < 18.5
                          ? underWeight
                          : bmi < 25
                              ? normalWeight
                              : bmi < 30
                                  ? overWeight
                                  : bmi < 35
                                      ? obese
                                      : extremlyObsity,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const CustomRestartButton(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
