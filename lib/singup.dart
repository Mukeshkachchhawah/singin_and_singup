import 'package:ecommerce/homepage.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text("Sing Up"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 17, top: 20),
            child: Text("Create Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.skip_next,
                    color: Colors.white,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  labelText: "Surname",
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.skip_next,
                    color: Colors.white,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.skip_next,
                    color: Colors.white,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: TextField(
              cursorColor: Colors.white,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.skip_next,
                    color: Colors.white,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.fingerprint,
                    color: Colors.white,
                  )),
              const Text(
                "Use Fingerprint to login",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 234, 255)),
                child: const Center(
                    child: Text(
                  "Sing Up",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Login in",
                style: TextStyle(color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}
