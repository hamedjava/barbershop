import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test/core/constant/constants.dart';
import 'package:test/feature/auth/presentation/widgets/input/custom_textfield.dart';

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
              child: TextFormField(
                validator: (value) {
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(top: 10, left: 26.0, right: 12),
                    child: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                  ),
                  suffix: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Checkbox(value: false, onChanged: (value) {}),
                  ),
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: const TextStyle(fontFamily: 'iranSans'),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  errorStyle: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
