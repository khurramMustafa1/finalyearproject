import 'package:flutter/material.dart';
import 'package:fyppproject/Login.dart';
import 'package:string_validator/string_validator.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false; // Corrected the checkbox variable declaration

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 36, right: 24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/1.png', width: 126, height: 135),
                SizedBox(height: 14),
                Text(
                  "Get Started",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                Text(
                  "by creating a free account",
                  style: TextStyle(color: Color(0xff0D4858), fontSize: 14),
                ),
                SizedBox(height: 14),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffC4C4C4).withOpacity(0.4),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: "Full Name",
                    suffixIcon: Icon(Icons.person, color: Color(0xff000000)),
                  ),
                ),
                SizedBox(height: 14),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffC4C4C4).withOpacity(0.4),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: 'Valid email',
                    suffixIcon: Icon(Icons.email, size: 24),
                  ),
                ),
                SizedBox(height: 14),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffC4C4C4).withOpacity(0.4),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: 'Phone number',
                    suffixIcon: Icon(Icons.phone, size: 24),
                  ),
                ),
                SizedBox(height: 14),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffC4C4C4).withOpacity(0.4),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: 'Strong password',
                    suffixIcon: Icon(Icons.lock, size: 24),
                  ),
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!; // Fixed typo here
                        });
                      },
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        'by checking the boc you agree to our terms and condition',
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        style: TextStyle(fontSize: 12,color: Color(0xff0D4858),), // Increased font size
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                ElevatedButton(
                  onPressed: (
                      ) {
                    if (nameController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter name")));
                      return;
                    }
                    if (emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter valid email")));
                      return;
                    }
                    if (!emailController.text.isEmail) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter email")));
                      return;
                    }
                    if (phoneController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Enter phone number")));
                      return;
                    }
                    if (phoneController.text.length != 11) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Phone number must be 11 digits")));
                      return;
                    }
                    if (passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter password")));
                      return;
                    }
                    if (passwordController.text.length < 6) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Password must be 6 or more digits")));
                      return;
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D4858),
                    minimumSize: Size(300, 50),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text("or"),
                    SizedBox(width: 5),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFFFFF),
                    minimumSize: Size(294.57, 43.24),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png',
                          height: 14, width: 14),
                      SizedBox(width: 10),
                      Text(
                        "Sign up with Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.72,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFFFFF),
                    minimumSize: Size(294.57, 43.24),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/fb.png', height: 14, width: 14),
                      SizedBox(width: 10),
                      Text(
                        "Sign up with Facebook",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.72,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member?",
                      style: TextStyle(fontSize: 13),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Color(0xff0D4858),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
