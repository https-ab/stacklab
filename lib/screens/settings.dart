import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 =   newValue1;
    });
  }
  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 =  newValue2;
    });
  }
  onChangeFunction3(bool newValue3) {
    setState(() {
      valNotify3 =  newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                    width: 10
                ),
                Text('Account', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(
              height: 10,
            ),
            buildAccountOption(context, 'Language'),
            buildAccountOption(context, 'Privacy and Security'),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(Icons.volume_up_outlined, color: Colors.blueAccent),
                SizedBox(width: 10),
                Text("Notification", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
              ],
            ),
           Divider(height: 20, thickness: 1),
           SizedBox(height: 10),
            buildNotificationOption('Theme Light', valNotify1, onChangeFunction1),
            buildNotificationOption('Account Active', valNotify2, onChangeFunction2),
            SizedBox(height: 50),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onPressed: () {},
                child: Text('Log Out', style: TextStyle(
                  fontSize: 16, letterSpacing: 2.2, color: Colors.black
                )),
              ),
            )

          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(String title, bool value, Function onChangeMethod) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
            )),
            Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                activeColor: Colors.blueAccent,
                trackColor: Colors.grey,
                value: value,
                onChanged: (bool newValue) {
                  onChangeMethod(newValue);
                },
              ),
            )
          ],
        ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
