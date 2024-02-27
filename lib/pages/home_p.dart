import 'package:calc/components/box.dart';
import 'package:calc/components/button.dart';
import 'package:calc/pages/about.dart';
import 'package:calc/pages/calculator.dart';
import 'package:calc/pages/home.dart';
import 'package:calc/pages/login.dart';
import 'package:calc/pages/signup.dart';
import 'package:calc/pages/Pictures.dart';
import 'package:calc/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calc/pages/contacts.dart';

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'S H E D A V',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Row(
            children: [
              MyBox(
                color: Color.fromARGB(255, 13, 68, 69),
                children: [
                  Text(
                    'Theme',
                    style: TextStyle(color: Colors.white),
                  ),
                  MyButton(
                    color: Colors.brown,
                    onTap: () {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();
                    },
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'M E N U',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.calculate),
                title: Text(
                  'Calculator',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Calculator()));
                },
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text(
                  'About Me',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => UserAbout()));
                },
              ),
              ListTile(
                leading: Icon(Icons.app_registration),
                title: Text(
                  'Signup',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person_2),
                title: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text(
                  'Gallery',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Image_P()));
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Contacts',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyContact()));
                },
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          'SHEDAV',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
