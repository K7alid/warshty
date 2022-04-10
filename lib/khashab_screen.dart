import 'package:flutter/material.dart';
import 'package:warshty/khashab_result.dart';

import 'components.dart';

class KhashabScreen extends StatelessWidget {
  KhashabScreen({Key? key}) : super(key: key);

  var takhana1 = TextEditingController();
  var width1 = TextEditingController();
  var height1 = TextEditingController();
  var number1 = TextEditingController();
  var price1 = TextEditingController();

  var takhana2 = TextEditingController();
  var width2 = TextEditingController();
  var height2 = TextEditingController();
  var number2 = TextEditingController();

  var takhana3 = TextEditingController();
  var width3 = TextEditingController();
  var height3 = TextEditingController();
  var number3 = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ورشتي',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'القوائم',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    defaultTextFormField(
                      text: 'ادخل التخانة',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: takhana1,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل العرض',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: width1,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل الطول',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: height1,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل العدد',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: number1,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل السعر',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: price1,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل سعر!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultButton(
                      function: () {
                        double sumOfMoney = double.parse(takhana1.text) *
                            double.parse(height1.text) *
                            double.parse(width1.text) *
                            double.parse(number1.text) *
                            double.parse(price1.text);
                        double sum = double.parse(takhana1.text) *
                            double.parse(height1.text) *
                            double.parse(width1.text) *
                            double.parse(number1.text);
                        navigateTo(
                            context,
                            KhashabResult(
                              sumOfMoney: (sumOfMoney / 10000),
                              sum: (sum / 10000),
                            ));
                      },
                      text: 'الناتج',
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      'السواس(3.3cm)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    defaultTextFormField(
                      text: 'ادخل التخانة',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: takhana2,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل العرض',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: width2,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل الطول',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: height2,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل العدد',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: number2,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      'السواس(2.5cm)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    defaultTextFormField(
                      text: 'ادخل التخانة',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: takhana3,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل العرض',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: width3,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل الطول',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: height3,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    defaultTextFormField(
                      text: 'ادخل العدد',
                      prefix: Icons.text_format,
                      textInputType: TextInputType.number,
                      controller: number3,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'من فضلك ادخل رقم!!!';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    defaultButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          double math1 = double.parse(takhana1.text) *
                              double.parse(height1.text) *
                              double.parse(width1.text) *
                              double.parse(number1.text);

                          double math2 = double.parse(takhana2.text) *
                              double.parse(height2.text) *
                              double.parse(width2.text) *
                              double.parse(number2.text);

                          double math3 = double.parse(takhana3.text) *
                              double.parse(height3.text) *
                              double.parse(width3.text) *
                              double.parse(number3.text);

                          double money = double.parse(price1.text);

                          double sumOfMoney = (math1 + math2 + math3) * money;

                          double sum = (math1 + math2 + math3);

                          navigateTo(
                              context,
                              KhashabResult(
                                sumOfMoney: (sumOfMoney / 10000),
                                sum: (sum / 10000),
                              ));
                        }
                      },
                      text: 'الناتج الكلي',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
