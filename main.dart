import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ServicePage(),
    );
  }
}

class ServicePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'When my product can be delivered?',
                border: OutlineInputBorder(),
              ),
            ),
             SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'I have missing or not recieve my product',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'How can I do for refunding if  has any probems?',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
             SizedBox(height: 25.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Why the deliver didn’t on time?',
                border: OutlineInputBorder(),
              ),
            ),
           ElevatedButton(
            child : const Text ( '>') ,
              onPressed: () {
                Navigator . push (
context ,
MaterialPageRoute ( builder :
( context ) => const SecondRoute ()) ,
);
              }, 
            ),
           ],
      ),
        ),
    );
  }
}
class SecondRoute extends StatelessWidget {
const SecondRoute ({ Key ? key }) : super ( key : key );
@override
Widget build ( BuildContext context ) {
return Scaffold (
appBar : AppBar (
title : const Text ( 'Service') ,
) ,
body : Center (
child : ElevatedButton (
onPressed : () {
Navigator . pop ( context );
// Navigate back to first route when tapped .
} ,
child : const Text ( 'Back Homepage!') ,
) ,
) ,
);
}
}