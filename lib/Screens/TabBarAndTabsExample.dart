import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../modules/chat.dart';
import 'Chat_Screen.dart';
import 'Setteing_Screen.dart';
import 'Status_Screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  File? image;
  final ImagePicker PickedFile = ImagePicker();

  pickImageExample() async{
    var imageChoose = await PickedFile.pickImage(source: ImageSource.camera);
    if(imageChoose != null)
      {
        print(imageChoose.path);
      }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.teal[800],
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton(itemBuilder: (context) {
              return ["Setting"].map((e) {
                return PopupMenuItem(
                  child: Text(e),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return SetteingSecreen();
                    }));
                  },
                );
              }).toList();
            })
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                icon: Icon(Icons.home),
                child: Text("CHATS"),
              ),
              Tab(icon: Icon(Icons.add_alert), child: Text("STATUS")),
              Tab(icon: Icon(Icons.category), child: Text("CALL")),
            ],
          ),
        ),
        body: TabBarView(
          children: [

            ChatsScreen(),
            StatusScreen(),
            Container(
              alignment: Alignment.center,
              child: Text("page3"),
            ),
          ],
        ),
      ),
    );
  }
}
