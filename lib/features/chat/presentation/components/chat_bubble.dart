import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rankai/core/presentation/widgets/my_text.dart';
import 'package:rankai/core/utils/colors.dart';

class ChatBubble extends StatelessWidget {
  final int timestamp;
  final String content;
  final bool fromUser;
  const ChatBubble({
    super.key,
    required this.content,
    required this.fromUser,
    required this.timestamp,
  });

  String _formattedDate() {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    return DateFormat.Hm().format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          fromUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryBubble,
            borderRadius: BorderRadius.circular(100),
          ),
          padding: const EdgeInsets.all(16),
          child: MyText(
            content,
            style: MyTextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 8),
        MyText(
          _formattedDate(),
          style: MyTextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
