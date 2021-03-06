import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mak_b/pages/register_page.dart';
import 'package:mak_b/variables/constants.dart';
import 'package:mak_b/variables/size_config.dart';
import 'package:mak_b/widgets/gradient_button.dart';
import '../home_nav.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Log In',style: TextStyle(color: Colors.black)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height*.05),
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(context,5)),
              height: getProportionateScreenWidth(context,100),
              width: getProportionateScreenWidth(context,100),
              decoration: BoxDecoration(
                color: Colors.white70,
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/icons/logo.PNG"),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(18, 142, 104, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey[100]!))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Phone number",
                                hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: GradientButton(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeNav()));
                        },
                        borderRadius: 5.0,
                        height: size.width * .12,
                        width: size.width * .9,
                        gradientColors: [Color(0xFF0198DD), Color(0xFF19B52B)]),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 9.0,right: 9.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            child: Text("Forgot Password?", style: TextStyle(color: kPrimaryColor)),
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: Text("Create New Account?", style: TextStyle(color: kPrimaryColor))),
                      ],
                    ),
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
