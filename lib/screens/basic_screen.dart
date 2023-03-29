import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage('assets/land.jpg')),
        Title()
      ]),
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
