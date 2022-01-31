import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(40)),
              ),
              Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: const NetworkImage(
                              'https://picsum.photos/seed/picsum/200/300')),
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 3, color: Colors.white))),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
