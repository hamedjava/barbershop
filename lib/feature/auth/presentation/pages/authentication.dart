import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test/feature/auth/presentation/pages/login.dart';
import 'package:test/feature/auth/presentation/pages/registeration.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: HexColor('#EB98B6'),
                tabs: const [
                  Tab(
                    child: Text(
                      'ثبت نام',
                      style: TextStyle(
                          fontFamily: 'iranSans',
                          fontSize: 24,
                          color: Colors.black87),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'ورود',
                      style: TextStyle(
                          fontFamily: 'iranSans',
                          fontSize: 24,
                          color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                RegisterationPage(),
                LoginPage(),
              ],
            ),
          ),
        ),
        appBar: _buildAppbar());
  }

  _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: GradientText(
        'Highlight',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 32.0,
        ),
        gradientType: GradientType.linear,
        colors: [HexColor("#EB98B6"), Color.fromARGB(255, 255, 221, 232)],
      ),
    );
  }
}
