import 'package:firebase_chat/chat/operation_cloud.dart';
import 'package:flutter/material.dart';

class Add_Message_View extends StatefulWidget {
  const Add_Message_View({super.key});

  @override
  State<Add_Message_View> createState() => _Add_Message_ViewState();
}

class _Add_Message_ViewState extends State<Add_Message_View> {
  String? chat_content;
  String? chat_idTo;
  String? chat_idFrom;
  String? chat_type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("chat"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  labelText: "id to",
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.greenAccent,
                  ),
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.green, fontSize: 20.0),
                ),
                onChanged: (String? value) {
                  setState(() {
                    chat_idTo = value;
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  labelText: "id from",
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.greenAccent,
                  ),
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.green, fontSize: 20.0),
                ),
                onChanged: (String? value) {
                  setState(() {
                    chat_idTo = value;
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  labelText: "content",
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.greenAccent,
                  ),
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.green, fontSize: 20.0),
                ),
                onChanged: (String? value) {
                  setState(() {
                    chat_idTo = value;
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  labelText: "type",
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.greenAccent,
                  ),
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.green, fontSize: 20.0),
                ),
                onChanged: (String? value) {
                  setState(() {
                    chat_idTo = value;
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () async {
                  await OperationCloud.createMessage(
                      idTo: chat_idTo!,
                      idFrom: chat_idFrom!,
                      content: chat_content!,
                      type: chat_type!);
                },
                child: const Text("Send"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
