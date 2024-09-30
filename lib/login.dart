import 'package:flutter/material.dart';
import 'package:kuis_124220021/home.dart';
import 'package:kuis_124220021/registrasi.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String username = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.network(
                'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/img_authentication.webp',
                height: 200),
            const SizedBox(height: 15),
            const Text(
              "Login",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Login untuk mengakses lebih banyak fitur",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 15),
            _usernameField(),
            const SizedBox(height: 5),
            _passwordField(),
            const SizedBox(height: 15),
            _loginButton(),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registrasi()));
              },
              child: Text('Belum Punya Akun?'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        enabled: true,
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) {
          password = value;
        },
        enabled: true,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          if (username == "Luthfi" && password == "124220021") {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => home(
                          username: username,
                        )));
          } else {
            text = "Login Gagal";
            SnackBar snackBar = SnackBar(content: Text(text));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: const Text('Login'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
