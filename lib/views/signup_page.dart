import 'package:flowers/theme/colors.dart';
import 'package:flowers/views/login_page.dart';
import 'package:flowers/widgets/button_appbar.dart';
import 'package:flowers/widgets/textfield_input.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/sign_image.png",
                    height: 230,
                    width: 230,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 150,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "SignUp Account",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Hi,welcome back!",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      TextFieldInput(
                          textEditingController: userController,
                          hintText: "Username",
                          labale: "Username",
                          isPass: false,
                          icon: Icons.person),
                      const SizedBox(height: 20),
                      TextFieldInput(
                          textEditingController: emailController,
                          hintText: "Email",
                          labale: "Email",
                          isPass: false,
                          icon: Icons.email),
                      SizedBox(height: 20),
                      TextFieldInput(
                          textEditingController: passwordController,
                          hintText: "Password",
                          labale: "Password",
                          isPass: true,
                          icon: Icons.lock),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgitpassword?",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ProceedButton(),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont have an Account?",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
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
