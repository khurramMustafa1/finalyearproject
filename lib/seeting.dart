import 'package:flutter/material.dart';
import 'package:fyppproject/accountseeting.dart';
import 'package:fyppproject/booking.dart';
import 'package:fyppproject/currencyconverter.dart';
import 'package:fyppproject/helpandsupport.dart';
import 'package:fyppproject/language.dart';
import 'package:fyppproject/privacy.dart';
import 'package:fyppproject/storage.dart';

class setting extends StatelessWidget {
  const setting({super.key});

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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => accountseeting()));
                            print('Account settings icon pressed');
                          },
                          icon: const Icon(Icons.person, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => accountseeting()));
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Account settings",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Language
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => language()));
                            print('Language icon pressed');
                          },
                          icon: const Icon(Icons.language, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => language()));
                              print('Language text pressed');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Language",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Notifications toggle
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            print('Notifications icon pressed');
                          },
                          icon: const Icon(Icons.notifications, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              print('Notifications text pressed');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Notifications",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            print('Notifications toggle pressed');
                          },
                          icon: const Icon(Icons.toggle_on, color: Color(0xff68ADC0), size: 32),
                        ),
                      ],
                    ),
                  ),
                  // Dark Mode toggle
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            print('Dark Mode icon pressed');
                          },
                          icon: const Icon(Icons.dark_mode, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              print('Dark Mode text pressed');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Dark Mode",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            print('Dark Mode toggle pressed');
                          },
                          icon: const Icon(Icons.toggle_off, color: Color(0xff68ADC0), size: 32),
                        ),
                      ],
                    ),
                  ),
                  // Data Storage
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => storage()));
                            print('Data Storage icon pressed');
                          },
                          icon: const Icon(Icons.storage, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => storage()));
                              print('Data Storage text pressed');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Data Storage",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Bookings
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => booking()));
                            print('Bookings icon pressed');
                          },
                          icon: const Icon(Icons.hourglass_empty, color: Color(0xffFFB266), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => booking()));
                              print('Bookings text pressed');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Bookings",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Privacy and Security
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => privacy()));
                            print('Privacy and Security icon pressed');
                          },
                          icon: const Icon(Icons.lock, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => privacy()));
                              print('Privacy and Security text pressed');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Privacy and Security",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Currency Converter
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => currency()));
                            print('Currency Converter icon pressed');
                          },
                          icon: const Icon(Icons.currency_exchange, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => currency()));
                              print('Currency Converter text pressed');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Currency Converter",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => help()));
                            print('Help and Support');
                          },
                          icon: const Icon(Icons.help, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => help()));
                              print('Help and Support');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Help and support",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Logout
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            print('Logout icon pressed');
                          },
                          icon: const Icon(Icons.logout, color: Color(0xff68ADC0), size: 28),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              print('Logout text pressed');
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Logout",
                              style: TextStyle(
                                color: Color(0xffADD2DC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
