import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Shaafici()));
}

class Shaafici extends StatefulWidget {
  @override
  _ShaaficiState createState() => _ShaaficiState();
}

class _ShaaficiState extends State<Shaafici> {
  int shaafici = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Shaafici ID Card'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            shaafici += 1;
          });
        },
        child: Icon(Icons.add,),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 40.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/shaafka.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text('NAME',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text('Shafici',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10.0),
            Text('CURRENT SHAFICI LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 10.0),
            Text(
                '$shaafici',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'shaaficimohamud22@gmail.com',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 18.0,
                    letterSpacing: -1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




