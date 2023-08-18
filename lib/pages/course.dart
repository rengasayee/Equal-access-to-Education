import 'package:flutter/material.dart';
import 'profile.dart';
import 'chemistry.dart';
import 'physics.dart';
import 'mathematics.dart';
import 'biology.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Row(
          children: <Widget>[
            // ... (app bar code)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/EDUBRIDGE.png'),
                radius: 30.0,
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EduBridge',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3.0),
                  Text(
                    'Crossing boundaries for\naccessible learning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          // ... (app bar actions)
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            icon: Icon(Icons.account_circle_rounded,size: 40.0,color: Color(0xFFFF5EFE7)),
            label: Text(''),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              // ... (stack code)
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
                child: Image.asset(
                  'assets/notepenimage.jpg',
                  height: 200,
                  width: 370, // Make sure width and height are equal for a perfect circle
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 60.0, 160.0, 0),
                child: Text(
                  'Discover Here',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 100.0, 0, 0),
                child: Container(
                  width: 325,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'What do you want to learn?',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          // Add the rest of your layout here
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // ... (container code for Chemistry)
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlueAccent[100],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Chemistry()));
                      },

                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/chemistry icon.png', // Replace with your chemistry image asset
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                            child: Text(
                              'Chemistry',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // ... (container code for Physics)
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.white,
                  width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                    color: Colors.lightBlueAccent[100],
                  ),
                  child: TextButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Physics()));
                  },
                  child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                  Image.asset(
                  'assets/physics icon.png', // Replace with your physics image asset
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                    child: Text(
                    'Physics',
                    style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    ),
                    ),
                  ),
                  ],
                    ),
                  ),
                ),
                  ),
                ),
              ],
            ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // ... (container code for Mathematics)
                  decoration: BoxDecoration(
                  border: Border.all(
              color: Colors.white,
              width: 2,
              ),
              borderRadius: BorderRadius.circular(30),
                    color: Colors.lightBlueAccent[100],
              ),
              child: TextButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Mathematics()));
              },
              child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
              Image.asset(
              'assets/maths icon.png', // Replace with your math image asset
              width: 70,
              height: 50,
              fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                child: Text(
                'Mathematics',
                style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
                ),
              ),
              ],
              ),
              ),
              ),
              ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // ... (container code for Biology)

                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.white,
                  width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                    color: Colors.lightBlueAccent[100],
                  ),
                  child: TextButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Biology()));
                  },
                  child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                  Image.asset(
                  'assets/class 12 cover pic.jpg', // Replace with your chemistry image asset
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                    child: Text(
                    'Biology',
                    style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    ),
                    ),
                  ),
                  ],
                  ),
                  ),
                  ),
                  ),
                  ),
                  ],
                  ),
                  ],
                  ),

                  );
                  // Add the Chemistry and Physics buttons within the same Column
                  // after the rest of the layout

                }
              }
