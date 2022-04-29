import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nerpogram1/new_user.dart';
import 'package:nerpogram1/utils/colors.dart';
import 'package:nerpogram1/widgets/signin_textfield.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(
              'assets/images/instagram.svg',
              height: 70,
              color: Colors.white,
            ),
            const SizedBox(height: 30),
            SignInTextField(
              hintText: 'email',
              textEditingController: _emailController,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            SignInTextField(
              hintText: 'password',
              textEditingController: _passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: double.infinity,
                color: kBlueColor,
                child: const Text('Log in', style: TextStyle(fontSize: 20)),
              ),
            ),
            const SizedBox(height: 20),
            Spacer(),
            GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => NewUserPage())),
                child: const Text('Don\'t have an account?')),
          ],
        ),
      ),
    );
  }
}
