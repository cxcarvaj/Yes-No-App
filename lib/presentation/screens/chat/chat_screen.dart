import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

// If the widget is a Screen, then you should return a Scaffold.
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://instagram.fgye4-1.fna.fbcdn.net/v/t51.2885-15/355228769_280923334510038_3465071754206350459_n.jpg?stp=dst-jpg_e35_p720x720&_nc_ht=instagram.fgye4-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=WW1tYCea-ZAAX-hVu6r&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzEzMTA0NjM4NzI4MzE0NzA4OA%3D%3D.2-ccb7-5&oh=00_AfDfCtBGAJ2L4UXfdaeWEqBwpP5DLCtyUOqQ0obtaMm_cg&oe=649CBF79&_nc_sid=ee9879'),
          ),
        ),
        title: const Text('Chat with bae 💕'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  // const _ChatView({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}