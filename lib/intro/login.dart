import 'package:flutter/material.dart';
import 'package:petui/intro/register.dart';
import 'package:petui/logged/logged.dart';
import 'package:petui/model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  UserDefined userdefined = UserDefined();
  final formKey = GlobalKey<FormState>();
  final userText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double f22 = size.height * .02753;
    double f5 = size.height * .00625;
    double f200 = size.height * .250;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 38.0, right: 38, top: 50),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('assets/landd.png'),
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/paw.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                      Opacity(opacity: 0, child: Divider()),
                      Text(
                        'Login to Pet Animal',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            letterSpacing: 2),
                      ),
                      Opacity(opacity: 0, child: Divider()),
                      Text('Email/Phone',
                          style: userdefined.styleText(size: f22)),
                      Opacity(opacity: 0, child: Divider()),
                      TextFormField(
                        controller: userText,
                        validator: (value) {
                          if (value!.isEmpty || value == '') {
                            return 'Please fill';
                          }
                        },
                        decoration: userdefined.formDecor(
                            text: 'email@gmail.com', sizeFont: 20),
                      ),
                      Opacity(opacity: 0, child: Divider()),
                      Text('Password', style: userdefined.styleText(size: f22)),
                      Opacity(opacity: 0, child: Divider()),
                      TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please fill';
                            }
                          },
                          decoration: userdefined.formDecor(
                              text: '********',
                              sizeFont: 20,
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.black,
                              ))),
                      SizedBox(
                        height: f5,
                      ),
                      Text(
                        'Forget password?',
                        style: TextStyle(decoration: TextDecoration.underline),
                        textAlign: TextAlign.end,
                      ),
                      Opacity(opacity: 0, child: Divider()),
                      SizedBox(
                        height: 55,
                        child: ElevatedButton(
                          style: userdefined.buttonDecor(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              Text(
                                'Log in',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 30),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 30,
                              )
                            ],
                          ),
                          onPressed: () {
                            var key = formKey.currentState;
                            if (key!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Logged()));
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Or',
                        textAlign: TextAlign.center,
                        style: userdefined.styleText(size: 20),
                      ),
                      SizedBox(
                        height: f5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                          ),
                          VerticalDivider(),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          ),
                          VerticalDivider(),
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.instagram),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("If you don't have an account?"),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text('Create here',
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
