import 'package:flutter/material.dart';
import '../widgets/profile_picture.dart';
import '../widgets/info_item.dart';
import '../widgets/story_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Text(
              'Hayolox',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                const ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem('Posts', '999'),
                      InfoItem('Followers', '123'),
                      InfoItem('Following', '321')
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Akil',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                  text: const TextSpan(
                      text:
                          'is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      style: TextStyle(color: Colors.black)))),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Edit Profil',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryItem('Story 1'),
                    StoryItem('Story 2'),
                    StoryItem('Story 3'),
                    StoryItem('Story 4'),
                    StoryItem('Story 5'),
                    StoryItem('Story 6'),
                    StoryItem('Story 7'),
                    StoryItem('Story 8'),
                  ],
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.grid_on_outlined)),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            const BorderSide(width: 1, color: Colors.black))),
              )),
              Expanded(
                  child: Container(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_pin_outlined)),
              ))
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 3),
            itemBuilder: (context, index) => Image(
              image:
                  NetworkImage('https://picsum.photos/id/${index + 1}/200/300'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
