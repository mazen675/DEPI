import 'package:contacts/database/ContactDatabase.dart';
import 'package:contacts/pages/AddEditContact.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String name;
  final String phone;
  final ContactDatabase database;

  const ContactTile(
      {super.key,
      required this.name,
      required this.phone,
      required this.database});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {
          final contact=database.getContactbyPhoneNumber(phone);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddEditcontact(
                      nameController: TextEditingController(text: name),
                      phoneController: TextEditingController(text: phone),
                      emailController: TextEditingController(text: contact!.email),
                      database: database)));
        },
        child: Card(
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                name.toUpperCase()[0],
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  phone,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
