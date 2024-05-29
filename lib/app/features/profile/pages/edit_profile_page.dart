import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController addressController;
  late TextEditingController emailController;
  late TextEditingController zipController;
  late TextEditingController countryController;
  late TextEditingController oldPassController;
  late TextEditingController newPassController;

  @override
  void initState() {
    firstNameController = TextEditingController(text: "Mohammad Abu");
    lastNameController = TextEditingController(text: "Monjur");
    addressController =
        emailController = TextEditingController(text: "amjuiux@gmail.com");
    zipController = TextEditingController(text: "4995");
    countryController = TextEditingController(text: "Bangladesh");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
