import 'package:whatsapp_clone_responsive_ui/models/models.dart';

class Chat {
  final int chatId;
  final String memberOneName;
  final String memberTwoName;
  final String memberOneNumber;
  final String memberTwoNumber;
  final String memberOneProfilePicUrl;
  final String memberTwoProfilePicUrl;
  final List<Message> messagesList;

  Chat({
    required this.chatId,
    required this.memberOneName,
    required this.memberTwoName,
    required this.memberOneNumber,
    required this.memberTwoNumber,
    required this.memberOneProfilePicUrl,
    required this.memberTwoProfilePicUrl,
    required this.messagesList,
  });
}
