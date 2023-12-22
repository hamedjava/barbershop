import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:test/core/constant/constants.dart';
import 'package:test/feature/auth/presentation/widgets/buttons/custom_button.dart';

class OTPRegisteration extends StatefulWidget {
  const OTPRegisteration({super.key});

  @override
  State<OTPRegisteration> createState() => _OTPRegisterationState();
}

class _OTPRegisterationState extends State<OTPRegisteration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 1.4,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            elevation: 4,
            shadowColor: Colors.black,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '.کد فعالسازی به شماره 09331648073 ارسال گردید',
                      style: TextStyle(
                          fontFamily: 'iranSans', color: Colors.black87),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0, right: 16),
                    child: Text(
                      'لطفا ان را واردی نمایید و دکمه تایید را بزنید',
                      style: TextStyle(
                          fontFamily: 'iranSans', color: Colors.black87),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 80.0, right: 16, left: 16),
                    child: PinCodeFields(
                      length: 4,
                      obscureText: false,
                      onComplete: (output) {
                        // Your logic with pin code
                        print(output);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 150.0, left: 16, right: 16),
                  child: CustomButton(
                    title: 'تایید',
                    onPressed: () {},
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ثانیه تا دریافت مجدد کد',
                          style: TextStyle(
                              fontFamily: 'iranSans',
                              color: Colors.black87,
                              leadingDistribution:
                                  TextLeadingDistribution.even),
                        ),
                        Text(
                          ' 60',
                          style: TextStyle(
                              fontFamily: 'iranSans',
                              color: Colors.black87,
                              leadingDistribution:
                                  TextLeadingDistribution.even),
                        ),
                      ],
                    ),
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
