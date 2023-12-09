import 'package:flutter/material.dart';
import 'package:test/feature/auth/presentation/widgets/buttons/custom_button.dart';

class RegisterationPage extends StatefulWidget {
  const RegisterationPage({super.key});

  @override
  State<RegisterationPage> createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 22.0, right: 16),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '.سلام به هایلایت خوش آمدید',
                      style: TextStyle(
                          fontFamily: 'iranSans', color: Colors.black87),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 22.0, right: 16),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '.لطفأ برای ثبت نام شماره همراه خود را وارد کنید',
                      style: TextStyle(
                          fontFamily: 'iranSans', color: Colors.black87),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, right: 16, left: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintTextDirection: TextDirection.rtl,
                      hintText: 'شماره همراه خود را وارد کنید',
                      suffixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.grey,
                      ),
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 248, 223, 6),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 54.0,
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: CustomButton(
                    title: 'دریافت کد فعالسازی',
                    onPressed: () {},
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
