import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image(image: AssetImage('assets/land.jpg')),
        Title(),
        ButtonSection(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
        ),
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              Icon(
                Icons.call,
                color: Colors.blue,
              ),
              Text('Call'),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.send,
                color: Colors.blue,
              ),
              Text('Send'),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
              Text('Share'),
            ],
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Just a Landsacpe',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Just a Landsacpe'),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star),
          const Text('data'),
        ],
      ),
    );
  }
}
