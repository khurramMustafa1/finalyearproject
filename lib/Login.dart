import 'package:flutter/material.dart';
import 'package:fyppproject/Register.dart';
import 'package:fyppproject/Verify.dart';
class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _RegisterState();
}

class _RegisterState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false; // Corrected the checkbox variable declaration

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                  "Welcome back",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Sign in to acess your account",
                  style: TextStyle(color: Color(0xff0D4858), fontSize: 14),
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
                    suffixIcon: Icon(Icons.email, size: 24,color: Color(0xffC4C4C4),),
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
                   suffixIcon: Icon(Icons.lock,size: 24,color: Color(0xffC4C4C4),)
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
                        'Remember me',
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        style: TextStyle(fontSize: 12,color: Color(0xff252525)), // Increased font size
                      ),
                    ),
                    SizedBox(width: 20,),
                    TextButton(onPressed: (){}, child: Text("Forget password?",style:
                    TextStyle(color: Color(0xff0D4858),fontSize: 12),))
                  ],
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    if (emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("email not valid")));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>verify()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D4858),
                    minimumSize: Size(300, 50),
                  ),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 68.5),
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
                        "continue with Google",
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
                        "continue with Facebook",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.72,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:31.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New Member?",
                      style: TextStyle(fontSize: 15,color: Color(0xff252525),),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Color(0xff0D4858),
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
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