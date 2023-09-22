import 'package:flutter/material.dart';

//Setting

class SetteingSecreen extends StatefulWidget {
  const SetteingSecreen({super.key});

  @override
  State<SetteingSecreen> createState() => _SetteingSecreenState();
}

class _SetteingSecreenState extends State<SetteingSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c325.png"),
            ),
            title: Text("Buthaina"),
            subtitle: Text("Hi there, I am Using WhatsApp"),
          ),


          SizedBox(height: 30,),

          ListTile(
            leading: Icon(Icons.key),
            title: Text("Account"),
            subtitle: Text("Privecy, security, change number"),
          ),

          ListTile(
            leading: Icon(Icons.message),
            title: Text("Chats"),
            subtitle: Text("Privecy, security, change number"),
          ),

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notivication"),
            subtitle: Text("Privecy, security, change number"),
          ),

          ListTile(
            leading: Icon(Icons.storage),
            title: Text("storage and Data"),
            subtitle: Text("Privecy, security, change number"),
          ),

          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
            subtitle: Text("Privecy, security, change number"),
          ),

          ListTile(
            leading: Icon(Icons.person_search),
            title: Text("Account"),
            subtitle: Text("Privecy, security, change number"),
          ),

          SizedBox(height: 20,),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("from"),
              Text("Facebook",style: TextStyle(fontWeight: FontWeight.bold),)
            ],)
        ],
      ),
    );
  }
}
