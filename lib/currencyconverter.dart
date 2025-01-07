import 'package:flutter/material.dart';


class currency extends StatefulWidget {
  @override
  _CurrencyConverterPageState createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<currency> {
  String fromCurrency = "SGD";
  String toCurrency = "USD";
  double exchangeRate = 0.7367;
  TextEditingController amountController = TextEditingController();
  String convertedAmount = "0.00";

  void convertCurrency() {
    double amount = double.tryParse(amountController.text) ?? 0.0;
    setState(() {
      convertedAmount = (amount * exchangeRate).toStringAsFixed(2);
    });
  }

  void resetFields() {
    setState(() {
      amountController.clear();
      convertedAmount = "0.00";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Currency Converter",
          style: TextStyle(color: Color(0xff0D4858),fontWeight: FontWeight.bold,fontSize: 24),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Currency Converter",
                style: TextStyle(color:Color(0xff0D4858),fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                "Check live rates, set rate alerts, receive notifications and more.",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Currency"),
                  // From Currency
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/sgd.png'),
                      ),
                      DropdownButton<String>(
                        value: fromCurrency,
                        items: ["SGD", "USD", "EUR", "JPY"]
                            .map((currency) => DropdownMenuItem(
                          child: Text(currency),
                          value: currency,
                        ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            fromCurrency=value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          controller: amountController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "1000.00",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(child: Icon(Icons.swap_vert, size: 30, color: Colors.teal,)),
                  SizedBox(height: 20),
                  //
                  // To Currency
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/usd.png'),
                      ),
                      DropdownButton<String>(
                        value: toCurrency,
                        items: ["SGD", "USD", "EUR", "JPY"]
                            .map((currency) => DropdownMenuItem(
                          child: Text(currency),
                          value: currency,
                        ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            toCurrency=value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: convertedAmount,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 51),
              child: Text(
                "Indicative Exchange Rate",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 51),
              child: Text("1 $fromCurrency = $exchangeRate $toCurrency"),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D4858)
                  ),
                  onPressed: convertCurrency,
                  child: Text("Convert",style: TextStyle(color: Color(0xffADD2DC)),),
                ),
                ElevatedButton(
                  onPressed: resetFields,
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Color(0xff0D4858)

                  ),
                  child: Text("Reset",style: TextStyle(color: Color(0xffADD2DC))),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Color(0xff0D4858)),
            label: "",
          ),
        ],
      ),
    );
  }
}
