import 'package:flutter/material.dart';
import 'details.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String dropdownvalue = 'English';
  var languages = ['English', 'தமிழ்'];

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
              padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
              child: Text(
                'Language',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 15, 0, 0),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                dropdownColor: Color(0xFF213555),
                // Array list of items
                items: languages.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 32,
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
            ), // Corrected placement of closing parenthesis
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Details()), // Replace with the appropriate details page widget
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
