import 'package:flutter/material.dart';
import 'package:fyppproject/accountseeting.dart';
import 'package:fyppproject/booking.dart';
import 'package:fyppproject/currencyconverter.dart';
import 'package:fyppproject/helpandsupport.dart';
import 'package:fyppproject/language.dart';
import 'package:fyppproject/privacy.dart';
import 'package:fyppproject/storage.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  bool isDarkMode = false; // Tracks Dark Mode toggle state
  bool isNotificationsOn = true; // Tracks Notifications toggle state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D4858),
      appBar: AppBar(
        backgroundColor: const Color(0xff0D4858),
        leading: IconButton(
          onPressed: () {
            // Handle back action
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: Color(0xffADD2DC),
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundImage: const AssetImage("assets/images/profile.png"),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Account settings
                  buildSettingsOption(
                    context,
                    "Account settings",
                    Icons.person,
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => accountseeting())),
                  ),
                  // Language
                  buildSettingsOption(
                    context,
                    "Language",
                    Icons.language,
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => language())),
                  ),
                  // Notifications Toggle
                  buildToggleOption(
                    context,
                    "Notifications",
                    Icons.notifications,
                    isNotificationsOn,
                        (value) {
                      setState(() {
                        isNotificationsOn = value;
                      });
                      print('Notifications toggled: ${isNotificationsOn ? "On" : "Off"}');
                    },
                  ),
                  // Dark Mode Toggle
                  buildToggleOption(
                    context,
                    "Dark Mode",
                    Icons.dark_mode,
                    isDarkMode,
                        (value) {
                      setState(() {
                        isDarkMode = value;
                      });
                      print('Dark Mode toggled: ${isDarkMode ? "On" : "Off"}');
                    },
                  ),
                  // Data Storage
                  buildSettingsOption(
                    context,
                    "Data Storage",
                    Icons.storage,
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => storage())),
                  ),
                  // Bookings
                  buildSettingsOption(
                    context,
                    "Bookings",
                    Icons.hourglass_empty,
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => booking())),
                  ),
                  // Privacy and Security
                  buildSettingsOption(
                    context,
                    "Privacy and Security",
                    Icons.lock,
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => privacy())),
                  ),
                  // Currency Converter
                  buildSettingsOption(
                    context,
                    "Currency Converter",
                    Icons.currency_exchange,
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => currency())),
                  ),
                  // Help and Support
                  buildSettingsOption(
                    context,
                    "Help and support",
                    Icons.help,
                        () => Navigator.push(context, MaterialPageRoute(builder: (context) => help())),
                  ),
                  // Logout with confirmation dialog
                  buildSettingsOption(
                    context,
                    "Logout",
                    Icons.logout,
                        () => showLogoutDialog(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSettingsOption(
      BuildContext context,
      String title,
      IconData icon,
      VoidCallback onPressed,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: const Color(0xff68ADC0), size: 28),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xffADD2DC),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildToggleOption(
      BuildContext context,
      String title,
      IconData icon,
      bool value,
      ValueChanged<bool> onChanged,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              print('$title icon pressed');
            },
            icon: Icon(icon, color: const Color(0xff68ADC0), size: 28),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('$title text pressed');
              },
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xffADD2DC),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xff68ADC0),
            inactiveThumbColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Logout"),
        content: const Text("Are you sure you want to logout?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              print('Logout cancelled');
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              print('User logged out');
              // Perform logout action here
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }
}
