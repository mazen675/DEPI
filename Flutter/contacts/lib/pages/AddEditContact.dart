import 'package:flutter/material.dart';

import '../database/ContactDatabase.dart';
import '../models/ContactModel.dart';

class AddEditcontact extends StatelessWidget {
  final nameController;
  final phoneController;
  final emailController;
  final ContactDatabase database;

  const AddEditcontact(
      {super.key,
      required this.nameController,
      required this.phoneController,
      required this.emailController,
      required this.database});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () {
          ContactModel newContact = ContactModel(
            name: nameController.text,
            phone: phoneController.text,
            email: emailController.text,
          );
          nameController.clear();
          phoneController.clear();
          emailController.clear();
          database.addContact(newContact);
          Navigator.pop(context, newContact);  // Pass the new contact back
        },

        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: const Text(
          "Save Contact",
          style: TextStyle(color: Colors.white),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Add/Edit Contact",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: "Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.blue))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  labelText: "Phone Number",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.blue))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.blue))),
            ),
          ),
        ],
      ),
    );
  }
}
