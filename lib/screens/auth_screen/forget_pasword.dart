import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Password Reset Page"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 70, 0, 0),
                child: Text(
                  'Enter your Email and we will send you a password reset link.',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.deepPurple),
                ),
              ),
              const SizedBox(height: 50),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Textfield(
                  icon: Icons.email,
                  name: "E-mail",
                ),
              ),
              const SizedBox(height: 30),
              MaterialButton(
                height: 45,
                minWidth: 30,
                onPressed: () {},
                color: Colors.deepPurple,
                child: const Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.white, letterSpacing: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}