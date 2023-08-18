import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher_string.dart';
import 'details.dart';
import 'language.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';


void main() => runApp(MaterialApp(
  home: Profile(),
));

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // bool _loading;
  // double _progressValue;
  @override

  // void initState() {
  //   super.initState();
  //   _loading = false;
  //   _progressValue = 0.0;
  // }

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('My Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        //print('in profile-', inputname, dropdownvalue);
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Name: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Your Name',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Content Language: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'English',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Class Selected: Class',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '12',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Course Completion Percentage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Container(
              height: 80.0,
              width: 250.0,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF5EFE7),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: CircularProgressIndicatorApp()
                    // child: new Text("Progress Bar",
                    //   style: TextStyle(fontSize: 22, color: Colors.black),
                    //   textAlign: TextAlign.center,),
                  )),
            ),
            //SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Assessment Improvement Rate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150.0,
              width: 250.0,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF5EFE7),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: new Text("Graph",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                      textAlign: TextAlign.center,),
                  )),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Learning Reminders',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 110),
                  TextButton.icon(
                      onPressed: ()  {
                        // FlutterAlarmClock.createAlarm(hour: 23, minutes: 59);
                      },
                      icon: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,),
                      label: Text('')
                  ),
                ],
              ),
            ),
            //SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Suggestions/Complaints',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 60),
                  TextButton.icon(
                      onPressed: ()  {
                        // const url = 'https://forms.gle/RzeYsWApt74v468u9';
                        // launch(url);
                      },
                      icon: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,),
                      label: Text('')
                  ),
                ],
              ),
            ),
            //SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Share the EduBridge App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 60),
                  TextButton.icon(
                      onPressed: () {
                      },
                      icon: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,),
                      label: Text('')
                  ),
                ],
              ),
            ),
            //SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delete this profile',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 140),
                  TextButton.icon(
                      onPressed: ()  {
                      },
                      icon: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,),
                      label: Text('')
                  ),
                ],
              ),
            ),
            //SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

// This is the stateless widget that the main application instantiates.
class CircularProgressIndicatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.red,
      strokeWidth: 8,);
  }
}
