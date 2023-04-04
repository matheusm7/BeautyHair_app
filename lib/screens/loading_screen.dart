import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

int hexColor(String color) {
  //adding prefix
  String newColor = '0xff$color';
  //removing # sign
  newColor = newColor.replaceAll('#', '');
  //converting it to the integer
  int finalColor = int.parse(newColor);
  return finalColor;
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(185, 163, 93, 113)),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Lottie.network(
                  "https://assets1.lottiefiles.com/packages/lf20_l1czat89.json",
                  width: 300,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'BeautyHair',
                        style: TextStyle(
                          fontFamily: 'Inspiration',
                          fontSize: 50,
                          color: Color(
                            hexColor('f4acc4'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: SpinKitRing(
                  size: 50,
                  color: Color(
                    hexColor('f4acc4'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
