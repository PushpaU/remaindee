import 'package:flutter/material.dart';
import 'engine/remainder.dart';
import 'cards.dart';
import 'engine/user.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class CardDetails extends StatelessWidget {
  final Remainder remainder;
  CardDetails(this.remainder, {Key? key}) : super(key: key);
  UserClass user = UserClass(); //check
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  // TextEditingController date = TextEditingController();  //why?
  late DateTime _dateTime;

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
          ListTile(
            title: Text("NAME : ${remainder.remainderName}"),
          ),
          ListTile(
            title: Text("DESCRIPTION : ${remainder.description}"),
          ), 
          ListTile(
            title: Text("DATE : ${remainder.time.toString()}"),
          ),
          SizedBox(height: 50),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('TURN OFF')),
              
          SizedBox(height: 50),

        //   ElevatedButton(
        //       style: ElevatedButton.styleFrom(
        //         primary: Colors.black,
        //       ),
        //       onPressed: () {
        //         showDialog(
        //         context: context,
        //         builder: (_) => AlertDialog(
        //               title: Column(
        //                 children: [
        //                   Container(
        //                     child: Text('Add Remainder'),
        //                   ),
        //                   TextField(
        //                     decoration: InputDecoration(
        //                       labelText: 'Name',
        //                     ),
        //                     controller: name,
        //                     style: TextStyle(color: Colors.white),
        //                   ),
        //                   TextField(
        //                     decoration: InputDecoration(
        //                       labelText: 'Description',
        //                     ),
        //                     controller: description,
        //                     style: TextStyle(color: Colors.white),
        //                   ),
        //                   SizedBox(
        //                     height:10,
        //                   ),
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       // Text(_dateTime == null
        //                       //     ? 'No date Choosen!'
        //                       //     : _dateTime.toString()),
        //                       SizedBox(
        //                         height: 10,
        //                       ),
        //                       TextButton(
        //                         onPressed: () {
        //                           DatePicker.showDateTimePicker(context,
        //                               showTitleActions: true,
        //                               onChanged: (date) {
        //                             // print('change $date in time zone ' +     //Doubt
        //                             // date.timeZoneOffsetnHours.toString());
        //                           }, onConfirm: (date) {
        //                             // print('confirm $date');
        //                             _dateTime = date;
        //                           },
        //                               currentTime: DateTime.now(),
        //                               locale: LocaleType.en);
        //                         },
        //                         child: Text(
        //                           'Select Date Time',
        //                           style: TextStyle(color: Colors.black),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //               actions: [
        //                 ElevatedButton(
        //                   style: ElevatedButton.styleFrom(
        //                     primary: Colors.black,
        //                   ),
        //                   onPressed: () {
        //                     Navigator.pop(context);
        //                   },
        //                   child: const Text('No'),
        //                 ),
        //                 ElevatedButton(
        //                   style: ElevatedButton.styleFrom(
        //                     primary: Colors.black,
        //                   ),
        //                   onPressed: () {
        //                     setState(() {});
        //                     // addUser(111, 'prathis', 'kdfk', DateTime.now(),
        //                     //     'language');
        //                     user.remainders.add(
        //                       Remainder(
        //                           1, name.text, description.text, _dateTime),
        //                     );
        //                     Navigator.pop(context);
        //                     // print(user.remainders[0].time);
        //                   },
        //                   child: const Text('Yes'),
        //                 ),
        //               ],
        //               elevation: 24.0,             
        //               backgroundColor: Colors.grey,
        //             ));
        //   }, 
        //   // backgroundColor: Colors.red,
        //   // child: Icon(Icons.add),
        // ),
              //child: const Text(' Edit ')),  
        ],        
      ),
    );
  }

 }

         // children: [
          
        //   Text("NAME:${remainder.remainderName}"),
        //   SizedBox(height: 10),
        //   Text("DESCRIPTION:${remainder.description}"),
        //   SizedBox(height: 10),
          
