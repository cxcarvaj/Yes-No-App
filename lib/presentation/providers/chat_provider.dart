import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hi bae', fromWhom: FromWhom.other),
    Message(text: 'Hi bae, love you', fromWhom: FromWhom.me),
  ];

  Future<void> sendMessage(String message) async {}
}
