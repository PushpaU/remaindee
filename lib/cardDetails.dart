import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'engine/remainder.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

//import 'cards.dart';

class CardDetails extends StatelessWidget {
  final Remainder remainder;
  CardDetails(this.remainder, {Key? key}) : super(key: key);
  

  // TextEditingController name = TextEditingController();
  // TextEditingController description = TextEditingController();
  // TextEditingController DateTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remaindee'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(244, 67, 54, 1),
      ),
      body: Column(
        children: [
          // Container(
          //  child: ListTile(
          //    title: TextField(
          //      decoration: InputDecoration(
          //        labelText: "NAME :",
          //        hintText:"${remainder.remainderName}"
          //      ),
          //    ),
          //  ),
          // )
          // ListTile(
          //   title: Text("NAME : ${remainder.remainderName}"),

          //   subtitle: Text("${remainder.remainderName}" ),
          // ),

          ListTile(
            title: Text(
              "NAME :",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.red),
            ),
            subtitle: Text(
              "${remainder.remainderName}",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  height:1.5,
                  color: Colors.black),
            ),
          ),
          ListTile(
            title: Text(
              "DESCRIPTION :",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  height: 2.0,
                  color: Colors.red),
            ),
            subtitle: Text(
              "${remainder.description}",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  height:1.5,
                  color: Colors.black),
            ),
          ),
          ListTile(
            title: Text(
              "DATETIME :",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  height: 2.0,
                  color: Colors.red),
            ),
            subtitle: Text(
              "${DateFormat.yMMMMd('en_US').format(remainder.time)} ${DateFormat.jm().format(remainder.time)}",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  height:1.5,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 50),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                Navigator.pop(context);
                
              },
              child: const Text('TURN OFF')),
        ],
      ),
    );
  }
}
