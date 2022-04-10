import 'package:flutter/material.dart';
import 'package:warshty/result.dart';

import 'components.dart';

class AblakashScreen extends StatelessWidget {
  AblakashScreen({Key? key}) : super(key: key);

  var width = TextEditingController();
  var height = TextEditingController();
  var price = TextEditingController();
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
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'الابلاكاش',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  defaultTextFormField(
                    text: 'ادخل الطول',
                    prefix: Icons.text_format,
                    textInputType: TextInputType.number,
                    controller: height,
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
                    controller: width,
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
                    controller: price,
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
                      if (formKey.currentState!.validate()) {
                        double x = double.parse(height.text);
                        double y = double.parse(width.text);
                        double z = double.parse(price.text);
                        double alwah = ((x * y) / (152.5 * 152.5));
                        double math = (x * y * z / (152.5 * 152.5));
                        navigateTo(
                            context,
                            Result(
                              math: math,
                              alwah: alwah,
                            ));
                      }
                    },
                    text: 'الناتج',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
