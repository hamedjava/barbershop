import 'package:flutter/material.dart';
import 'package:test/feature/auth/presentation/widgets/buttons/custom_button.dart';
import 'package:test/feature/auth/presentation/widgets/input/custom_textfield.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
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
            child: Form(
              key: fromKey,
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
                    padding:
                        const EdgeInsets.only(top: 100, right: 16, left: 16),
                    child: CustomTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Currect Number';
                        }
                        return null;
                      },
                      controller: controller,
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 42.0,
                      suffixIcon: const Icon(
                        Icons.phone_android,
                        color: Colors.grey,
                      ),
                      hintText: 'شماره همراه خود را وارد کنید',
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
                      onPressed: () {
                        if (fromKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                    ),
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
