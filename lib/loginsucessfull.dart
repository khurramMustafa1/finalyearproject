import 'package:flutter/material.dart';
import 'package:fyppproject/page1.dart';
class loginsucessfull extends StatelessWidget {
  const loginsucessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);},
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/1.png"),
              SizedBox(
                height: 54,
              ),
              Image.asset("assets/images/tick.png"),
              SizedBox(height: 10,),
              Text("Account  Created Successfully ",style: TextStyle(color:
              Color(0xff0D4858),fontWeight: FontWeight.w900,fontSize: 20),),
              SizedBox(height: 55,),
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Congratulation your',
                      style: TextStyle(fontSize: 16, color: Color(0xff0D4858)),
                    ),
                    TextSpan(
                      text: " Travel Mate ",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text: ' account is ready. Start exploring and planning your next ',
                      style: TextStyle(color: Color(0xff0D4858),fontSize: 16),
                    ),
                  ],
                ),
              ),
              Text.rich(TextSpan(
                text: "adventure now",style:TextStyle(color: Color(0xff0D4858),fontSize: 16),
              ),
              ),
              Align(
                alignment: Alignment.center,
              ),
              SizedBox(height: 43,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0D4858),
                  minimumSize: Size(295, 50),
                ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>page1()));
                }, child: Text("Get started",
                  style: TextStyle(color:Color(0xffFFFFFF),fontSize:
                  20,fontWeight: FontWeight.bold)),),
            ],
          ),
        ),
      ),
    );
  }
}
