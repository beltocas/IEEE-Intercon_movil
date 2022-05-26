import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:intercon_app/pages/inicio_page.dart';

const _url = 'https://www.intercon.org.pe/2022/';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fondo_login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 0, right: 300),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InicioPage()),
                    );
                  },
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/boton-atras.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: SizedBox(
                  height: 100,
                  width: 200,
                  child: Image.asset(
                    'assets/images/intercon 1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 80),
                child: SizedBox(
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    'assets/images/icon-user.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50, bottom: 35),
                child: TextField(
                    controller: email,
                    decoration: InputDecoration(hintText: "Username")),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50, bottom: 10),
                child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password")),
              ),
              Container(
                margin: EdgeInsets.only(left: 150),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Color(0xffb0979797),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 300,
                height: 45,
                margin: EdgeInsets.only(top: 65),
                decoration: BoxDecoration(
                  color: Color(0xffb076f77),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: _launchURL,
                  color: Colors.white.withOpacity(1),
                  child: Text(
                    "Visit us at https://www.intercon.org.pe/2022/",
                    style: TextStyle(
                        color: Color(0xffb0979797),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
