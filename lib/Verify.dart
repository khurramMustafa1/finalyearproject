import 'package:flutter/material.dart';
import 'package:fyppproject/loginsucessfull.dart';
import 'package:pinput/pinput.dart';

class verify extends StatefulWidget {
  const verify({super.key});

  @override
  State<verify> createState() => _VerifyState();
}

class _VerifyState extends State<verify> {
  final TextEditingController _pinController = TextEditingController();

  void _onVerifyPressed() {
    if (_pinController.text.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter the 6-digit PIN."),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const loginsucessfull(),
        ),
      );
    }
  }

  void _onResendCodePressed() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Code sent successfully."),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 26),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/1.png'),
                const SizedBox(height: 23),
                const Text(
                  "Almost there ",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 40),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Please enter the 6-digit code sent to your email',
                        style: TextStyle(fontSize: 14, color: Color(0xff0D4858)),
                      ),
                      TextSpan(
                        text: " khurrammustafa700@gmail.com",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                        text: ' for verification',
                        style: TextStyle(color: Color(0xff0D4858)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Pinput(
                  controller: _pinController,
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width: 50,
                    height: 50,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  errorPinTheme: PinTheme(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: _onVerifyPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0D4858),
                    minimumSize: const Size(295, 50),
                  ),
                  child: const Text(
                    "VERIFY",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 39),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Did not receive any code?",
                    style: TextStyle(
                      color: Color(0xff0D4858),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Request new code in 00:30 seconds",
                    style: TextStyle(
                      color: Color(0xff0D4858),
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: _onResendCodePressed,
                  child: const Text(
                    "Resend again",
                    style: TextStyle(
                      color: Color(0xff0D4858),
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
