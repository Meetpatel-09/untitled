import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int counter = 0;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Image.network("https://www.miraeassetmf.co.in/images/default-source/maq/registration.png?sfvrsn=aa71ff68_0"),
            Image.asset("assets/images/supervisor.jpeg"),
            const SizedBox(height: 30.0),
            const Text(
              "Welcome",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: "Enter Username",
                      label: Text("Username"),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: "Enter Password",
                      label: Text("Password"),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // counter++;
                      // print("button precced " + counter.toString() + " times");
                      Navigator.pushNamed(
                        context,
                        MyRoutes.homeRoute,
                      );
                    },
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(120, 40))),
                    child: const Text("Log In"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
