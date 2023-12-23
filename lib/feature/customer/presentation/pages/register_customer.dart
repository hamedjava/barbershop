import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test/core/constant/constants.dart';
import 'package:test/feature/auth/presentation/widgets/buttons/custom_button.dart';
import 'package:test/feature/customer/presentation/widgets/input/custom_textfield.dart';

class RegisterCustomer extends StatefulWidget {
  const RegisterCustomer({super.key});

  @override
  State<RegisterCustomer> createState() => _RegisterCustomerState();
}

class _RegisterCustomerState extends State<RegisterCustomer> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      backgroundColor: HexColor('#FEFBFF'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 22.0),
              child: Text(
                'شماره تماس خود را وارد کنید',
                style: TextStyle(fontFamily: 'iranSans', color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomTextFormField(
                width: MediaQuery.of(context).size.width / 1.3,
                height: 42,
                validator: (value) {
                  return null;
                },
                hintText: 'شماره همراه خود را وارد کنید',
                checked: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                      checkColor: Colors.green,
                      activeColor: Colors.transparent),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomButton(title: 'دریافت کد'),
            )
          ],
        ),
      ),
    );
  }
}
