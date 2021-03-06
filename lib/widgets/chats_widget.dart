import 'package:flutter/material.dart';
import 'package:whatsapp_clone_responsive_ui/models/models.dart';
import 'package:whatsapp_clone_responsive_ui/widgets/widgets.dart';

class ChatsWidget extends StatelessWidget {
  final List<Chat> chats;
  const ChatsWidget({
    Key? key,
    required this.chats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final Chat chat = chats[index];
          return ListTile(
            title: Text(chat.memberTwoName),
            leading: ProfileAvatar(imageUrl: chat.memberTwoProfilePicUrl),
            subtitle: Text(chat.messagesList.last.text),
            trailing: Text(
              chat.messagesList.last.time,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 14.0,
              ),
            ),
          );
        },
      ),
    );
  }
}
//TODO: Here last thing
