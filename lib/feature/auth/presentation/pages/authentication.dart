import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test/feature/auth/presentation/pages/user_login.dart';
import 'package:test/feature/auth/presentation/pages/user_register.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
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
                UserRegister(),
                UserLogin(),
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
