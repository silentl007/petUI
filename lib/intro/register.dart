import 'package:flutter/material.dart';
import 'package:petui/model.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  UserDefined userdefined = UserDefined();
  bool? _check = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double f22 = size.height * .02753;
    double f5 = size.height * .00625;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 38.0, right: 38, top: 30),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
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
                  Text('Create An Account',
                      style: userdefined.styleText(size: 30)),
                      Divider(color: Colors.transparent,),
                  Text('First Name', style: userdefined.styleText(size: f22)),
                  TextFormField(
                    decoration:
                        userdefined.formDecor(text: 'Micheal', sizeFont: 20),
                  ),
                  Divider(color: Colors.transparent,),
                  Text('Last Name', style: userdefined.styleText(size: f22)),
                  TextFormField(
                      decoration:
                          userdefined.formDecor(text: 'John', sizeFont: 20)),
                  Divider(color: Colors.transparent,),
                  Text('Email', style: userdefined.styleText(size: f22)),
                  TextFormField(
                    decoration: userdefined.formDecor(
                        text: 'email@gmail.com', sizeFont: 20),
                  ),
                  Divider(color: Colors.transparent,),
                  Text('Password', style: userdefined.styleText(size: f22)),
                  TextFormField(
                      decoration: userdefined.formDecor(
                          text: '********',
                          sizeFont: 20,
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ))),
                  Divider(color: Colors.transparent,),
                  Text('Confirm Password',
                      style: userdefined.styleText(size: f22)),
                  TextFormField(
                      decoration: userdefined.formDecor(
                          text: '********',
                          sizeFont: 20,
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ))),
                  Divider(color: Colors.transparent,),
                  CheckboxListTile(
                    value: _check,
                    onChanged: (bool? value) {
                      setState(() {
                        _check = value;
                        print(value);
                      });
                    },
                    title: Text('I have accepted all terms and conditions'),
                    // subtitle: Text('Tap to accept', style: TextStyle(fontStyle: FontStyle.italic),),
                  ),
                  SizedBox(
                    height: 55,
                    child: ElevatedButton(
                      style: userdefined.buttonDecor(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Text(
                            'Signup',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 30),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 30,
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
