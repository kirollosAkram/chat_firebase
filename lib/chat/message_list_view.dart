import 'package:firebase_chat/chat/add_messages.dart';
import 'package:flutter/material.dart';

class Message_List_View extends StatefulWidget {
  const Message_List_View({super.key});

  @override
  State<Message_List_View> createState() => _Message_List_ViewState();
}

class _Message_List_ViewState extends State<Message_List_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of Message"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (con) {
                  return Add_Message_View();
                }));
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: const Text("there is no data"),
        ),
      ),
    );
  }
}
