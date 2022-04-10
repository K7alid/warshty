import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.math, required this.alwah})
      : super(key: key);

  final double math;
  final double alwah;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'الناتج',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'عدد الألواح : ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Center(
                  child: Text(
                    '${alwah.toStringAsFixed(3)}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'السعر : ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                Center(
                  child: Text(
                    '${math.toStringAsFixed(3)}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
