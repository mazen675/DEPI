import 'package:hive/hive.dart';

part 'ContactModel.g.dart';

@HiveType(typeId: 0)
class ContactModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String phone;
  @HiveField(2)
  final String email;

  ContactModel({required this.name, required this.phone,required this.email});
}