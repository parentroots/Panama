import 'package:flutter/material.dart';

class AdvertisingCardArticles extends StatelessWidget {
  const AdvertisingCardArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        height: 170,
        decoration: BoxDecoration(
          color: const Color(0xFFD4C5A0),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        padding:  EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ADVERTISING',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF2B5F7F),
                letterSpacing: 1.5,
                height: 1.2,
              ),
            ),
            Text(
              'ADVERTISING',
              style: TextStyle(
                color: const Color(0xFF2B5F7F),
                fontSize: 17,
              ),
            ),
            Text(
              'Information',
              style: TextStyle(
                fontSize: 17,

                color: const Color(0xFF2B5F7F),

              ),
            ),
            Text(
              'Logo',
              style: TextStyle(
                fontSize: 17,
                color: const Color(0xFF2B5F7F),

              ),
            ),

          ],
        ),
      ),
    );
  }

}