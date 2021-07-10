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
          leading: Icon(Icons.menu, color: Colors.black, size:40),
          title: Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
                        // height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.blue, size: 20,),
                            Text('Hydrabad, India', style: TextStyle(fontSize: 10),)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row()
            ],
          ),
        ),
        body: Column(),
      ),
    );
  }
}
