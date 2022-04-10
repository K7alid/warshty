import 'package:flutter/material.dart';

class KhashabResult extends StatelessWidget {
  KhashabResult({
    Key? key,
    required this.sumOfMoney,
    required this.sum,
  }) : super(key: key);

  final double sumOfMoney;
  final double sum;

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
                const Text(
                  'المجموع الكلي : ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                Center(
                  child: Text(
                    sum.toStringAsFixed(3),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    maxLines: 1,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'سعر الخشب : ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                Center(
                  child: Text(
                    sumOfMoney.toStringAsFixed(3),
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
