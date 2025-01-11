import 'package:chat/zegoCloud.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController _callid = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zego Cloud"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Lets Chat",
                style: TextStyle(color: Colors.pink, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Icon(Icons.message, size: 100, color: Colors.pink),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: _callid,
                  decoration: InputDecoration(
                      focusColor: Colors.black,
                      hintText: "Enter Call ID to join",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pink,
                 
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ZeGoScreen(
                            callId: _callid.text,
                          ),
                        ));
                  },
                  child: Text("Join Call"))
            ],
          ),
        ),
      ),
    );
  }
}
