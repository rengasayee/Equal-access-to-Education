import 'package:flutter/material.dart';
import 'profile.dart';
import 'course.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  String dropdownvalue = '12';

  var classstud = ['12','11','10','9','8','7','6','5','4','3','2','1'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(120,0,0,60),
              child: Text(
                'Your Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              child: Text(
                  'Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Enter your name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              child: Text(
                  'Class',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,15,0,0),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                dropdownColor: Color(0xFF213555),
                // Array list of items
                items: classstud.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 32
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Course()), // Replace with the appropriate details page widget
          );
          // Add the action you want to perform here
        },
        child: Icon(
          Icons.login_rounded,
          color: Colors.black,
          size: 45,
        ),
        backgroundColor: Color(0xFFFFFFFF),
      ),
    );
  }
}
