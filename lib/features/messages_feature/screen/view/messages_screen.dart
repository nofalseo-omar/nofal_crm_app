// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:nofal_crm_app/features/messages_feature/screen/widgets/conversation_builder.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      appBar: AppBar(
        title: Row(
          children: [],
        ),
      ),
      body: ConversationBuilder(),
    );
  }
}
