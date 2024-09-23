import 'package:contacts/models/ContactModel.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ContactDatabase{
  final _myBox=Hive.box<ContactModel>("contactBox");

  void addContact(ContactModel contactModel){
    _myBox.add(contactModel);
  }
  List<ContactModel> getContacts(){
    return _myBox.values.toList();
  }
  ContactModel? getContactbyPhoneNumber(String phone){
    for(ContactModel contact in getContacts()){
      if(contact.phone==phone){
        return contact;
      }
    }
  }
  void deleteContact(int index){
    _myBox.deleteAt(index);
  }
  void updateContact(int index,ContactModel contactModel){
    _myBox.putAt(index, contactModel);
  }
  void clearDatabase(){
    _myBox.clear();
  }
}