import 'package:cafeui/screens/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/coffee.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent, 
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 87, 87, 92).withOpacity(0.9),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo.png', width: MediaQuery.of(context).size.width * 0.7),
                      SizedBox(height: 0), 
                      Text('"Latte but never late"',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width*0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "User Name",
                            hintStyle: TextStyle(color: Colors.white),
                            // border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container( width: MediaQuery.of(context).size.width*0.7,
                        child: TextField(
                          decoration: 
                          InputDecoration(
                            
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white),
                            // border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 80.0), 
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: (
                          
                        ) {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Text("Login", style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 80.0), 
                          side: BorderSide(color: Colors.white, width: 2),
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Text("Signup", style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          print("you tapped on privacy policy");
                        },
                        child: Text("Privacy Policy", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
