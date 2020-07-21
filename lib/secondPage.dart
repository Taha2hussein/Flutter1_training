
import 'package:flutter/material.dart';
import 'package:firstapp/Authers.dart';
class secondPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return secondPageState();
  }

}

class secondPageState extends State<secondPage>{

  List <auther> Authers = [auther('Days', 'taha Hussein'),
                          auther('Happnies', 'taha Husseins'),
                          auther('Pool', ' Hussein'),
                          auther('Reading', 'taha ')];
   

   Widget AuthersList(auther){
     return Center(
            child: Card(
         shadowColor: Colors.black,
         margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
         
         child: Container(
           width: MediaQuery.of(context).size.width - 20,
           height: 100,
              child: Padding(
               padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
               child: new Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             
             children: <Widget>[
                 Text('${auther.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.red),),
                SizedBox(height:10),
                 Text('${auther.autherName}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
             ],
           ),
              ),
         ),
       ),
     );
   }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
         Authers.map((authers) => AuthersList(authers)).toList(),
        
      ),
      
    );
  }

}