import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            itemProfile('Name', 'Adwait Rane', Icons.person),
            SizedBox(
              height: 10,
            ),
            itemProfile('Phone', '8274268166', Icons.phone),
            SizedBox(
              height: 10,
            ),
            itemProfile('Email', 'adwaitrane@gmail.com', Icons.mail),
            SizedBox(
              height: 10,
            ),
            itemProfile('Password', '********', Icons.password),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15),
                  ),
                  child: Text('Save Information')),
            )
          ],
        ),
      ),
    );
  }
  
  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0,5),
                color: Colors.blueAccent.withOpacity(.1),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.edit, color: Colors.grey),
        tileColor: Colors.white,
      ),
    );
  }
}

