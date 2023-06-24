import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [
    Message(text: 'Hi bae', fromWhom: FromWhom.other),
    Message(text: 'Hi bae, love you', fromWhom: FromWhom.me),
  ];

  Future<void> sendMessage(String message) async {
    if (message.isEmpty) return;

    final newMessage = Message(text: message, fromWhom: FromWhom.me);
    messages.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 300));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutBack,
    );
  }
}
