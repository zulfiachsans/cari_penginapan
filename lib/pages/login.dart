// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../component/comp_text_field.dart';
import '../component/comp_text_field_password.dart';
import 'lupa_password/lupa_pass.dart';
import 'main_page/main_page.dart';
import 'package:cari_penginapan/pages/utilities/constant.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void handleLupaPassword(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const LupaPass()));
  }

  void handleLoginWithUsername(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const MainPage()));
  }

  void handleLoginWithGoogle() {}

  Widget compHeight(BuildContext context, {Widget? child, double? width}) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: width,
      height: size.height * .0714,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final Widget title = Text(
      "Masuk",
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: purpleColor,
        fontSize: 20,
      ),
    );

    // ignore: prefer_const_constructors
    final Widget fieldUsername = CompTextFieldV1(
      hintText: 'Username',
    );

    // ignore: prefer_const_constructors
    final fieldPassword = CompTextFieldV2(
      hintText: 'Password',
    );

    final Widget buttonLupaPass = Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => handleLupaPassword(context),
        child: Text(
          'Lupa Password?',
          style: TextStyle(
            color: Color(0xff847878),
          ),
        ),
      ),
    );

    final buttonLoginWithUsername = compHeight(
      context,
      width: size.width * .8,
      child: ElevatedButton(
        onPressed: () => handleLoginWithUsername(context),
        child: Text(
          'MASUK',
          style: TextStyle(),
        ),
      ),
    );
    final buttonLoginWithGoogle = compHeight(
      context,
      width: size.width * .8,
      child: ElevatedButton(
        onPressed: handleLoginWithGoogle,
        style: ElevatedButton.styleFrom(primary: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/google.png"),
            const Text(
              'Google',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 16),
            child: Column(
              children: [
                SizedBox(height: AppBar().preferredSize.height),
                Center(child: title),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * .0307),
                  child: SizedBox(
                    height: size.height * .2,
                    child: Image.asset('assets/images/login_illustration.png'),
                  ),
                ),
                fieldUsername,
                const SizedBox(height: 16),
                fieldPassword,
                buttonLupaPass,
                buttonLoginWithUsername,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    children: const [
                      Expanded(child: Divider()),
                      Text("Atau"),
                      Expanded(child: Divider())
                    ],
                  ),
                ),
                buttonLoginWithGoogle
              ],
            ),
          ),
        ),
      ),
    );
  }
}
