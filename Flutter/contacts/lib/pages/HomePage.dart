import 'package:contacts/components/ContactTile.dart';
import 'package:contacts/database/ContactDatabase.dart';
import 'package:contacts/pages/AddEditContact.dart';
import 'package:flutter/material.dart';

import '../models/ContactModel.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ContactDatabase database = ContactDatabase();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var searchController = TextEditingController();

  List<ContactModel> filteredContacts = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      filteredContacts = database.getContacts();
    });
    // Initialize with all contacts
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contacts",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                filteredContacts.clear();
                database.clearDatabase();
              });
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newContact = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddEditcontact(
                database: database,
                nameController: nameController,
                phoneController: phoneController,
                emailController: emailController,
              ),
            ),
          );
          if (newContact != null) {
            setState(() {
              database.addContact(newContact);
              filteredContacts=database.getContacts();
            });
          }
        },
        backgroundColor: Colors.pink,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: filteredContacts.length,
        itemBuilder: (context, index) {
          return ContactTile(
              name: filteredContacts[index].name,
              phone: filteredContacts[index].phone,database: database,);
        },
      ),
    );
  }
}
