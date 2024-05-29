import 'package:flutter/material.dart';
import 'package:protinidhi/app/core/theme/colors.dart';

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
  TextEditingController oldPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();

  bool isOldTapped = false;
  bool isNewTapped = false;

  void toggleOldPass() {
    setState(() {
      isOldTapped = !isOldTapped;
    });
  }

  void toggleNewPass() {
    setState(() {
      isNewTapped = !isNewTapped;
    });
  }

  @override
  void initState() {
    firstNameController = TextEditingController(text: "Mohammad Abu");
    lastNameController = TextEditingController(text: "Monjur");
    addressController =
        TextEditingController(text: "Sugandha, Panchalaish, Chattogram");
    emailController = TextEditingController(text: "amjuiux@gmail.com");
    zipController = TextEditingController(text: "4995");
    countryController = TextEditingController(text: "Bangladesh");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final scaleFactor = mediaQuery.width / 360;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, mediaQuery.height * 0.06),
        child: AppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10 * scaleFactor),
          )),
          leading: GestureDetector(
              onTap: () {}, child: Image.asset("assets/images/profile.png")),
          title: Padding(
            padding: EdgeInsets.only(top: 8.0 * scaleFactor),
            child: Image.asset(
              "assets/images/protinidhi.png",
              height: mediaQuery.height * 0.15,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/menu.png",
                height: mediaQuery.height * 0.025,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 15.0 * mediaQuery.width * 0.002),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mediaQuery.height * 0.015),
              Text(
                "Profile Settings",
                style: TextStyle(
                    fontSize: 17 * scaleFactor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              Row(
                children: [
                  CircleAvatar(
                    radius: 26 * scaleFactor,
                    backgroundColor: AppColors.primaryColor,
                    child: CircleAvatar(
                      radius: 25 * scaleFactor,
                      backgroundImage:
                          const AssetImage("assets/images/profile.png"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Md Arman",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.010),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                color: AppColors.primaryColor,
                child: const Text(
                  "Change Photo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              const Divider(),
              SizedBox(height: mediaQuery.height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "First Name",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                          width: mediaQuery.width * 0.44,
                          child: TextField(
                            controller: firstNameController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          ))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Last Name",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                          width: mediaQuery.width * 0.44,
                          child: TextField(
                            controller: lastNameController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Address",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                      width: mediaQuery.width * 0.94,
                      child: TextField(
                        controller: addressController,
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ))
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Email Address",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                      width: mediaQuery.width * 0.94,
                      child: TextField(
                        controller: emailController,
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ))
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Zip Code",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                          width: mediaQuery.width * 0.44,
                          child: TextField(
                            controller: zipController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          ))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Country",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                          width: mediaQuery.width * 0.44,
                          child: TextField(
                            controller: countryController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              SizedBox(
                  width: mediaQuery.width * 0.94,
                  child: TextField(
                    controller: oldPassController,
                    decoration: InputDecoration(
                        hintText: "Old Password",
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: toggleOldPass,
                            icon: isOldTapped
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.remove_red_eye_outlined))),
                  )),
              SizedBox(height: mediaQuery.height * 0.015),
              SizedBox(
                  width: mediaQuery.width * 0.94,
                  child: TextField(
                    controller: newPassController,
                    decoration: InputDecoration(
                        hintText: "New Password",
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: toggleNewPass,
                            icon: isNewTapped
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.remove_red_eye_outlined))),
                  )),
              SizedBox(
                height: mediaQuery.height * 0.02,
              ),
              Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          fixedSize: Size(mediaQuery.width * 0.97,
                              mediaQuery.height * 0.05),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: const Text(
                        "Update",
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
