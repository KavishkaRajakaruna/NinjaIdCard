import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:NinjaCard() ,
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        } ,
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'NAME',
               style: TextStyle(
                 color: Colors.grey,
                 letterSpacing: 2.0
               )

            ),
            SizedBox(height: 10.0),
            Text(
                'Chun - Li',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                )

            ),
            SizedBox(height: 30.0,),
            Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0
                )

            ),
            SizedBox(height: 10.0,),
            Text(
                '$level',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                )

            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
               Icon(
                 Icons.email,
                 color: Colors.grey[400],
               ),
                SizedBox(width: 10.0,),
                Text(
                  "chunli@test.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize:18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
