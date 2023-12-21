import 'package:flutter/material.dart';
import 'package:test/feature/auth/presentation/widgets/buttons/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'لطفا اطلاعات زیر را وارد کنید',
                      style: TextStyle(
                          fontFamily: 'iranSans', color: Colors.black87),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      validator: (value) {
                        return null;
                      },
                      decoration: const InputDecoration(
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
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.key_outlined,
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
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      '! رمز عبور را فراموش کرده ام ',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: CustomButton(
                      title: 'ورود',
                      onPressed: () {},
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 48.0),
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            '!ثبت نام کنید',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 48.0),
                        child: Text(
                          ' اگر در هایلایت عضو نیستید',
                          style: TextStyle(
                              fontFamily: 'iranSans', color: Colors.black87),
                        ),
                      ),
                    ],
                  )
                  //
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
