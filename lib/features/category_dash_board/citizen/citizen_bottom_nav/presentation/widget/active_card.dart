import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String attorneyName;
  final String topic;
  final String lastMessage;
  final String lastChatTime;
  final bool hasNewMessage;
  final VoidCallback onContinueChat;

  const ChatCard({
    Key? key,
    required this.attorneyName,
    required this.topic,
    required this.lastMessage,
    required this.lastChatTime,
    this.hasNewMessage = false,
    required this.onContinueChat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Attorney name
          Row(
            children: [
              Text(
                'Attorney: ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF3D5A80),
                ),
              ),
              Text(
                attorneyName,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3D5A80),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Topic
          Row(
            children: [
              Text(
                'Topic: ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF3D5A80),
                ),
              ),
              Text(
                topic,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3D5A80),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Last message
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Last message: ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
              Expanded(
                child: Text(
                  lastMessage,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Last chat time
          Text(
            'Last chat: $lastChatTime',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(height: 16),

          // Continue chat button with green indicator
          Row(
            children: [
              ElevatedButton(
                onPressed: onContinueChat,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3D5A80),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Continue chat',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(width: 12),

                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: const Color(0xFF00D86A),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF00D86A).withOpacity(0.4),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}