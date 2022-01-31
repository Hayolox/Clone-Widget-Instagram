import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.amber]),
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(60)),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image:
                      NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                  fit: BoxFit.cover),
              color: Colors.grey,
              border: Border.all(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(60)),
        )
      ],
    );
  }
}
