import 'package:flutter/material.dart';
import 'package:warshty/ablakash_scree.dart';
import 'package:warshty/components.dart';
import 'package:warshty/conter_screen.dart';
import 'package:warshty/khashab_screen.dart';

class BeginningScreen extends StatelessWidget {
  const BeginningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ورشتي',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                defaultButton(
                  function: () {
                    navigateTo(context, KhashabScreen());
                  },
                  text: 'الخشب',
                ),
                const SizedBox(
                  height: 30,
                ),
                defaultButton(
                  function: () {
                    navigateTo(context, AblakashScreen());
                  },
                  text: 'الابلكاش',
                ),
                const SizedBox(
                  height: 30,
                ),
                defaultButton(
                  function: () {
                    navigateTo(context, ConterScreen());
                  },
                  text: 'الكونتر',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
