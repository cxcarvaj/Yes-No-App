import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messages = [];

  Future<void> sendMessage(String message) async {
    if (message.isEmpty) return;

    final newMessage = Message(text: message, fromWhom: FromWhom.me);
    messages.add(newMessage);

    if (message.endsWith('?')) {
      getAnswer();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> getAnswer() async {
    final newMessage = await getYesNoAnswer.getAnswer();
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
