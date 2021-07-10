import 'package:flutter/material.dart';

class Logged extends StatefulWidget {
  @override
  _LoggedState createState() => _LoggedState();
}

class _LoggedState extends State<Logged> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.black, size: 40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                child: Row(
                  children: [
                    CircleAvatar(),
                    VerticalDivider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Micheal John',
                          style: TextStyle(color: Colors.black),
                        ),
                        Divider(height: 7,),
                        Container(
                          // height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Text(
                                'Hydrabad, India',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text('inner',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                  Icon(
                    Icons.attach_money,
                    color: Colors.black,
                  ),
                  Text('5000',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                  VerticalDivider(),
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
        body: Column(),
      ),
    );
  }
}
