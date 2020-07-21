import 'package:firstapp/secondPage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
   return homeState();
  }

}

class homeState extends State<Home>{

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: AppBar(
        title: Text('Test',style: TextStyle(fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         SizedBox(height:40),
         new Center(
              child: CircleAvatar(
             child: Image.asset("assets/66.png"),
             radius: 30,
             
           ),
         ),

        new SizedBox(height:20),
        new Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
         child: new Divider(
           height: 1,
           color: Colors.black,
             ),
          ),
          SizedBox(height:30),
          new Padding(
               padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: new Row(
              children: <Widget>[
                Text('Taha Hussein'),
                SizedBox(width:30),
                Icon(
                  Icons.email
                ),
                SizedBox(width:10),
                Text('taha.hussein.two@gmail.com')
              ],
            ),
          ),
        new Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text('${counter}',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        SizedBox(height:30),
        new Center(
            child: new RaisedButton(
              color: Colors.black,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => secondPage()));
            },
            child: Text('navigation',style: TextStyle(color: Colors.white),),
          ),
        )
      
       ],
     ),
       floatingActionButton:FloatingActionButton(
          onPressed: (){
            setState(() {
              counter += 1;
            });
            
          },
          child: Text("add",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.red,
        )
    );
  }

}